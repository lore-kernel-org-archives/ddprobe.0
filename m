Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07830199920
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766437434; cv=none; b=XLxbhq0MgwPd4Fi831ZkjLadIiWRvHah9Mcl+Z1Yy+KJpdafQdlAn+a/HUuvIXVnwkmdaaLOApMe89kq5ulwlxEBjrF5HI9MaxKHXhLzVWrw5PiHy6cwFkUZSas901eIWfCguIWhNZa1Zc0OzJvcnS6ruZXp+HET6Ws5kuir2EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766437434; c=relaxed/simple;
	bh=fr2SkxKKs6aAJNBunqFsg3bLL0kkRP2rI2iEOu/Dj7g=;
	h=To:Subject:From:Message-Id:Date; b=Tv5mse8K2Y1Gs705SWFPaWf3Y6UbeBmkwdkae07rx18qWb/OTnDi9Z4Gdh11biNAahY6y1Cxredj1d4jMoZgQr9Nh2D+4OHsDFNvrbTto9GB75xTPv2MvTTZnYWy5s7abK7V29Qo9mbMKxrJwrEP39vJX/vIMIeZDiKW3IMICLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhfQh90S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhfQh90S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766437433;
	bh=fr2SkxKKs6aAJNBunqFsg3bLL0kkRP2rI2iEOu/Dj7g=;
	h=To:Subject:From:Date:From;
	b=PhfQh90SSjN/0lyQ96aIF5EJxJU0qLjUPfDBWaWi6tRl1rrHg14vk40IwPEOLuXRo
	 Us69jEvkLl3MLE8LZRDvxul61nL4Ql+iZPnLVaR6NNayWiZ5Ygz/W79KKRbCLs96yY
	 CnDkaQC9783zuOUzYKCqS5PuhBd8wPh26FFa7ng0DawNvpwRWc9cQG+lGfT6gSTr+/
	 VlM4uxj8QEYMIy/PWugK1C8jSX0dgccNa8HIzlaqxUC3PGOmvCpUCfioogSbekSAWL
	 CaJCcDaS/RARbR3y0bnvScoJEE2QC6ZUaH/KHVPz36X1MwiEHX2zRyKRv+kLoolGDi
	 lLZCKGLHibvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93579E6ADE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643743358.5674.4616136361963412415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f113f2f50c7912f5425898d49f0e6849a13faa4dacd29008043692e7065a6f9a
Date: Mon, 22 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766437433
