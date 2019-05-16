FROM golang AS go

FROM node

COPY --from=go /usr/local/go /usr/local/go
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH