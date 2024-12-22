Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3594A82866
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734848154; cv=none; b=JrWt8FpIR3NpTXJ5AgAfXmRHsvyuFUZbIJTR4N+BfkPnnDZfdMg81kyetWv3axVV5EwJOLmIT5Pfoe7Y4K4aJkF10jH+qmdJZE7u094OKP/JHAAqxNJkk6baqN1FTlrO9l5MM6XgZiZ1sUsSDoXXUn0msD4IFOQsuNBEXUvEMX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734848154; c=relaxed/simple;
	bh=vprarSM49jj2cOiq06Z32FMZUNI7s3cPB7yOz46JwbQ=;
	h=To:Subject:From:Message-Id:Date; b=N4dcbSxaIS8YzLCmRs2GLPG5MFzWJZlWewWMx34fqqCoYte7OpC8mTfByALa7k/rj93n+1D9zpfDBCcKrxyyApYxqA3ISg6kgTRvDDNL2pGLm9PbZfdwIujp8oXfNsnes02HBzpy7x53EHVhXu+eEv0clEJ7RPAURZNyLGc5YoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz4FM3HC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz4FM3HC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA226C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734848153;
	bh=vprarSM49jj2cOiq06Z32FMZUNI7s3cPB7yOz46JwbQ=;
	h=To:Subject:From:Date:From;
	b=Jz4FM3HCmjXunxl2IreCDx+Ulf2SWD9BX4hFPKcUf6ulITtaBYF0jK9ZT/uRbbj/5
	 DRvmXk3ubcXnl6G3GEzxpltr2ZkWe2saUBSja+5akcBDg8H/FMwLIZGix1s+rA6FF3
	 3QpqQItZQ7bs60LCAUmwxyAV8Wr/B/w4eldiEX/dtKZsJtwaOL8huStt7+UXUdusKG
	 yMl3mmNpZYfXS3dPJV0mrWNiqDnQDaQCXgSOQnxTiDfHIRVR3AUC6OlHRBESJy3VDh
	 Z5LXLipzMULoUtEpgstnU6Yz2bFhSb/7N8Sv3z4ggO9c9sm3DtmL/5AvOrJF/k3jJZ
	 zQTYbGAJSF95Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162FE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484815357.17561.9977963930279472212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d302d6ab2985097f8155e71be0520a3f9d2af274fa32349a067125c523eaa354
Date: Sun, 22 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734848153
