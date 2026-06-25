Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C3135AC00
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782378454; cv=none; b=h1C/RF7A9OexiGKM4Akgp+4Ws1ZPXHpI4Y1GAGukDr2UnER2CC1evKefEbyVhr/TSdb53+aswcPJXM6yqGBLPdvDbOvO+fj3Q7Y4UInBZ5Me8t6SWXf2G5092JI9TpToqkKg5DCO6LydnoKQ5oyU67SQRQWhoh1yE8RBgePjTVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782378454; c=relaxed/simple;
	bh=PFuMZwOsOzm83JJwdEZHpcGCHtUT6my3TJpqiFAmElI=;
	h=To:Subject:From:Message-Id:Date; b=ueQP/QAn+l4PV0w8cbiJefBL0q+qDb6pxabbxfM1HYyEDJRyxehhT2e+kvWdmZU09cQMCSoS+nQDeY/nT6jq6oVVIRWK+/2MNR6Vp//zzE8/nYZ5dEvzLdCvkC31jqW4/6gXfuurQvLozqpUnOa2TwN0yHsjekNmAYHTgPszza0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRlyFcZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRlyFcZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8022C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782378453;
	bh=PFuMZwOsOzm83JJwdEZHpcGCHtUT6my3TJpqiFAmElI=;
	h=To:Subject:From:Date:From;
	b=hRlyFcZbgEb1DCjv/dQxiJ7ocVNrlz4ZB3aiv8ea/UFSvvVG05RtH1NkFyvv0lyzV
	 Mq41Q/hjyA9WpBmwl7kWpIKj+IbOo59WLRHr5IBDIRGPhzPmWAUUGxvtABGe/JCLNf
	 oEThM2mxt+8Z8yTNQs5/Gdxd7eTPqSN/8+qzvFy78bfR66qJSsFEib7lSAMWLmlo+y
	 zg6179ZayKD4XXt5QaK0u5FTplDzfHey88euhvg0v43xYgTYzyjXmsEpEEDh1HPXSo
	 EeSU/BKGD4smdIzGV2J/uEWERnfSFmG28E8MR/TCMnR7OQuHjOcxHIztKvlF6D2wey
	 UNm7MU530raLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D2ACDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237845371.16249.7722876434364461194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba0196852a997fd1d2785226cfa26217c7383a7969cea78e1844d277351c4ae
Date: Thu, 25 Jun 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782378453
