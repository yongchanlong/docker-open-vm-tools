FROM gliderlabs/alpine:latest
MAINTAINER yongchanlong@gmail.com

RUN apk update \
    && apk add --no-cache openrc \
    && apk add --no-cache open-vm-tools \
    && rc-update add open-vm-tools

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/sbin/init"]
