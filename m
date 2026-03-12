Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0857239657E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773335694; cv=none; b=LJptN5G/aXMdRRzHP5fYjE/8elU8njCPcYl9cEwA508zlAc/FmmnXruQ8NeQtK6NqGLW/61Ii+qlq67nsrFBzrdyxO4QxtlBo2V58GMy2wN6oVrIaaeQdip4DNpWPmLcTcwueYnSMouw0johJmNge/3yQ7nZ4J5wSv12NCSYAmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773335694; c=relaxed/simple;
	bh=id591/NNFoAm3mN2wHdKCd8PbrZX/6O6w+vUmYAd7JU=;
	h=To:Subject:From:Message-Id:Date; b=oXz7GkT3BIrprL1OKiGmcxVx5jNe55p/3wk7gGaIv5iTIBHOKFKquuUd4LAMfyid5ivPkkoRxivrnyRmMp0WRnqsWm/ehQfFTg914ePmjPcizTLKT/0rgLy1Ny/Om91T3VLXXWa1oCl6Z6HIbotGHdwaBDaqM2uNLq7ruVkivzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivUTNRVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivUTNRVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773335693;
	bh=id591/NNFoAm3mN2wHdKCd8PbrZX/6O6w+vUmYAd7JU=;
	h=To:Subject:From:Date:From;
	b=ivUTNRVi8fnKO/1xm3fHBLphdOn2NQA1BkX1e2/5HmvOpq28SE/ocJb/mCwfJ97vE
	 BKMHd03R23Rt10IWcBOudWsYVoahGUO15O1EII7naBACXlplDSUTbef2yNIecjiD0H
	 M1EkE0+fiBdI+LQrheOLUYhfrh+0m0a8Svhip/b1oEKNtoXzw1tYeuMo4rjEbsl+oi
	 rnMiy4gaS5iLa4HzTpVo7FpklbF80GxDke5ChXUnuFML3s/9jCTQEIxLmS8jgoGtPS
	 UqWQm4DF8MUUm7fuxg+w4G84LhookfoaPvYaa/C3+JdupebVOVTTqXzHVC7lZNudWk
	 CDirqnRFEzA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051B106ACD3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333569358.18757.12469145564201190184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c153e2bf69c23d3e7cd53a61dde903241d8ee204b47792354250aaa0342114a8
Date: Thu, 12 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773335693
