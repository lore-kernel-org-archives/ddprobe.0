Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516DE3BE161
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788681634; cv=none; b=rnbGibwVe+AmhX+ARv+wfQkE5sVnQzBR+EA8WR5dn4pPqOLO97+nmDNP3WsMqWfYFpGFdiZIow8su/ILRzznm3ZRFqrInDonHC1j9zXR1UUpEGStcZKg64sSoFQVMVBulLAfmybwsZFanmmA4ALh8w4Bzth+pVrLThf9cmceMys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788681634; c=relaxed/simple;
	bh=Qvq2HTbB0LtAsJ5e+V1yXBdIFQjw1GFIMGckUV9/eMw=;
	h=To:Subject:From:Message-Id:Date; b=Iuh7OKp6dbOeZV4Dz19rxRjCzVV3ly2pmvgU/5qowcrx/4GJYp0h5jI2AlX8obLuv7ykt5Phuwzfha7X59i9fl7LTIi7OiKeDkTtDSUdTYyVLeM4dVrJhk9WwJAnKfDK+q1wVPJ0OHEonwXU81X+BYbtLnbVIaQ3zGCFRwqoct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wojl45K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wojl45K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3A0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788681633;
	bh=Qvq2HTbB0LtAsJ5e+V1yXBdIFQjw1GFIMGckUV9/eMw=;
	h=To:Subject:From:Date:From;
	b=Wojl45K99YV+DmxmN6yS8QCWxbco1xzgvruX2xiaocDMgv/r/amuNbpZqgB0T0SAt
	 XfBcMR6ZlEJ8As/AXbd8nseIKveVhzGbWpAoFyOby9g74ru9oxyBKEntgahqwJGeW3
	 PlZNodHI8/AS9IcKvdpG+hsOdHzADIVGxPEk90RQqqMYC08EDWuyX9C1/Zuw+0Nojw
	 TCC1wGX53+2Q+psls17BEthU88Gf8tkrEhIiMOJ7Zmd64G2X/msTIrteq3rB6jdnZ3
	 GLtA1d22KTSJwEIoHg1lTDdwzzsK50f5uDGfRwIqS78/KHs7WMJQc501i4+ABHeemY
	 gDpaKtqQH+SKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20C2C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868163369.9154.12560585680684452317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfd70237e48c1dd7d692c00ccc47f41511053c823fc37dd3e43806af68f3b63
Date: Sun, 06 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788681633
