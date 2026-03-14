Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072BC175A8B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773474894; cv=none; b=CRgDqq5OUYeymeyzRV9KRwLj9kn5IZJ4DySNp5zvK3PvdpU8VNBgqFhyEePSr8ATLyhyXWsqvCakqiv3NMhat6m43RsIxeTaRtzXcQ+5yRUriBnu5C1qIv3vV70n0itECvYPvljCsMklccZdMCQUhP4M3lVO+CT0PBnNKahrTOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773474894; c=relaxed/simple;
	bh=0KEztdxJB77n/0WfiEQ6OkLPZLHd5HFvbOiz9bSktN8=;
	h=To:Subject:From:Message-Id:Date; b=SPb0fsMA6gSyXGgZdGRF2/ceEI2CW7Y+kM7RR4oaxrAqpYv7S+T2LZ78d5efZAErV/b2G91XdOEgXn5zT0MiLJsaeayfh5hgkxCtMcSueIWaUQuoRpxykvibZ1T7V+dCAro2E/kk3S69EUHy8wpkAMY1jggZEcr1cFxyfwZhYE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El68vqM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El68vqM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF83C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773474893;
	bh=0KEztdxJB77n/0WfiEQ6OkLPZLHd5HFvbOiz9bSktN8=;
	h=To:Subject:From:Date:From;
	b=El68vqM2Q8JaEu0p4FRr+mem5SC14R9z3m8oJ2qQnZKoGzpxMERxc5Px1JseHFvGT
	 p7jb46uh0QvjFVswWUhCpJ4q3/vFmCJfNe0RPzi1rEwAzOGMa5kNDVm32vIB8gtvMD
	 IOgFqSYbWzTFXu+LW0gcw/Jz3njRr0x4adwgVHU8nxjuIaVGwNvLWLPINMPuTdenN0
	 mw2nvh+Vk+XkfaChovnb8pGglGpLzmsKiglHLdfhF1AFEOCBSg8YZerBRe2Qdvc/AJ
	 bnfSWA/LrC4CCGB+sOhUJ+NBGAuVMdbMZOcYqRwyc70gU6pLBKz+IN6dzAk6NUFwUc
	 MffNucpoWh7Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F503107BCFE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347489357.5982.6048342218064649906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8100056d299841d05faba4b68e8fa31432d9d17ddd6d14975f12df560ad1145a
Date: Sat, 14 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773474893
