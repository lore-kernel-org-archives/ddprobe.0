Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AB02264B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975794; cv=none; b=uzAhn3zGgcTFP7Orlc6PZVwx/bDTPc3xh0yzWw36bDQBmnRA/DyZLW+wNQBvoMGPD6v4U2X+ZfxUwAb+36UQGc7jsnAZiNZBBNT3fyELil/FaNreVBu9gWDNg7zsSRnYspv+NqDrd/Y2oX2P2/P4iNFhC2aWc/qgqElak36tXIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975794; c=relaxed/simple;
	bh=dM0qZg0rLW2kC2G4ZeqKHTKaFXTBhr7/3xLQdYq3zNw=;
	h=To:Subject:From:Message-Id:Date; b=BRukjZ29aYO5zcI8Tgi+hb70GB6FVPBuXvRN+Yghv1pGbV27x1sBx60FdpnOvGXJux9+XsWk39y+4nE60NlgzZVs/W+Gbk19gxuvg5/Rr5HoGlJ6LF0w7qtfbT8MVezKsDVgVCLzkX6OhZHeWpsrFZC9ZB0rKn6ndUbB1h9cLtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8tbF7f2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8tbF7f2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FE9C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756975793;
	bh=dM0qZg0rLW2kC2G4ZeqKHTKaFXTBhr7/3xLQdYq3zNw=;
	h=To:Subject:From:Date:From;
	b=h8tbF7f2RKpqlVQBvnjYYUI9V6VInjW150wr+bvEjEZqqOXB8bJUzftswneyTIUHi
	 Tl7HFhbhnhUCGgyvLRSv9S0E+Eu2wE5IOHFbSKLF6X5QXpQwCHwKIFG0R7II17870F
	 sL+onHaN0IqgTIzYlBt9vRbs8qC9GAgCS3S8HeccpAhSsYNe+Q/024UniEi+BhQQLB
	 1dE2U0XH3c22nMAw0bH7d83WApReaXxd/lPElVT2CAxNrY6CTnAZgHsGW3Nt62l4oL
	 g9QsOe2kZb/EQlwn6kHANvAA2Vs6Uqrzg5eO+LganxJVepiozGoWWQ3dgmUcpyI2LG
	 +3tUH4Detf2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D53CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697579358.11287.18411946675164314225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142d4e02f4246e28ebc6d808dd45fba31a4c990b5b6d6071c630969df918275a
Date: Thu, 04 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756975793
