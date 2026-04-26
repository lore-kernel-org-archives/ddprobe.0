Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24DC2236EB
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777213054; cv=none; b=VLtAUk8MpYziw3RvhFDt12iuVkNu00lr6owC7/hzDCOU7FndebQc+h20ux5dQ8T1SisknWnHnILnpuTyGRGobtcKUbaRVpXVeEfNI4tU7sdKouKmwq6+JpHmOzzVmM+K48i7UHG/jxmEPl/7fcfEB7SO8OkmofJfC1QLn589DrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777213054; c=relaxed/simple;
	bh=83GMcm4MCU9MVuXAlrQwl92Qy5sdXTr6TFtWXnu6w5A=;
	h=To:Subject:From:Message-Id:Date; b=s+hMNuMk6znTabBGWLF30jGXAwi4Eoww0m8b2cKAQlvn8ZJxhcfRLXq3+76DojB4ZLaWPaUJV5ipCJrpk4f/jLGhiICJTL9ycu5P67Pb0gqu75of7vgvp8EA3nWTOxs37CTLumh25xt/L1H1VSrdIVrunxbIMWtItOP0IcXsSIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uU5J33RJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uU5J33RJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7229C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777213053;
	bh=83GMcm4MCU9MVuXAlrQwl92Qy5sdXTr6TFtWXnu6w5A=;
	h=To:Subject:From:Date:From;
	b=uU5J33RJSL27Z3o/+ZGjSEVb3Eg6FWCCkzpyZgH8aIQicadEaSXtQyfQ+l783KNIt
	 8MnnjQNxZS74XCVpf3hwNQ3tPGjP2xiqrYs6gHu6Yttx+2C+zYl2VSXJm1R2HK1EWe
	 eTIb4FjnChi73s/gzdOV4hKxdzrZ1vAfQVRIDURw2cryF/WFPjAaV7R1jLUmi1D2JL
	 GDAstExPqNpaB+Uimhp+RxaFpnhXMQNSdfpwFgFFaXuEWzHIdw11TgHpwov+PNOnom
	 4nLvTUJhOsxeH6S4+TmpvTt+Mof+2LUteUxzC+2jLf7GmanKgjB1PTtg+U7kGyYSFE
	 uXFM6Kc76v34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27B9FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721305370.22474.16169250691659153757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0a14b3d654aa251e7f40e18f64eb0aba61e51a3d0a600c3e8418a3067ffa12
Date: Sun, 26 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777213053
