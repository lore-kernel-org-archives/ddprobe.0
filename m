Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB528DC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767313434; cv=none; b=eBhTMKgmx0hHNwlXOdXZp7DUTJ6Ubx6fOm76/KuoR0iSKf/FBosTLTeF5uQD/yBb/KTe2Xbrz4oC+z7F+h898cazsjhz3EqfnglRBaFPO5iacYXfvvM/j3xURmFllBZv5yKLAz+Y+dy491Nk9p3u2OAzl2WX5mhm+yq+pIxPrYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767313434; c=relaxed/simple;
	bh=+bT+oVig2XRZ8j7axhWWZ1cTWHlLy7cE5bwjdapxHeI=;
	h=To:Subject:From:Message-Id:Date; b=LKteOiE3HIjQxUFchva42QwRD2DON1pqSgJT4LKS95es1IkTgRPupxmNpNRhayUVqDf/Qgv4zwrNOwUjA5umIdRC2bdOJgB+BccMO8qi+hrrzfifemcCzh386dM/Dfn8ai7CX4ruT4KaxogEU1XWl4aqzEuvRz7EyWPGy2wNycQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+N0Ay8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+N0Ay8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8147C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767313433;
	bh=+bT+oVig2XRZ8j7axhWWZ1cTWHlLy7cE5bwjdapxHeI=;
	h=To:Subject:From:Date:From;
	b=Z+N0Ay8K/YMEoJNySrzfBPYfE0gZ+Fljj8bpz8scvWcgo1sW7r7uZ0PP3BDIo40d0
	 cUO7ahQwhc1WnPn0V51/Tz5nQ2SSeWJ2LmNdZfyHkRsUiZfQ/ZUw8IAGNFQSto+Q0F
	 r5QoT73A7X2Kk4qvY5BxmF6ZjUm/LlWqVpGSCkeeYB7I1TRyVYt0AJxXxWxSZPkKSN
	 lR3dJj1F+dE8u9UpEOOzg3uRguBj4W55a0KxdH9JL9NTTkwF3wt4rwc6tovPGMpU07
	 0skb04xfxDiwjkXhoYxNT6Aq0u+hCNMIuPiSyUcrxve39gd93HqwjG4xjNlR3Vp9VM
	 ws40OK8Bkz8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9790DEEEC1C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731343358.1881.17035749401266180834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efa511a3e7d9e5762c331386b4367f4f3caff7e6e5c283866b022ee5b52b1dc
Date: Fri, 02 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767313433
