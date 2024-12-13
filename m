Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CF01B414B
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734088553; cv=none; b=I4CB3y6P969T9oTwb85/zhi6eVdHWDa2ErV6u0H5CKJ4Mx6M+CQ8+F2dyRQrnDZbZvIi1ZsEvB4ftEzx2q01idrNny3zQPNO5piV/2B1KgNeBMIdA1YHaNIe1znXDuj1dCpGpqwFwqpcX2/rsa6H6afQ9/uSKMaPikE2FunsIJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734088553; c=relaxed/simple;
	bh=e1yvO9YC5T86yKfMNv520zNJjx5w7/03BqnRzhYodW8=;
	h=To:Subject:From:Message-Id:Date; b=XW+GqNlybKe9L47Nkb4R+oyHpC9Q4/akc6IwxJ6shtFwdcfw4AgMhh/HvK4bj3tXvDaZKmvpAg40objwc68yxNKOzfYTOtPFljPTYsdwMX1w9zwv6n6+EXyZCQvF/Us2IRas/O6Nfta5uVPmrZpaZPVF62QSi0DtWU9iYxBXenw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N18gCVoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N18gCVoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8056C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734088553;
	bh=e1yvO9YC5T86yKfMNv520zNJjx5w7/03BqnRzhYodW8=;
	h=To:Subject:From:Date:From;
	b=N18gCVoPMKv9QVIf2etMXxBDMKgfz5k24nQu7UA22YV8+pHuHarcdOoPj6oPoRhMs
	 +cAdOUD57Mj+br3/msrioXE14fQmz8xY/AKUy/3kX1AHx0Hx/XUvJAXAbWPFJPRZWU
	 4AyOf60/N25x1UVVeJZKu9HadOdTCFmsbYIVBmbLKWxSI6FxMosXz4C02zNN3woLVC
	 5u4EClKzrNLTSvlvNhDP64mQcKTYnBSaZ3LQ57MMyg/rhosw46AuLag7030Ixrdb+y
	 Zq+o7Kd6EtycnLWaL+AfIDPhhgVXDXzc0QewV1ibGnDDiYVjEEvTnbr1cV3PKroHup
	 kFGN+6h1fvNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9846EE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408855361.28312.2760937429037327120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa7422f1946ec53019984d4d5903380e126ab1939dd7fe281f8299d2df6855f
Date: Fri, 13 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734088553
