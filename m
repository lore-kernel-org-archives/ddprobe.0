Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE2F248F69
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765463574; cv=none; b=Cu9MpvjsGRPPjZfSI61/x2AWMBY5D/FDULHZ26vL7ga+vkUEx8cW6GIQfBS72ko8NLubVhQIcr9rJPkgwy/92dWpjshDWcFlaE+mACQmQYNNPLOX6KblLEDjZ2H9zEMj1iuA6ntyAIGZFMOvBGMhFVM3arkt2Oap6gc/YwlNFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765463574; c=relaxed/simple;
	bh=VYB564hVoYpSPNEBaOWOc9nFq8WT6i/Ft/mHqglnNNY=;
	h=To:Subject:From:Message-Id:Date; b=Oi5pfWa/4tR+2vDLLFxALNP5UqKcKCPV4IX5cjqhKJ+gQ1aKAVRj1RcxlOwV/JOh9T17WaRRQJC2QcsJlWYCudPFZny6mwp7VNhE7gJfF8hV3O7tQgRFY4t7tlxYqT/CAvp5ayIGAKAJZaUrXTgC27QlcowhZKAuvMGq4Up0dtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul6mxjRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul6mxjRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1008C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765463573;
	bh=VYB564hVoYpSPNEBaOWOc9nFq8WT6i/Ft/mHqglnNNY=;
	h=To:Subject:From:Date:From;
	b=ul6mxjRAuaDSoGKdhJ3cPNRFY62FF/LbnVetEc5Spl27qYZC8etYEfKZGZHIv/Gfg
	 KMNfZZZQaXpnrQX9RNq1fhrxAZHHwGTQNzXDYAAV02dNwwXeJV13UbrYRVB6otMu8b
	 biNJMuY3sxMLDWkTgWEPMmgI5FKZ00bKlaYZ9Dw8irGjHNvYdHmqvuNsRZZXVj8Spy
	 fh7hss6TcenkMCjtziXUgFnp0DK0QiEqbLhzRcJSbYeDAxJhomxsZZ1ieMC7KykLtq
	 8XerDNNPs4Ir+q3kjBdfaoZm/G370fKccMOtQQIMNVs2A0ztQRA87GufynQ5WM8Qzq
	 QrfEfy0lIJ0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9245ED41D4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546357359.9432.13690621455241429508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64db15009c6eeb7257aa64444385c08dd24d81346e5a9f15d89c0e560f55acd7
Date: Thu, 11 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765463573
