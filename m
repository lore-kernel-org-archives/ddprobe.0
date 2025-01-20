Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7112D188580
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737369954; cv=none; b=FO2yhZKjRy8e2miGRF/7LAexNNfWy65TKXVQ9DSas5/Nd8huAN0uVeTXSscMuz2L3iXoVwG+/qOI64EvMlJ9vRpgijdVUIcFuMWuTLM56X4FiFIihrLzIHTMvfgl+F5N85Iaipyien5VLysCa8hIBT3Evz1sGR4WkVR36xkEX30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737369954; c=relaxed/simple;
	bh=6dKLx2MQBpCvDhKb33T34oOFIvSKDX5Po3jAxU1Ew1k=;
	h=To:Subject:From:Message-Id:Date; b=S1Z+9eAOf0TDMUl9Y70jIT2nGdcn2kbkLadYJjh8jxRkVhI8Rnyag1J/Dq7vhagxa/GScLMtmcOgvbXUzJVb6L0PC4vh28zAekUHnVQwqlPSiAEtPBr+vZ5yJc5dIopd/JRVIbPw7bw+yZLONGv3HIL9RJXSKZcp3nBOmX/+Cvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPNbS/tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPNbS/tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69C4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737369953;
	bh=6dKLx2MQBpCvDhKb33T34oOFIvSKDX5Po3jAxU1Ew1k=;
	h=To:Subject:From:Date:From;
	b=KPNbS/tumNtLQymFWN1ABs1Zghn374l0+MRizIWgAt8srj5zzqencyWifAB0kmHQs
	 J1ePNyE1BbYUW/8rc2btyMoDa5HGZRu81G72BigsfPjDvjPttVKgD2D3/cVo/0x1kX
	 Gx68S9N5WMzHr4+MoVabQp+JVr169Y1NBod7J5Pf9DuYPOhylwvULByoCwLr18NgjO
	 PC/FEWajXObGwLc0yDfSl6S1B4GnEGJd99I/pMOeNn+/T/b1KyTnoHzc2L0d08ZF7U
	 UJghqi2TcLGlcfKXKMKsGTkgxrxlXkms4e3qQRZJyvXJj0m9KJjhmjqJCZ05SCh3/N
	 rwfdej1tiwJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E540C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736995363.19015.5404868738998116612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef9cfcdc022c7f046aa8c5b7134d9a1bd35ff7539f7c648052fa75b0ee1cb3e
Date: Mon, 20 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737369953
