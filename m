Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A67EC5
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749956994; cv=none; b=SIVJW3Jgen+vNR1LN3roe0tdM0pery4/biESzy46CH1uPxywoOJrfH7uVIDZi/PjTZURzk4f8Kr4Tb+gEIpZOIGzEChQvf2yataXyzBL9Kkdq8HImd7rflh/gXxgOjMkAB4Wy0FPK10PpZOq+TH6Ebl7ms3D2vYcRUkoK+JZkUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749956994; c=relaxed/simple;
	bh=5pMiT6Z6b+O5tKLKJ2v2JescKzeBas+O0ZocrHOMgXc=;
	h=To:Subject:From:Message-Id:Date; b=oAJLfX9QXuM8E8Buovyx2OmroPy08ZI1ha39Q9oA9J5U6Ooh/XQFKiyLPD3ttOylVLRbmTVrp2Flowlm/JOdijDTxj2NZ8ln7d3QbZNydkXVd9lL6y55jksqNUp+Jz1fG+/qR6opOvEYjtr53uekAize4S3QNcAubmAQ0yb6bKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqetezdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqetezdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC020C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749956993;
	bh=5pMiT6Z6b+O5tKLKJ2v2JescKzeBas+O0ZocrHOMgXc=;
	h=To:Subject:From:Date:From;
	b=mqetezdyta/0rzogWXfIPZrYuabYsNOHB09sd/qHQNGaiFSKDY5dw1z/rHBj96Lno
	 PgaPd0KnveslUxxH5SM6wA77a3GJ307wfLf7OTSpqcHlpFjL3Ofoj15Z/2pw6CuO8S
	 1b2N70pJOd1oXaYHv3Zcb5G6N8O752wcZIs+ALMdtRhvDnDidljIKJEQmjOyVCLvn1
	 O77AoJ0KFV35Qy9J2vy/kk5pIL36smwKbeXEX9fUkziczjsi97Vo+4uQLjRjfm+7g0
	 eogwW3cKakt6KCWQoHqrMyossEA1IxCgmld54+SMkd0Qom0KB99vb3A1pocMZKAOBd
	 82gpIGbn/PRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BD4C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995699363.16802.8124868916290525979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ab75bb02fa74dbf155f19a0dbc5a181593be6df90e632d9507e2474dc98644
Date: Sun, 15 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749956993
