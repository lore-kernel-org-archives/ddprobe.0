Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC72E401
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774416294; cv=none; b=uITBnWB01Tog6X5tdrljER0IA/AiAykKtHSFhFkkzME9zfJZRxU0c2dS7HwtWMOOA4JVEwuGumT1LI9uNkn3O6NvaO9K6vLgh8vuV6nrnwwGIhcsghAvy4vCm5xd+Hbcch84wY3/70gNNbxiXD8GGbhb0BOCpSkg4nNB2oCmEhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774416294; c=relaxed/simple;
	bh=Vg4YioDHtNggFA5svoVkgVW6SbkeGhQD3ZHpnvFspbQ=;
	h=To:Subject:From:Message-Id:Date; b=kaUGqvnZW34O1sa411CCuHmi3+W+wBztxFc8sdeVHllVJFsffu1TbUd9sK+T3uUMC9WlIYtubM04LyynNTo2dKa7bhCnPCfR/6t7lljT+asLtgKquCUB928osVnlsY8/OFtVnJ/R7xVnPEdvXBdSdkZTBpuZVgVkloJEwWwKeW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSzKX751; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSzKX751"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774416293;
	bh=Vg4YioDHtNggFA5svoVkgVW6SbkeGhQD3ZHpnvFspbQ=;
	h=To:Subject:From:Date:From;
	b=uSzKX751Bwn9BXPdzEf1xzppmMiiFCe6GgDK9yiMS66AE7s8WZwrLXwEI8QUUMuoQ
	 cDNaI8bDAXK72nB++xGxcjE4MO83DNmuahIQB1WuOx+e4S+cxXHAg85WDOWn+7UpgX
	 u7qexm051wZ9r+2TmjfZ3KauIJFuPvGBLGSQ4WXZffjNZYeL1j3uXkkQ8lXvrW9yrR
	 wD77N4/HB+njuK9X9PlIzvx6OrZr6HpTyNqRLGiCmrhjRIWsCmxisp7AWN/s4j2llp
	 drFk8eq8UvF3diFbQRgKglJe65spoGj8R0q1VoW1KrGeB0hbeOT2toHN+qkGx9CLcf
	 pvQExo3+IcjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92040FEA807
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441629358.3774.15518603767684747353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc631ec693ad2a80d05452c4e414cf375a736ce0b2db38fe0752701512036233
Date: Wed, 25 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774416293
