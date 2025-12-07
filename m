Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7DC3B8D79
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765147374; cv=none; b=UuicdipcG3HANHOKDzBKbLje4R+43UTGlBvEI2KSal8hlzWQPOUoJkPBZ5YDKEcQ5u9OPxcd8wqm4ch4H9Oze+nzOeC/3TmE4TJscrZ2pRmAjyeiORkR3pCn47o8BsKU6KIJcrM9RvVAmmhv2LKvjZNAaYzAEEiANHR0n/HzqI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765147374; c=relaxed/simple;
	bh=SvFXFCBaxaEPLmwfo0X22uI5+k0+eQtJJu1TXubLHQc=;
	h=To:Subject:From:Message-Id:Date; b=kioJdR9ybQYODzp73QAVU88CRq+1I2BLCfU6LAA9qLYY5BoZJMXhuXtv+aKRzVSMiUBfkEG9vC/OFNG9rtL06AF/FZGlxrPFM25jhJc96vOBAzK2FQCORPMFRPvkbYO7cN/UY/r17KVNZqiLPyuQJDDYJEnwGHl7XnluipTgl90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4VFOYKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4VFOYKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE78C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765147373;
	bh=SvFXFCBaxaEPLmwfo0X22uI5+k0+eQtJJu1TXubLHQc=;
	h=To:Subject:From:Date:From;
	b=R4VFOYKcNGD3OSobufWnGPxbLcOmTcPdWq1j/M15XP3oED4ElqYzespkHKbrTgdWy
	 GEm1nZL2QMarXug4j7BESCX5VpTmuQe3LARL0DHfCJM3Jnaycsb7FMDP7Au9bNcx7t
	 NPVWNjHfeFc87Inh6QhTTOwNZXSILNZROl71Gr85LyJb0a5/Kql0dY8Fl4EwOwmrA2
	 mhtiuQ1zEUtiiYFdRGPgVMOanFHW7zmUiJAQ4ybqnwwIo9ooCEVMhVZVpVO/okH4hl
	 q6rEdUfCcAlkx7X3SSerV3ipOER9ofce9YYKQiFNOLuMQ8tDqO+N7WiH8LKmd0Ygsd
	 VXiASLvSPZj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683CD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514737358.13025.5853841476639503071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583f783f7818928396b6b82db8015b7b27131d0633f76306182eb08d8d57a8a3
Date: Sun, 07 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765147373
