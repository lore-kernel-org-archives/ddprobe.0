Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D32C279DCD
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759934394; cv=none; b=ICyeOCeiXr3IczClitAA4LiqKP2ODwQGG8G34iQUr2W2YZk/G4HruKni+1sIqDM26HkESB5841p2FGjyg02i10ILXjN84iQOwuT5nwE42MmJNDixZA0Q7zhZ7gq17F14vtczpFhJzflByVSH029toPnAI9ERPzBN7jJ0kDOi5Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759934394; c=relaxed/simple;
	bh=Y8iDWyawRiMMGfkiGBWRMAOwHlJDyw5e6sNcsVZ66rQ=;
	h=To:Subject:From:Message-Id:Date; b=J/qNq052WLdq/bEMl8kmyVD6RiBwy+73zw+LL4yMmTnZND42racgfpeKvILX0dHcc4VhV2i3GSJrie+0DFimdLCZLGQho8fiULsPrf+BMBqY9NmBx8bbCA1pOMfopPH74kiCm83P6O18mM4+SqZdLZcNz8qwK7EZd/X7stFXtRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHKzNK6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHKzNK6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F733C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759934393;
	bh=Y8iDWyawRiMMGfkiGBWRMAOwHlJDyw5e6sNcsVZ66rQ=;
	h=To:Subject:From:Date:From;
	b=FHKzNK6WIDY8jJlcae6zsQIla8kGe3im9PE7WppuTQNkPhxhClz3i7l/Ge3iwhl39
	 pCIZuMXEVGIyg6rlIYT7FYQk23cguQ/XgeWIW7aGMkyYih2nZ0WKrJYcv+FleXhwb7
	 Pdstok42O7vuRAtVOqvpQgrzMb45C37yfDY5TNZjh2mW9HZ5D7piOGTvmZO/00DKZJ
	 dock10e4onpsve/LpYeiH4ZiHSxXkcO7xZcbCwZHY5QcuXmzcDJsuVVH+4E6UtzyDX
	 /U1VoQ75dP5+kpo7/2HJTjaDjLUGg2HnJa1xI34N0WC/b3EUHEKeKEpibceXBYQup+
	 IsOkNkOdV1sGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BDCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993439357.9855.12398788122672447655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ece653ca960aa2ecc4936159794e7cf9bbd8bf27943d90b85a9f8b1dcf03ad4
Date: Wed, 08 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759934393
