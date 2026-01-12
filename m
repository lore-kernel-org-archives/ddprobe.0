Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AF233C50A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768251234; cv=none; b=azavOQ8OlOLRha8MMK2yGxx7bJWGbN+wgaL6SDf+7kNLq+mEkmuiITBsEq0kIu/l766q1W5FZrpTmG5LnQ8SQxbL6mUZK0Kg/1L7Wwe8XADoa6gVcRh2YwAeNVAp88aflT2hiUBXIkf8ord3MJY8VN6Q5G4eMC2/c71dd7t0uDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768251234; c=relaxed/simple;
	bh=xnsZYJN94qZaA4SsfQdHcBCB/GAUCsYZJ+4kCvTBQOo=;
	h=To:Subject:From:Message-Id:Date; b=lAzMA634wQfNeP7ORjyoclYPrqkeC9Fcq79hK8gdR7/kzqAgZhLqN5oPk1QjLU7QAS/NFSS6z8jFfGJanVd/FDdKCiNI1msF9UIKR9vvQRiV6yBqD+TJDP76egDn2wOYjSpAh4yLkeBz+EQCSstdt/HJ4IkYfjhPSO6ZoeRa6EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT4wDZQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT4wDZQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E4C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768251233;
	bh=xnsZYJN94qZaA4SsfQdHcBCB/GAUCsYZJ+4kCvTBQOo=;
	h=To:Subject:From:Date:From;
	b=FT4wDZQBgb/5nsyjKjAEgbMwG2Pv2cVrwGQQvuUyzTNGcLOhBgcbtbpvYPUls8yC/
	 nEtCN2LR8mor6n8Mono4j0Fp7K1MDfSJaWf+j8Y4eOq5HGPZ5JTb86Nfew8wp/rsoC
	 l7Amscdb0Dce+EChmknvFg/vZYXPBeujXhmrd8jSFye41dC9fNXRdflKPdvKbDndFQ
	 /liPd3qy1Q9rGYjjf+IWCFLAdm+JyKp4AcoVKEuXL5PFxmUm6ZOq/fA7OiG6hvK/6C
	 3IWZEpGPRhx1jyBjWUDMI/wNyiigOXVgMvGIdO9+kYQ/2eust/+1r4GDvmnSbn+lPT
	 HWMWhEN77aTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92445CF45CE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825123357.27108.12520888357466177677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5169d4e0c4fa8706fe5c2ba70fa55dc15133917d7f2a2d72ce2f00a0e0f454c6
Date: Mon, 12 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768251233
