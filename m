Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375D6353A96
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783262314; cv=none; b=b3IYDB4yd0yiZXy8kylNS1EeSH49+Gc/1/d1kc9pAeHyzOzJxteEP2iKt7bdihk4p+L8tcOVi6VoHdW2VCojNJiDXAhP3qsETUbAQn56SzDBR43t0YnIQLYLQ4BlZzcDg5P86MA2/Unxi4kpZ/HNevX+eWlzWyVpHxg2hWOOcAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783262314; c=relaxed/simple;
	bh=i3yUiEGUeS7zEnzRqlFcCP2SO+0FmpL03t7VfP/Ikbs=;
	h=To:Subject:From:Message-Id:Date; b=EP2DGMUiznL88t/COf5F/Bxd4zJD/b2/QX4jCyJUTuqYpD76Twow/SxwURvJgFSBQG1pPrcTriSrWPZ/LMdLS6Woe+Cu6FdCj+mMftmf+pzs8g2MCkT8/ORwsRZGIxSolVQenoOhARgYHkdJn36MGr6w2CAO5XeSuI/w6+p31Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSn5PnOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSn5PnOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD3DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783262313;
	bh=i3yUiEGUeS7zEnzRqlFcCP2SO+0FmpL03t7VfP/Ikbs=;
	h=To:Subject:From:Date:From;
	b=TSn5PnOwNXDJdISBRndHbq43ItcxB1VA+WvO5UbvwetwKNURDeIbtfuBI+Wzeo+Oc
	 wevvPFPfxWtLrNFvMF1Ci1aDLSML8ZBoza9G6N0AVRbc4azX144e9Ua2Q7NpO9Vr+0
	 2TtLJdNG7XYjjVtedgG4yQGMcgJcK1CBIfX3lSvJ/fDHZa9W+dpGhg2ntMWdyUEk/N
	 kGQFk340hW+kdzxpPHvOfeyoLDPqx6vtKIcW88KJmhE+M3AvrrD/9ZB/jdzoFzXS5E
	 83rXbf46vU+E5YSX/zNOqbAuAAEyfgnqU8Cw0EmG001gkZfyCHw7wtmNolIHd2FCXC
	 LjWYnkUE/xCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F29C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326231368.13848.18438731584935893914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005c4426bc2f4f9b9c1c562e11ed15d5a591c54230d72daa5924669312f0d4db
Date: Sun, 05 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783262313
