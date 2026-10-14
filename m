Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318B377A96
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791946234; cv=none; b=mImnoNbfwnPExKjpJqVY+iWVV0+ZSWCNnw4gfpV+UaYxKQnE56e6AMFs4NmMGwXqIZ9qtHlB7d2yMrQ+VqfRAN/bPW4PcYl2MrfV8dANlKqqdJ3cb6y4SKtikTW2QHyqYQRyHEKlkQ3oX1dCBnEH7HOY5c37ObR0+W5HYOTEn+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791946234; c=relaxed/simple;
	bh=+BcZIqPPxJuQ3hh8jldVs6O5kaNz5tnYSGw3ZuEq0hA=;
	h=To:Subject:From:Message-Id:Date; b=h+XGzBBDwpcLeISs7BOWiL1MMKnlmVm6kAVtKSV5c64vSEzpp2hoK4yZIJb3ngUlZCMY4973DgYO9QeqInFaO2mZG88In+cTNjrnUv2Jz4cmLSNLBBE2/2wkgtTVfzAMQkNVGg1kfBgE/ALcT0kx9C0SwXaVLtt9AoXX3t+5LaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSY0bi2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSY0bi2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D295BC2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791946233;
	bh=+BcZIqPPxJuQ3hh8jldVs6O5kaNz5tnYSGw3ZuEq0hA=;
	h=To:Subject:From:Date:From;
	b=tSY0bi2nAl2Q2PjszTZsVaiDxHjCqiqglrVheZ/USEuni+1k8/JwAAv7a9vriUg9n
	 h/Nw1i6p3rMTSdzO7D5bGw1X3zwQySUX517eo3RVBkmqf39bNWVVvMkJ96X/dcKf79
	 qve8nrOXawRA4kfRTPJ+b1wvqe+AqxtKJS+NtPNuOhxAsGwGaKYv6snxSZOnjT4EcL
	 DGPKSdP9hPYHZ//SB2x3fATV30QUDK9U5x1f5w2/GOOqN7+OqM1eRJ7JM9VC1/sQfJ
	 raRa+RIi1Xsozdo89Q8AzIOl/ou4/UUgbDxlJYDE/DOdQpfVaqYE29rjVZPiHckku9
	 ElApLOP34nk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE867CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194623370.20459.12514682175006113251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05234296fab6d4fd6e18b050f301b6ef127cd63f495a8f6d505ff14864548680
Date: Wed, 14 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791946233
