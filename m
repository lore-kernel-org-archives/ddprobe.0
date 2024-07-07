Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831E14A1D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720333583; cv=none; b=dp9tXKqsqIgogsGIJy2oSvngQHyVinw9s/O6m0aAhQKeI8Dq0CtMgpID3W6b26Mnrt+uOSKYwKJjnNK+YMgP9QZGRU306Fs9ANN5Gf4jO44MKPQLEKekiX3lkU7scf1E4J6mb4haOMNEgfd/EBqVUonA3x4wZT3j00aXpZ9+HDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720333583; c=relaxed/simple;
	bh=1F6KFVBerLdOd+q/h3KHyDPUiyC54eDVUdgXFLMsFBo=;
	h=To:Subject:From:Message-Id:Date; b=ucSFCzTrOEmodCHFPCwwfeeJRwdmkqymGCrcH4UhZopY9SsDOLLpYQz59b5xRAkvgoGFSFKK/x7eKg0Rlkpnc/saEOvkPvkKSzT2fVTzhGdKGzMpgWy5BbxRHL36K91vrX+ouPyhecaNJkt1mOMLWKYFxoZxtKQ1DhvdoQ7BzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7X6XiWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7X6XiWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2DE4C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720333583;
	bh=1F6KFVBerLdOd+q/h3KHyDPUiyC54eDVUdgXFLMsFBo=;
	h=To:Subject:From:Date:From;
	b=h7X6XiWWbO1565rE/cMr1M9oLyH9lb50HLO1zTzxCDx34nC8vdviSIpu52p4cAgBY
	 cR6/Bf1UcFus7ys2BE3LrR2dIUsoCeYzOmrVOVzTY9G9YyLyK7Is/TRkAhBE59zLvN
	 uYXc+6IQRHIJy6N4rISmOC2MsM4ylKac2AqOBp0KuJ3OEAibL57jyVQTXub/eyzZkP
	 g6PNNRz1TiBx4EK+4uVHZRj6ABjU6JAV2Zz+O4fhf3fV1LbUwRBuuBwLj0SYpm+uxe
	 dvsmZRciegEOJhlCbT5EHz3tRhGm4GzGcdojk9ZVIbjUYlxExS1NUeNRc5iayrT4A9
	 vQ2TjnOswwRdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A56C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033358281.17118.14093428399282158778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff432c7f5ffc7cf0e4540904c1d16689b20dea91b3cce20cec9d520527cb610
Date: Sun, 07 Jul 2024 06:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720333582
