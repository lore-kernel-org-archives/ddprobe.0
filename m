Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F2D81AD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722295554; cv=none; b=U3x+/jq/M+oCXg4CUMzXMaQMRiLrsrk111ioX8TUN2Irn43NtGvEiK9xXAP+bd23rcqGwwSyP4dnuL4D5F3Z0ZIKBeJ+F5/ViDgK9nNiEejTFsU1N8savQtCVJctgpBmeeZjC0ENMmJ1lmYcTr2/peliYqyMAT/yGiUWbTFWQDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722295554; c=relaxed/simple;
	bh=UL5CLlR8BdWdq1cpvUhVkXq7eUXYx5H6tZo9uz9WuUE=;
	h=To:Subject:From:Message-Id:Date; b=pAEdjKFPpyGWMyxSmVHHTZtFn2zwhkAeayRGbkXBRuSCpR+F2c1166ozeZEG/kF9spcRIgCDejkdNpiElgucXlTLouhoM/iWAvNGUMVkUXhGy6Rj+T7D/p8FYFXQzTYouZXdpr7ABLAOetAkvjksoeFNgh4bJrVBvGpz5zCGYcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxfgaL36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxfgaL36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC4C4AF07
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722295553;
	bh=UL5CLlR8BdWdq1cpvUhVkXq7eUXYx5H6tZo9uz9WuUE=;
	h=To:Subject:From:Date:From;
	b=dxfgaL36f5XqyTXGEzKkU+33GuU6oDNlLimQQNnIqraqAbb/nKrie/IwUdLIU7gtH
	 IGmo9dyD3QBztx6xtKji0rDMvenmx15q2IMik+0+ux2CP78rWA4onNbTeU7NK54dzH
	 SoPj6nrsLXZ1wAtxMPCgBgAdGYswPmGmYNSgrFuco7LDVQCsYyG1Qh5Te61XRB2VNj
	 ZMEgo8wXU6540RhUBl/pZoAhWNxXn1zUlGzEAAHRd0vBiqS+jfmYPMXrNuDBL5PVW+
	 0lYy0pRhudp/SDRBA+dLB91b2a/QkebzEhQw7JHiYkzJwm1qppINU4RnftM9V1iLM/
	 olX9MlLPyiLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C3C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229555359.17306.15727982020116773063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21d53dbbbbd4cf521dbdf20218934ef9c87e67a47051c486d304d62e2aaca14
Date: Mon, 29 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722295553
