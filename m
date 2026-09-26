Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D25B347BDC
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790410834; cv=none; b=cEjeYeEeMO9ybnYHTMcsFBVn2tnenWxlGsRaxX6yolh2F1F/qWMYIYOpc3+3AhXjPgwTvdMHayRPNq8KFK4R3Prp72o1AlTXt3S5jsesgbI3+ddOACSQhpW0b6dfFpk/rVomDST4oi830Gs1rsF33EslBylO/D0JfjDySMBSaiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790410834; c=relaxed/simple;
	bh=YRbh3yhTyaehki7679jZlG7Nrstk7CDCNB46ay1tdoM=;
	h=To:Subject:From:Message-Id:Date; b=EJnmq69xZkwA+hB1xU3V4JJTLpwQVxBbd7A9okLYgT7oxgZ9fUgnxu2fbQwZ29p5vtjdA4WzxmqdNgq20tky1KXzxk8iUnC1o8GebAoKzdXtonS3HxMXXWnB3Zs9bOfE7IDzPuipQMWA4rXFml7+tN82zp20zRRHKtSAh+RpDqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL+NCDQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL+NCDQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD824C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790410833;
	bh=YRbh3yhTyaehki7679jZlG7Nrstk7CDCNB46ay1tdoM=;
	h=To:Subject:From:Date:From;
	b=LL+NCDQ07ZE1GuS5dPWLw4Ax5qoTtIOWv3l0rdGw3N1wM7xoGLAODwmZ3SLNUi16F
	 q4IyyVz1IZqpieoLek6QHn/wFh26hwPzo2qEBps48HxdqQSFWOEclXtMDODHoDQ0HM
	 wmqua6RsGi1lDMrmAOkdC41O+iLDxTNDJfO5NG+s5qta8VtA8bovzUvLTW7kDqfrEs
	 TLPUbOOG+Z+6fvCSxq+6vZ8gtKWOFDUxhRWTbYrsWzGEZH+6e1GybbW0W3Mfq6P5kP
	 oaQHj7Zvit6faMwHTLHe8TDAqYttItzxnY/r8BOd/Q/YI3aaOePq3NyKbIlhyqfX1M
	 jPgVHZ1g42kZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F9C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041083369.5549.15863749821992562177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236ba681003e2659f02549ab8cf8e946a69bf6df0c8163df54e511b8364b8122
Date: Sat, 26 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790410833
