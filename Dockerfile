FROM alpine:3.12

LABEL maintainer "https://github.com/blacktop"

RUN apk add --no-cache --no-progress tini su-exec

RUN set -x \
  && echo "===> Add malice user and malware folder..." \
  && addgroup malice \
  && adduser -S -G malice malice \
  && mkdir /malware \
  && chown -R malice:malice /malware
