Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9EB2D6E70
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568694; cv=none; b=dcLJasdtyZ84EfkAtje/Z9Sv22+KFXPwE3EFnLYtcN0vC30ny42zoThi+GOUbq7HarnqurIqQaz01+Nd4eUcXEAtzaD1dzETOMNm4Rk/D/DeH4+6Y+niL5mELAgxOhv46RiOFpIvw5WSEUPwFZffviQEumRVUPqXpUT0LMbgehY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568694; c=relaxed/simple;
	bh=aGa28R1q0p+ZhUEfh1bwD/pkO5mTou5/8U2e4Cej22c=;
	h=To:Subject:From:Message-Id:Date; b=t/Lxd2Hqh7d9OKT3D+7qlKTs4SzqtaagLwabpf298fZ+7VwO3LIJVdpFOWJpJ6eMTpYjTl+Dwmdpnaj6jBiwvVUGHqtcazMv+VcqQRz5p87Ga+iG9ZqgfTe0o7QSfrq9V5WECajvsCWQsLJ+4wDJoSxhFd78tnsZ16ed+f4NCAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeBE9XVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeBE9XVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A7C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771568693;
	bh=aGa28R1q0p+ZhUEfh1bwD/pkO5mTou5/8U2e4Cej22c=;
	h=To:Subject:From:Date:From;
	b=DeBE9XVHiNqx1qFoQkHgOXyGbyk1dKTDaMP6NOmnx9C8Sufc/f0sVOVWVFMecVNUs
	 eI5GQEx/VaeiVFtI9GAbCGUhWSaYXXUkfjpt+yxenXzmM4h75Zr90jBDwq84KTMCyS
	 oj41JhcfGZmejebjVNOXnP7DrBk/IRw+4tqbYE4fD97CC1fiZ4RglocHf15risx8mE
	 ZJJz4atW2iVazEOALBnO+pqtQjlbd7yJMKCfaSw0LvijdylvKRw228iuUfxnGOHQ4i
	 h/xlNAxrA54ReWAvzOmrxEmt1S2cgX2W5bcHyl+fjh226h5kEeeccC/oNWAbmtK6AQ
	 zasCqQbT+IqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA7C53216
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156869360.1867.11615310795222741954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfea6130474e4eef8560cb71f10cb4a04c6db2c147f9b9286478d9adde052772
Date: Fri, 20 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771568693
