Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303DB4A23
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747250994; cv=none; b=bW9Z2e2czRK3O0q2CbJ1xVypKZU8Je9nUrPWvzKxdxnPgZEkpvERlxBUbTLdJE1t3si4caN4khu6ni8BQfMxY+bCUYUtWc3Y+OVsGeptCNe8+ehDGDCYIR8gigXTecka8BXOHXV9GfV1uROoa6FCxo+RXO5xjE2Bk2kQ9H7w6rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747250994; c=relaxed/simple;
	bh=6CAg/N1Ukj8qqhPVEnrFmfJnf7GaC6BWws7pbE3UZn0=;
	h=To:Subject:From:Message-Id:Date; b=A+M294UfMORav0Tim5HLl2UoR/w5Za0PKhoqrokNcZQE6VthYYRQietVWwNsy/Tsi0hFNt9URZi/VBIp1BajX4tUiSSYm1Cv1qEv/cZa/ehEJdVVA2s26CK3yzq0uF9VkdScKS7sPFWeWemTSql6Tm6HZJwx5Tjmd6sUdv5mTs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1jbtWDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1jbtWDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E66C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747250993;
	bh=6CAg/N1Ukj8qqhPVEnrFmfJnf7GaC6BWws7pbE3UZn0=;
	h=To:Subject:From:Date:From;
	b=a1jbtWDQIS3mPDk3pIpOPoWll00tMPOQuFSeLKR16vxgXV8a2fHTpHG60hckQX2dw
	 yEcTNU1okW/d7/p51s4KLPN6tCfEihRHgcD1mBqPuZrkRGTtZWPVpM4liE6JETNPXH
	 4urIrwYv3+dkjvZ3ZiggbUZa8ObwCFSPSRZymIg7m+Jk6mVfC6AVKAdm502PsYc4+e
	 XeHouY4vHz1xog/pBC9AdeFi0OxF0W3WcOXVPrL+9CNyDoPYzusQN3s4RBK5Je5QWP
	 pazLxnhiXlJLB3KGFcF5dYpJKOd4KyroLs4Y91BrSN4ASZ7SnFdusCWtekykevCgYM
	 TlauJPtGSObYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95EC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725099357.16446.14276726405669895795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0530c3b0836dcb14673200f3277071340428fedae41453a77ecaf6095974b56b
Date: Wed, 14 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747250993
