Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E2C384232
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781736994; cv=none; b=qR74SGJPFZz9HAwSrBSHVBM2j+ITzd/RirLj5L1ahAxLCpspAqvhNaGLKCvJRiZWMj75BN10oWDWR2SCCQm9lZArheonG0MG81PRQF7i/uiMt8hmn0DSx2w1IVGaR2/SJuSaZxq7A1jrY8FNml9V+lCYNq57vjbouwSGzDKQ3JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781736994; c=relaxed/simple;
	bh=Bq8zRQex855Omw/kmXKd8ePz45Ny1U020pDzsDGt4ow=;
	h=To:Subject:From:Message-Id:Date; b=aFSmAU0Ngq6erqRGPZGFHh43g7wxhXnpN8S1tQ9JiEd0s01i0Ud3w+UiSOEtX7S/EcXuU9zAI4ysee9nF1Jt6y6ys2iOQuijd6fqpkJHS69LVwI0jTcorMC3KbAGvXP3UFFmAuwec2cMKR4JH3JIPnaDDjoKOMkj3Yg5gF+v6PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjWL2NkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjWL2NkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C818BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781736993;
	bh=Bq8zRQex855Omw/kmXKd8ePz45Ny1U020pDzsDGt4ow=;
	h=To:Subject:From:Date:From;
	b=PjWL2NkAGewjvfeUP36A3sxPX4l3k3fDwTqt/0gimS31Hb6FbrU6KCPJ/fiFpzUZt
	 7NMD+W+7OnEO6IuO7r0CcawPaC/AFQIPYTppEzGF4QGHtRinqHV6AbiDbeOxssvy94
	 ylcajgeJLO9dfiqyFmL4u4wTQSXzVZ0EqSS/NEGZ2PLg/EdmiAefQea+PELWGpgEYS
	 Hgix0T1u3MYeT/I3uy0gnUbDK30wV+B4bgSH4Onz4d8eJRK+vlfZSVLk2bvDklT3bC
	 gpEokzTZ3s1xZjhI1IbrECneqzrNxRCfv/0EeIx5kvQh1caQq3paApuK6aKCXEzecS
	 gJ4uL1KCrWOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7DCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173699369.8744.12458717435527980693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a639530955876c44f3ddad9dd579b4099e4b35427d4ee1935ac38b1e6b1b476
Date: Wed, 17 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781736993
