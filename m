Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C0F7FBC4
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713253763; cv=none; b=jptYz/GxJJQL2tjhAuE2a3r8zZbqlhPUHwxyHVQ5H2UaAVUcPpCz1sWBe/OuJSt++9Fh0Pc+UCNNpC+kwHBbd8ZMfXwUN1YJP9prcSGJs5meeSmC3cokD6pTZiwMqbGG3xMVgloXEppTsZy6paUDQ8DZGVKRw/jPQzK+68+t5sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713253763; c=relaxed/simple;
	bh=rrv9lria+AXqNV8Yw42XJX1NKY8hXrRuKjAANDgNL7I=;
	h=To:Subject:From:Message-Id:Date; b=U89VbszTbkP4BwRh2cg3n3HzSIH8UZQLSaF4hlBxJ4VHYVoZRsHDOfruJSQMvLTZxT5dqYzFAtV3r/qKYD4S6IcMlDDvPc0n1peoMuDCw7W+/ywYcjQpbeUs6fxgUbLR65K7vpjIRNscKVXbtiTdn3wvZIO9sbWblmDxxgN+GGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXKIZjcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXKIZjcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B8C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713253762;
	bh=rrv9lria+AXqNV8Yw42XJX1NKY8hXrRuKjAANDgNL7I=;
	h=To:Subject:From:Date:From;
	b=HXKIZjcL4hdnBXx97S5vtR/5+SKtQo41hDOvLSygZptWMqgNJ0QUhtzclPqdMfefD
	 49vb0jvtNpPxZ/FJdI+591j7FNGpRV6fKJKUi/iFL21Owp8xNCR8+x/c00X8VAqBjl
	 6prmsD87pNkepZiliILTjHohHXHBzfQAd9SKcAf9O7P6KvOC4P2s5t2cVtwPevsXTf
	 F9rDhkuBayEdqMNtX8gNPLvxrWDKcGVsv8LYnLCs92eMRzBiPJATbSMn5IFLD9IjUI
	 h2KBRkhPH4Lzqde2Z/PxOaLD5Yy82IouslNv/bT+1zqsCP8glzl2lY934jkZ11iK7/
	 f90I3leSjeRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8DBC04FF6
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325376277.27675.8574930512421633877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e56617d893363f4d29bb467f578a02abb56a965a71969f1621cfe0cd1f1d02
Date: Tue, 16 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713253762
