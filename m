Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A429A1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765465374; cv=none; b=dwS0U5OTLexDPfI+t6d3bODnWq0uRtw6Tv4j6l8YYPgyM4F4aENBnpwNvhwTVrVRd8aLrEUXp7kxfzWH2wBTT7ooBNjVFBWarw0R1fOO3YtDvE9TZzh05kvUzhQMfT5VEJ3BMBjVN/5cGokMVzUpSUWSfhhv7aOvd56D6CLwjn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765465374; c=relaxed/simple;
	bh=npvARZxw3lgoYymdJkwDih1SfoukzF0iG6TxOVH83Kc=;
	h=To:Subject:From:Message-Id:Date; b=p6VBzYd2aZsFo8F/XhTkrQaYdX1Llevq+ywBCMthdsf+KQPNFeHTHDPiBESeTGWhr4BRKSPUoE7O+eXjeA1Il2M4vw+0aQpRgNROrHIXdrfNIbhESv5Go5MmUVNbmH3tJjE7kbK2pNMF2tEFZRAZTy3gsTt5+A6z2MCOJGuoE/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR3UA1Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR3UA1Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4FBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765465373;
	bh=npvARZxw3lgoYymdJkwDih1SfoukzF0iG6TxOVH83Kc=;
	h=To:Subject:From:Date:From;
	b=KR3UA1Cdl6pF7YRhLuyyi+4k/bd+T80SEQ4XnK1GnsJl1mswz8burA6rWCTKkLM44
	 lLA20nOwwyGoH46EjehuLNf7tpI+AMJsVmqQfBM0/whUpXcD345lFdekiXoyuRTVXE
	 7tZuSbZirQ47rsF5f0o4kN1sBKDDa72d86sHuh5VGOGceohVu2jd7rs4Uhmlq15DFq
	 /BxWxJ9Jp9KEgysqR+bz7aiju7n0a3Y8GElhzRxbksUf57h7K1xSJZwjc1nNOX3z6J
	 oXAtmbqJ9N4J0A0KDIVIEiMY1G+hJHDWqzH3EtzpKU0+qcD/qzZ3IYlPr9g1bmj7B0
	 Jqiaaf74KNBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67E6D41D4D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546537366.8675.11637559813530462729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe48e074a879c927295161d638b6f973ca36c8d9a18da9d80b5c4c6ff53d6a2
Date: Thu, 11 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765465373
