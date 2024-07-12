Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED9D13B2A8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720767443; cv=none; b=BDrnjSQNL9L4INNvLGuUuDEWZ5ki2avjcaSaCsz84s9RAcANKgvj2F2pgxVyZ9XKKt60mAqImShyz1L3huAdaRNsmHtxCHr+JcnUwrDn+nld4WsldktfPYcelQAz2e/8ZfNNmeH1dmd/0KYpt7fiSMxMeUTl5DOgreZiHSYRbuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720767443; c=relaxed/simple;
	bh=w2GWw0Er7ijwfRscIvk/zYgA/6+tDO1rLBRMcDrK5rg=;
	h=To:Subject:From:Message-Id:Date; b=UcjRy/8B9zl+SaqlxQtrvnPkK3gR5Y4GPo9cBq8kVnAVPvQOKbFHuE4Xfnvs86ydbiV9iYU/efO21b2CUhGHIIDVolPtIrKFvu/y6qcgV0xrQJcjfadEkgtx+iSqj20oDPjdJx5I1Xp4XXa5W9FBTwGX+MIP53RKpM9upk79CyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XORWPgHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XORWPgHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA797C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720767442;
	bh=w2GWw0Er7ijwfRscIvk/zYgA/6+tDO1rLBRMcDrK5rg=;
	h=To:Subject:From:Date:From;
	b=XORWPgHK4bgYSG/vahCDo6f32BLB0B8wId/NqhHEj5WQ2Hrec3LdSXum27dtRO/i2
	 8FgSK9N9mGp0px28TWtPiLX5W/Vpy57SL06kqd8lh0nDibPe7Ge29CZ5mBHxQMGUTM
	 PLjxHa31zoOocpgsa9eCUE4CebcUpOUsll2ZEfQbzjK/3Scu8Bxx2wpQr0gkDqbtXH
	 GdWCK4NW7FhYNQ95jt81fFoVFC3qvGUd5pMhieAndTQRSAVup1hEv8wC136NBJZHgi
	 NnRAkJ9foW+FtJMWEmGAOKe+9lXboK80vFvi+BjpQVFe+9nu7u0Z5y7vlI0v/dsYNE
	 BtJRAHPplPXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8072C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076744280.30575.13581331242904856236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635ea168092d8be2e7d799b7326425849bbf98d07270fd55b3a7ec2e008a67ac
Date: Fri, 12 Jul 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720767442
