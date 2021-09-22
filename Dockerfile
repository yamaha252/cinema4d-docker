FROM centos:7

RUN yum install -y wget
RUN cd home && \
wget https://installer.maxon.net/installer/21.207_RB303831/Cinema4D-21.209_centos7_clr-RB305619.x86_64.rpm -O cinema4d.rpm && \
yum install -y cinema4d.rpm && \
rm cinema4d.rpm && \
/opt/maxon/cinema4dr21.209/bin/setup_c4d_env
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/opt/maxon/cinema4dr21.209/lib64/
WORKDIR /opt/maxon/cinema4dr21.209/bin/
