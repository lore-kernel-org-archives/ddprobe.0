Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562591DA318
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720020323; cv=none; b=ZCGApn5gXf3lxaQzVc3CoDDodJ3XpjkmqTwvsAguKBV6p53hxIBVvjPBSCgmOKeFgUvu/62BiK5FP9f/q8NPfIHHoNeOK/lPZGaljtuooKoEX9MFbcnn71lh6Kx4OHxIOhcyMTDX2RV3uwdnolQZ6hOxboA88PffWXu4ear89UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720020323; c=relaxed/simple;
	bh=D3Dx9jislLP3UVtXAnnW4qSXLpoT1vQcM9eDWuMkzMc=;
	h=To:Subject:From:Message-Id:Date; b=NR4VcItE1IhtuLNVJC7jxs8vBurqpHbbNwZ/MerTURZDV9edUd3eDeWAIVAKyIPbfJMtC2NcvPArHco1UzLs854wgyRAXRjHLlWsyCdM1GLM9AQw3yDkswn5zd5zX0Uq3YWbZCVuOZRiRZBrhVVt3wg1V+XH5mkjRHPAadpPlQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+57a1Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+57a1Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44CDC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720020322;
	bh=D3Dx9jislLP3UVtXAnnW4qSXLpoT1vQcM9eDWuMkzMc=;
	h=To:Subject:From:Date:From;
	b=A+57a1ZlYTNNwVg0MMAb3YAzUOlSTjEwoBJscoSRY3bzpZiVOR9DxmHAssOF6fkZV
	 4XRk+7HAECecUE7V9fGA4h98b0lwTDJBdf4WLz0l1olybMsZS0H1LrIbi3lDXJj5x7
	 Bvi33UXlICZaWVzJCMrEYPXpdSO7jFhsqikt8CZBaRk7ehLif/eVMT4T0y8kDLyXfg
	 wa/Dclqz/h4HwBR7WG25pzrzsGDM0bhh/Isk0mD32/ctGFLgofXqXZ4bJpWN5FBqpv
	 QOspWhN1TiNSdtDI+o6VAZoiWqbQP4GbdlfHGzvZUcmQNkQXikzb0XFm2q43ap7Eaa
	 5uguGU43IWaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2950C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002032278.25285.5948542130857049556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5780b1c23d9410142c15f5d8723549093e38e6e255ae5dd2eced2b227bc7ef84
Date: Wed, 03 Jul 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720020322
