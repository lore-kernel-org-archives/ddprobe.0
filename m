Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DA81864C
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713984083; cv=none; b=LOwKqk7kTvPMg2ndQqMINEJRYrxUGWuidXR78lJ8rpcwqOWuz5aAsGYGMh81B7AU4cCaZKRi6R7SI9LST686MDtr2sS9C7ziEQWogClSGwYaPk1dI/qUKuPn6HJtmPfjVf5/KoWsIZmQdmzr2MZqxXXbc1euHY7mN1zTaLkqG4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713984083; c=relaxed/simple;
	bh=vyw3aFNl8UmqdsZQVo/9m6NsmZjaDDSGt+EJ3W6vy9o=;
	h=To:Subject:From:Message-Id:Date; b=tT8DolQ8K2Xe3cgaqz9pyHCyLOCRbUN8Mi2bP0bsB3qAFyVNIqsZLv1csZqQytkszaWFdGoD2IbLvasw8Xy6sRRWDJgQh8yDnr/0Uc5fEg/ZBLNFaVWN43wnQYezKUOtjg0Vn2SghcdmCKyOI0/5X2/Sc3Apa/xDjkgV2k2c+Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMNRgYTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMNRgYTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F07B2C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713984083;
	bh=vyw3aFNl8UmqdsZQVo/9m6NsmZjaDDSGt+EJ3W6vy9o=;
	h=To:Subject:From:Date:From;
	b=BMNRgYTd0AtGaamzMM6ju2ldkbNt9CYYzj0Ejn70jNgLo2J7rFgP9/G8oLkh1qhPg
	 XoAKtwY3K6fn13gB6KGi/xKDlODKYEjlZqBuH4FbIRtUH4h3kLcfjchzWGvJDz7KY1
	 eNyYb0Y0f76kiQ2ybmx5bFUDM6mAIFeVLsB6LhqWiTHoDeg85ALpdpDcoIBXDTpqe9
	 68FvqmISGgurPOcuCXca3uvraweLUc75n+/KU3uF1poE47E/Sp6bOanQox9Q60M9du
	 BaY3UZpwS/i5VwSDBEeOtTZesIixLQEBjEH5XAn4qFtdHDZZnet42Pt8PIVnfI70Yz
	 U2psG4+CSl1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D593DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398408279.16548.7898263992097273551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714e3c1a208520dcc243a6e02b8705314994a60eb97e037b839a17b026e89bec
Date: Wed, 24 Apr 2024 18:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713984082
