Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696F39FCE
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758088194; cv=none; b=CUbOY9gO67FB3MLpGyLNbxADxNsucgMxxEEfgUwaxOBM4doKXcYdxh/BDH/3ToxZXLvuVT1h1XSpQ/H8v1lQYBNM1N9Pk9oxhV7/cROhcSZcQetOgLsbLnBErIY+mykAYGDh2ABAiYMedDADbOZoNN3wQDjic7E68c0vA5YIfQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758088194; c=relaxed/simple;
	bh=Jtoc7+fThBqcGUe7YYkI6I98Ewhol7TWL0XRJHUWNk4=;
	h=To:Subject:From:Message-Id:Date; b=sfe9N+u0uYOxXuzbNJAlyk4ZWFZmsi0D4izLGBmnqLXakFlzwbIHnr0jOb6jaEEm7wlSpA78uMOJS7wvRj+cRrD0mEZeCdcZjRHdfbr9xBrTh5Eqt7VHUREYlSQKgJUX1uTY6e640tT7mO4i5gFBVqc9ik4Lqn3SKE2lVBqElAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FI0oIH7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FI0oIH7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D62C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758088193;
	bh=Jtoc7+fThBqcGUe7YYkI6I98Ewhol7TWL0XRJHUWNk4=;
	h=To:Subject:From:Date:From;
	b=FI0oIH7uTYJ+FKFUKzPMPLtbuSs5zE+62BQNGRLdnkNr1XNw/XIwcruTDxhcE8PzN
	 GxiOHLvcaducgeFWHTRkO1fv7LVaLvEkTgYeODcjGkqVOSk+xnkJyNcTngMWUyrZaw
	 qUCPQa5d+gETCBnOR/kr/D0k9QoQ0wZnzb3/mEbBD2CKOC9mf4dzQby1a1PnKVNLJE
	 I8Q7ouNMUrG+LGhKCF5SgOIw29FmFNmjxKN02jb3XzRCT/ulfHGq9MVlIC4U3lBvTF
	 Ys/BVcTVwV3jS4hcy/rAgMwWtQpnYt1Tp+dyZ/cC5ZQyLGAupk/GEbhcjztYy/W8nx
	 qFsmY7vLZ6tUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F539CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808819357.13943.4495034521616253258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef668d3677441f8b8e1cd3ba96e54ad73deb0ac32d9e8ad26630c4715169908
Date: Wed, 17 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758088193
