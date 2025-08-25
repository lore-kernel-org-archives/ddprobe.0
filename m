Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE231C4A0A
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756097995; cv=none; b=BpbYYCQ7V3izv31XhEMEB5jv65vNBjrs2sy8TFXXmkK40EkBb0KVu60nTk8DYosGXANnfPKYPQagvEupfQRQT5a2rmh5SSPfpNtKPYRkAweSzPYa8VlhfP4sE4Gscm/FRo8vU/HZ+4j4N4AA1pUmDv2DWHnVv8EsCCMFWT8L/ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756097995; c=relaxed/simple;
	bh=7kLfZIG3e9LCIU/wJE9yzCweHQwY7Cd4w/y0Fa/PFS8=;
	h=To:Subject:From:Message-Id:Date; b=Gti39qxuUqj6o40Ff3tVJw39sNODLJqNsQ9FixVPoDEV96hLPRrvfsWCbpYYd2iiC1EwSJ6ix6IXGp8N5osYkIIcszwR7udhvpNTxEvRliZ+rvKxEltbGbsUs4M5Ope88TcCSBsasvcgCNEZwGMIhOx7pfnFAo5W38V25zBxv8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqGNLkey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqGNLkey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5107C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756097993;
	bh=7kLfZIG3e9LCIU/wJE9yzCweHQwY7Cd4w/y0Fa/PFS8=;
	h=To:Subject:From:Date:From;
	b=DqGNLkeywgtu0Ue0zKL7mFSzYiFs5VcqBAMEekkJPYRSS0e/X+jVwsJ4B5g+FVHgL
	 +c4CbDsAhJWzmJWygx7KgEalUeFcXp62JiJktrcfku6/jaLw70LPjslcFw4GvKxHWX
	 FTw2fhH0EpxxM9pFzA9woTTVgfyQrpzclX2biEMfyNG4seLPWcokftT2yl+i3/rcyT
	 bC5srGK76hqBFH7PzXZhLYAJVhFWUEbqeLL5CWPtTVm+tUrJ6UIPnhqfLMxete2CLD
	 Yr0vbmRqTtBUh5xmpJIH0tw5bNeV3HK9+LntB6I76tEUYOEJYD38senFmVGyHZRBcv
	 nc5TFrV8t44SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1BCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609799357.16928.13392898600851225911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4926cfcb1b5d237b9427af98e2a3129157681428f7d8a974087ceaaeb3c2ddbe
Date: Mon, 25 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756097993
