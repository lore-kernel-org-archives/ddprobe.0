Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2715C20EB
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728961554; cv=none; b=m/Z8LFXTBKO4HuGStf/BnnM38c1ykq1aBm1dlitXnT8zI2QtLGrC+5dJX9y9Qk4qvpvUdeaRBcX58XVuH8hQezCyh+RE6cPXS8OAmGvGwMPtwsGiO4NlbbPx6irQSJSJEQ/Nq7pYAR/dAs758KAR2CP0ZxEAmOImZVtAUvupoks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728961554; c=relaxed/simple;
	bh=ZL4Rl2ItYXZu/itIwLFYcAqTc4BprSvWN1pOvgjvD2c=;
	h=To:Subject:From:Message-Id:Date; b=MuV/82FGBO+SJbrk8opOadjha5/xg3IfJvCoVRIau+1AsOffc+4rTYCOPg2Ch/1isHbfOy6vp6A4zI3oFaHWmkxCmnVdDigOSyAsxBP00uEC7uv8Zthwu6JWP+LjoMxwLwrfCGfxCDPlS3byN+ur9BpONXhzDwrIpUsVQWio0Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp23oTn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp23oTn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03FBC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728961553;
	bh=ZL4Rl2ItYXZu/itIwLFYcAqTc4BprSvWN1pOvgjvD2c=;
	h=To:Subject:From:Date:From;
	b=Zp23oTn32NSiiz5ZpD90Dx8PdSnEEkLD6y9s6HRAEzG5fyAw0YBfHaCYZXOTPyX4X
	 LYvOve4UPMn+UqUKZS7fBYg9LnJugPSu35ofqdMJ9qbUvKs2H4GXsVeukeSlLqtfrd
	 GORHErrTVLeornr24Wv5J6aTxSlxcxGum2VqT2reyRlBPWXcdIRR1SyzQeqBR57dxf
	 ZPIdYGph4eAAlz6yOl9zvWdY0qmxx2mMYUG6/acvh6RStzy2k32KRBC4cHijp/NkVq
	 NRPRz7GyyDDutvDVXs8//VNinmVPHS6s65nJDrYfWxvQwClvCD7vDTL1cUoEjSi5xD
	 W39g5kX1WRysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C728D1814C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896155362.20239.3257769262977309820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2673c3767c40bbd975c6f700105270139a686072f5288c58ba42df4f6128171a
Date: Tue, 15 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728961553
