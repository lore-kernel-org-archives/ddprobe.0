Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4931E30B502
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783889314; cv=none; b=Zap7V1Yz+3YCi+Et8XOjBK2fkmF8YrJWmtEYfpavmqz1v3U6UZn3en8ouYX43Grs7Eykz4pm9fxl2uB/l0aP7L78OWv3+NH2gtQZrZml/F3+p4Hfq/sN+Qs+pbC/49fxttOKpXPxAe4f3KE8MDjYMKV+WWCnC6D2S15zfnt1RHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783889314; c=relaxed/simple;
	bh=cmYIOxqocreqPP02g7mx4g70V5B/sYv1aLpr5OP5oIg=;
	h=To:Subject:From:Message-Id:Date; b=lFtpDK0y9csTVrtaSlbENYOLYs1lx3m2w5hdTIGf+zSUWJ2etchML2oUFfbB8v/+vRKK1EBhSb2USXqbBt/jEz8JYAnPTgfj1eXgODNfWCWCvWaLcL3GJmYruyuv7eNG2Phjhnftejiu+k7bnqr6EY3uLxOR2dkAOv7u96mntzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al4eQGek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al4eQGek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0661C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783889313;
	bh=cmYIOxqocreqPP02g7mx4g70V5B/sYv1aLpr5OP5oIg=;
	h=To:Subject:From:Date:From;
	b=al4eQGekGhZQ6oJrpy7+Nas6jHq4g58s8kT6LZOm4H/hionwR8lCovXBS43w8Dx9X
	 5FmQUGrFCCiOM91vpgHk5+jGD6GDy8CXkTGFoVVPry/vGZvSYPubDVE+71ztdR80Sn
	 jMjcjIQou5vXFHwjhZqMF+mjrmZOrl5bqfS722cD2CbX4dvP/qu0UO+gnAa5ueZQwv
	 AKRwV5GKKSgUDj+hZ8J2gGu73av4xP5mGDQmtB9/k6+EyropMtuNvTpZhnS77oxjl/
	 EZUKB2kZTMeKJFii0j4xbbGCLgLR5ZxZR/k2FQDqDMKY2DZhtqQKgqeTsiaEZ4LeTL
	 0P7PgeoZsx5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8A9C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388931368.795.4768285870643305927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157fe584626695c71ce3d27472c549509c72cffda71df7cfb0bc2b06c0c37d17
Date: Sun, 12 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783889313
