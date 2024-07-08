Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6948A8C06
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720481783; cv=none; b=MkLeU3NvQQAvU/aZJfkm+X8liaAut1QKxO+walkK2z0biP31ImJu0PS/BwG0RlB5XefkDaJMpYBPdLga0T+7E3uSNiJjytNF2M4uS7bNecj9amrUelee9syQrxIEqAIC5HZm5XCWMo5mGU4w2hsWeeGtuTTgMzILRrVeB5e7Pqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720481783; c=relaxed/simple;
	bh=l5ae1K1InrYumd6lYbqsILn1/F9tbOld20vy9tdXC9A=;
	h=To:Subject:From:Message-Id:Date; b=CtIrO4+MFQeyGdUsUur9Ead1APRpsogAaN+3FvzXDw/hD8t+sunS5Ktmum7rOklgbdqNzySIvyoElb7ZCXy11uEh0mafkxGfOoK3SlO9KzxXrlyapglR59QYTDn33o5ZflGBbKDrb96VD0wiiT/oZX3XuUukdhXhX01GufgUbis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmpRsfre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmpRsfre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D23C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720481782;
	bh=l5ae1K1InrYumd6lYbqsILn1/F9tbOld20vy9tdXC9A=;
	h=To:Subject:From:Date:From;
	b=dmpRsfreenUzh+Iqm2e26mzNPh4XNuuxHSemmz2pMno/lKVEXrwixWfHbQPoX93C3
	 BH7gQQrjCBIEWuPQo006oEfhXxyLLR5eiHJ2ujawRlA66Opz8jhydOTMUlXr6bteT7
	 j/QHy4+mn4w1+QsqS0CVjhiQclZ1yx0l2n37cjJE+3g4DlE3Fw8wO0WnrnDlCY+6fd
	 6iSTYAWfnUcYm1Q2bn+EoLuvRWtcAA6nH9lxZXMoZpLAb1f5E8CgCGQwmkX/koZP0H
	 iM9FNuM31e5uwki1iE1XPluuvHJDO3oDmrRqrKE69g+eBzHGtCkspFi19sPrjNYk8a
	 /Lc/RyHiZw3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF74BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048178283.11597.9695556095875511674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd16f4bc0cc10dbe6868784ae13073dddc2eaa52e699e9689b7f1e632f5e5fe
Date: Mon, 08 Jul 2024 23:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720481782
