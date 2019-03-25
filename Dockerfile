FROM yhyangjiabin/nodebox
MAINTAINER yhyangjiabin@outlook.com

RUN opkg-install unzip
RUN curl -k -L -o master.zip https://gitlab.com/yhyangjiabin/linux-dash/-/archive/master/linux-dash-master.zip
RUN unzip master.zip
WORKDIR linux-dash-master
RUN npm install

ENTRYPOINT ["node","server"]
