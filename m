Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9E62C11CB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762212594; cv=none; b=ScIQogZJDLtn7CYn87JDKjATazolOHpGfSXWFn/YWx6LkfjcZhjaMIzxQIN8FEVFr4pmvMqU46msYdX6iYeXnTEVv9F2A73MLuK8qm8QFXxrkmFjGwuewuJycHkKWGiR4k3gbK4/ZU6jiV5N3jJPiI22hyYWFLz6yJTV0J+O6mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762212594; c=relaxed/simple;
	bh=LO4MWF3P+ysHXsF3x9/baEvstSnQ4SOA+gS5yywiVxc=;
	h=To:Subject:From:Message-Id:Date; b=cLiVUMEgI3JohJOoxodGB6PVaEpwlDYTGTuWLC4NprNGhWHZb307bHJb+qSLEPP/jO0p9K8AaG9c9FnSsGqfmH5jE7lxFVSNRUProMEjp/fK1HfKsKRI7XVj3FW5HoGtabkXfDDq73ClyTuD6GSZ2cFiorfbftKnPRsQ1WRlodY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjJ89l+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjJ89l+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4593C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762212593;
	bh=LO4MWF3P+ysHXsF3x9/baEvstSnQ4SOA+gS5yywiVxc=;
	h=To:Subject:From:Date:From;
	b=QjJ89l+cZxhduC4BE03EVlbff1G4lvihnL0lKVGL9onB0ag9paa0M/Kbq9C9dXh5v
	 n8omeRi3as6r1AzCUypFgwKm/MfgXLe/vCZTbY/69RSPpsrZ3KaxoijV0hPNjislCv
	 ehdAB2Bcxwj02AmYjou2lb5opuX0UAVUYHPRFPrU0Tvqh+Rqdm+1379ffBnMKE8K/K
	 6KlXEfC5kQ19J3LwWZg816b5cexap7Uk1N+nD0i2fGiOtAjlHv7bi/M3ipbyEYvk7m
	 OihNKCBU07E7a5ACGbnoI/RB3Z6v1KKU1O56tukmOIlLCLGT40D5Mqg2lirP8264Wq
	 7vDUolAJsnfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A0CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221259358.10821.18365815093237375715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7078336a4ae68a119113473add2d0f188098ec65b1a3c6b4140d8f5f9b578d9a
Date: Mon, 03 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762212593
