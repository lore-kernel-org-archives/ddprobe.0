Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE815A8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750381794; cv=none; b=MlaPceeQMMciBCAsky1HiF9XQzc+lizOEgJTqb2ujd925c35iqOmaNQhXs47WV8SP/QEqtRI3p4dgVFuxSAZOlbtwARNM884WroRaIjMClhoab3nEaXLVi3O+RNTZX1jqy1y4xPBoHv581aHmkv/C9r7HSPLp3ECo7v+Z0mTTjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750381794; c=relaxed/simple;
	bh=K02+mQ6zKl8LPvSakvoHuxUB5wGmNDVKDEcU9jLvfvk=;
	h=To:Subject:From:Message-Id:Date; b=QfZE7yLrF4BefH73KheMYTg3D+3t9qLF7lceJGggGDMU5Zih09MqvZkd+UwhgNXgBw6Ys86AA+ydyhM3mD1G5hHWxmDR+PEi8q2AX8WaLJ+YJ+E3nTtZ1F5EFD9h/EGO/K7ZFsA2BE9dP+++FUO7bzNLFvuit157tjXbHNH98UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7bTLfjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7bTLfjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB99CC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750381793;
	bh=K02+mQ6zKl8LPvSakvoHuxUB5wGmNDVKDEcU9jLvfvk=;
	h=To:Subject:From:Date:From;
	b=s7bTLfjVKiKMVfVd/i6EO/0kKvRWX2eur/RDXXfd0I4Kqi8JmyVeu753wKz7mqAKP
	 e6xi/HIW9XDuOth0wPD2pnSKlCffUNNEV/elbRWRmubf/6qCqOJanB0ZOKBdbuC2P0
	 HrrjvoPEs3cduNnvTh8lKKgyqScEWRQu/9HtjBv99aa1kGH421PtcZuHQ7zKtem8Yt
	 ueGYjUL3yjqy0IUou/yaqpIskH4dRZr7t7xhfozZdnKGzQrDGcMPc6LYjSHmGp4wYw
	 H74UpwhNZiFDa2d/cMnSc3+QTqevzplV+Bb200DZAhgT6Owtev4SoXJ1ZkTGZElkht
	 Ume22RQzNd5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99365C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038179360.25170.15838150972685559674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9e36c72d008697418b81ac0bfd948cbbc45b171e13e48149fc71c6f0a6c689
Date: Fri, 20 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750381793
