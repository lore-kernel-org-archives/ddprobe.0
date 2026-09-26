Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D10E2E762C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790403634; cv=none; b=KX2k3dMPrGssOP6zTogR2pSN3Rl3R3bWfb/ntd5FtiskHHBKU1oH6ThXU+cBWH4YjexURbWlk6NhcGj2o7CLd8b7OJ7u/ebpdsVGeUw9CGK3DEU70UCdgcr+tNl4x6za5sibT91YcT3vqQTUD2phyo9eSvb8QoWzKxYtTUSNc9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790403634; c=relaxed/simple;
	bh=BxKJihEyA/8LCy08gXKYVudQscr2WTACf5lEo1fRTDg=;
	h=To:Subject:From:Message-Id:Date; b=Oqv2GJPle1m1eWJBhpi/XtjDiaC/kH5zAWPzmRue5i/tSQELp6QkkxSiQuOg9VQ3FqZjOdmQ+WbxbwDAnH9Iyro80lA2K/AB5ojKgn9GNAkX9x6B1UQZRpUe9Zl30YMcxvrCCOSUFRIGP7EsxD8uwpG+fMlODgwY/RVmXtISZFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5VoDhEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5VoDhEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0D0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790403633;
	bh=BxKJihEyA/8LCy08gXKYVudQscr2WTACf5lEo1fRTDg=;
	h=To:Subject:From:Date:From;
	b=o5VoDhEP7KNByw8nYNJUZFLYWEIihIDbFmSFbWVr22gtYN0y+DXo8yTMs6abZHdGG
	 j5O5UbgGzqO97grDgbxa8kaVsd5jtnyTiSvcgqCb3A/dKQTUm/5fKOMqvgiEdFpat7
	 McHTtFip3d4vKOvrW3ewWzNYQgN0Zbc+bHyBPYIeuV9Mr2ytpV6FEn6VBsveQYdwRu
	 XvyFrnfn22F4jGIgZyO/+wVe5x2jwRP/eGRGAfk9h8zjwhKroheHJ2cu7e0hLzYhs7
	 c5uh7fk2YFBBh+FB7scF3fDVN2PkjgLZTMA9fX6a5NM0oUv69a/fE0CVYMygAJXmEd
	 9a0oN1rCMu5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE89C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040363368.11477.4508785033856557244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229e9789f43d6be1d9e2c44a08a94687e851b64fd43ec0bdcd5c6f29328a7be3
Date: Sat, 26 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790403633
