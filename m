Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB93C062A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788721234; cv=none; b=VRR0/mQwbDxBmmAMtvJJU1yzWBR0H6loT31xvTwE3qfsVLTRSuQ7jZjxTwvBAaktoZu4Q8Z7A2lZ8Xo0DOqdQCXW1BW1rvcoBjGfsYBYWdqooYzwJtkRU2jK/3gsalDlpc9KMOLrjX0vT7YrH/YOIHcBd1fIWIxkY4eDzweEqd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788721234; c=relaxed/simple;
	bh=hhE5rvcwXxXUu8z9Efx/U9/eu3HpdFT1rfPAGcZzCCI=;
	h=To:Subject:From:Message-Id:Date; b=FA14a0WhOtFkvi+RIzj1RbZbh7Nt1QDYZhJuUCXn5RGYSSSgFlD9iz7PZKx3NErxWxbWSqDW3N8MNiqlRBNO84THfkdX8JZFD+MFShKlSv+qZputCmTfuPrxQcmcmygZWpAgnwdzdY9k+GndgtxXdyjfa5565kx2eyvdDbh3NWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raSuGg0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raSuGg0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AF6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788721233;
	bh=hhE5rvcwXxXUu8z9Efx/U9/eu3HpdFT1rfPAGcZzCCI=;
	h=To:Subject:From:Date:From;
	b=raSuGg0lEwWugC2h1G2m2PG6tZ4CVuBCBZ30Y4ZdeJ0Vlf3y6/D7WlMN0xUWXHkd+
	 jgm6FYJThCVlg3O+ES7qAxZUOGrQYmHzOx3319372IvtzzaTt0xtEr98WFN8i1QTDM
	 XdNg96pdm9F7KPxzGJh1DoqVXWDcj2zlY1GBfMVL1p5bRZkBq32hwdJtvrqAMHgxfv
	 /OXHCHyygWxQY81TvMd16QHX1KlCOf6DssnFL1Z9NUc97XzdfqqnGvvYCstGGAiWhm
	 baXx204guLOa9faCxgwJqDlruoHr6L1CidpyzgbQCOD5dGyT6rwvPNGeBK2T5wQqMw
	 K3WcRhTV3U/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5FC79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872123370.8471.10289693170331833780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5474447321c22b118bb2b15829954694fe136103820ce199fbcfea3da8127d
Date: Sun, 06 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788721233
