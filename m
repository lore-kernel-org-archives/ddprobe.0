Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FF45D8F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769972634; cv=none; b=LChtN9iV/QdfkRGuxTxkM0Irp82uBg2mWiFTEoYEeFysnIqbb+VQxhfhMkp1YPn7cRKCkyXInU6iSZdvEG2aYVZNKfWUVi69DhqBDkzxiThWwH9bcWHdXd9sSAfIO+p+QyPzYwJ5gUNm5e2OgIly1xSevRpiYwAUMS7jn84tMBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769972634; c=relaxed/simple;
	bh=nvj+GQWCs3Sj5SCotAZI1yonD+nngc5/YqZzKgEFOAQ=;
	h=To:Subject:From:Message-Id:Date; b=nSTT7UxqgEjHMnIDUvtCeO/fdejiGPeyQh1wT0bMjfxFAVJzrh80phq/B/o40s3A4a+Ba7WDz4E901LxD/WKVrlmpjPewN5agq1NqKQS7rvo0KwAflr905sO5cJSg7Qm8ATPDKjKhMkgyxzRkA5QFt1UxbEHE4eWZ5C3OAGyiEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3Vnvhyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3Vnvhyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B030DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769972633;
	bh=nvj+GQWCs3Sj5SCotAZI1yonD+nngc5/YqZzKgEFOAQ=;
	h=To:Subject:From:Date:From;
	b=h3VnvhygFg6OVaCFCkpl9vNg7sewKdXYYfcltu1Rrt+eW5b5ajjF+MqQPIJcilZ4Z
	 GUZagYu7JBAtgy+1rZGZABQedZCjvONQ1Am6+1cUQ3JMf3n/RsZKhFQWxp8rXZGUl1
	 vU8gddpUaZtu11dGIrr+gXazvOt7M3z9qof+7VzMUdn49UeUvk0F081P7Iud1hTvzA
	 +lfOsAP4ZT9/5J2JMkMRFIOJC4AKeNaPoIRYhQVUIca4E7LH8pCgsFgeKBtuelCBtj
	 AXNyLH5o3XexmfQTNJIT2CpNMkDkCduQUa81Gy2hfFsjtpPXcUgPuY7BdVakmIc6Ok
	 Rey/HIfwr7/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB48E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997263359.6119.4341807611122385212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cef3f0354132220dad29cad1d714d305fd0e4cdeaf79947f89775a3a109b39
Date: Sun, 01 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769972633
