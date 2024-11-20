Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAA71474B8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732123554; cv=none; b=h8fUM+aicqd53srN9YJEStM8J5bd6ndzYAgrOEVnsxhLg3ANjCX1jFMltQlDha0H8j0nAqwNRH2Z5GICYIPMCFwPzZoGoo5XwZOb58eUsuQfzhpuPnKHfnV3rG38pJ4/YZQG7KErtwVWempglszS9GS0vzxfAd+WP5VTm59mlrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732123554; c=relaxed/simple;
	bh=gaWia9amxFxnVbg+2fqszsURAeZyJIRsHg3bqVoIcVc=;
	h=To:Subject:From:Message-Id:Date; b=m5fh7ec9pRWAovQHLvDPr6I2p3wsWAlGKczzLjnRBvsTNlXJS3HQ0j7ER/mXFYndHZQ2la0KzcbKs2NTgxe5JDtxhymY/syCJUuJhyzefHD+XfM/SrBGdXfalNuGnUpDmXEmmuvCw2nzcgUDw4+ggqC93ounqKtvapHzeBS++hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf/Ff9rS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf/Ff9rS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86A8C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732123553;
	bh=gaWia9amxFxnVbg+2fqszsURAeZyJIRsHg3bqVoIcVc=;
	h=To:Subject:From:Date:From;
	b=hf/Ff9rSszkMMsW9YPm/kIUVcQ/rozqvQ7V4ovQAQ0cE1uIDei/mu7S2NolSud4O+
	 kfErNoTuUDU488s8O8hDc1LXfPk3FYDWRB0eKUOXnkm8VT5vGXjNqo1nsB78Ru2Nhi
	 79rXQwwwfR6X0FDPowTR1Ei5+6bd/vy2M+rUr7dMhySCsZ4Tun7Jyu8JZTkF7+mcC7
	 e02hp0FDmW4w0tW/ObJVgwUQZBGq23OsRIcu+R9JLijdIiE/I+l8KtA7+E69qsljtt
	 sphbBNCgyH3FZvxfFFodH5vtR/SWKaa+czt2QExrHHsroeM1notKKkMqXexvV41BrZ
	 jNEQcAHJ8fLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA2D711C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212355359.437.4204950216052184889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66788027fb44e1649d3c7bb9f356f3af800023efedac1fbac832026df7b9d282
Date: Wed, 20 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732123553
