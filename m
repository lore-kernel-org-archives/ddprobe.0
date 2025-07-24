Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2960122E3FA
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753391395; cv=none; b=RrIzlCG0aWORdgme5IRerS+80Y1xUlHGKPX44rcPx00kmX84mMlio5vQREJrRKomm5Juy48nkxj+7e/1iDH06Zp2lwXOf2ZAv01YNQs1VMsRkPD6d8VIu9JnxpWzFC5J2OoBVx/7OtrYNbhp4XTiWi2rJCnfxmZ/CVgMJP5dvSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753391395; c=relaxed/simple;
	bh=SdLhsiO6cJHtXXTgugH5m/unEag8fQJHeMZinjnj3Oo=;
	h=To:Subject:From:Message-Id:Date; b=qqXZ3sxdc2y3lB/RSbaxW4gllCaxD7V6VXaJ7pzETnv84e0M6MkuEUFY59JytgwYWTYiVrBwgTmvNKhplTejE14sgHMqAcmzGcClAiLAz47JPrjPTpqkX22pnrIG2sAVO6sWGgvfj4YVSPQhVoC58Uq9Rk0NiLf7UH6dnbNb5jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8NlVsrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8NlVsrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753391393;
	bh=SdLhsiO6cJHtXXTgugH5m/unEag8fQJHeMZinjnj3Oo=;
	h=To:Subject:From:Date:From;
	b=N8NlVsrwJPbhdTa4o4hw0LgLgMz8YYxVBSuPxwiqVO1yf6QRSlclK69WwEVOYMiHi
	 9Gr+ML9gr8G3aYERWGBTMjl/emgXhlFS8/pCQRokpoW5IBWF9ecVEcaQGAACUzzGuD
	 bWMaGsb5bEAfgz/nbD8poaodHii1xexOBV0JRxxkskXCwujuvOTbf00eO2JRKATBpI
	 kehT3wQSpOSupuR6A8pssVFSE/EsBF+O9AUW2U1/TgYXEAZ0HQoZXHiZALRvBdUw1d
	 mux5X/uvhU0r2180Aa2USKre5yjmMmYCXSKL45gTSigBdIC0vgVshKyB0MWvBWuqe3
	 BsGceZVxiqRJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2EC87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339139358.25244.18260597352644878360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80283742ece6d73b153dd409dacc73fe9fc331af294a221bfe5449de3831a3f1
Date: Thu, 24 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753391393
