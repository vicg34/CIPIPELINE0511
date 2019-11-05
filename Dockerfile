FROM ubuntu
ENV ORA_CLOUD_CLUSTER="VVV"
ARG LICENSE_KEY="123-000001-2"
LABEL MAINTAINER vicky.kumar.gupta@oracle.com
COPY sample.sh /code/sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/sample.sh
WORKDIR /code
CMD sh sample.sh testfile
