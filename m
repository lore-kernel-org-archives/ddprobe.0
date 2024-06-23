Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A99F65C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719180143; cv=none; b=qlp+44Bkvz24dxP905I44wP8AO4t4It0nuhZAnWmZ27pdI2cNQo0cfrQ4G2R6SgM0dxTIZHFE5au8ftcI9edPdB1DYXEUBE9gBZ1JllqB8hXYyF6P1I5FHQ8H+ZqXJW9EuQq58v/Flnk04WmwAiLyEEIY0m/iann9DCaJXMoOU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719180143; c=relaxed/simple;
	bh=kSwJCB/WBIENjGwHDm0508iftrtlCdMSfAVGpLDP9DI=;
	h=To:Subject:From:Message-Id:Date; b=OTRzoIKGTM2nE+dL4bP2h0fRDoTyVrDuT1GujPZZlG5a1j/tu7QgNVyn6Ni8Kz6iyz6veAml4b2b7wybwmx+Y/D+acVem01+jm+T2Nw6kYeJeT8WTcHW8R2eVnWMd+cEC32IyKb2ibH4Q1X2yvCs61KeI8nEzVLbZeuIWQnBOT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1WHqJ+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1WHqJ+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E710AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719180142;
	bh=kSwJCB/WBIENjGwHDm0508iftrtlCdMSfAVGpLDP9DI=;
	h=To:Subject:From:Date:From;
	b=d1WHqJ+DDGMjtZWu2XaqC6rgfGsugZSonpV87jzyVn7ANXnPHcb1MyyCXA1w21fhU
	 mpKSffbY6nz+LIR2Btr2QYu3l13ykfLrRwCLyp3XyvtGrFrb3KufaI9ZUl1JJKedyV
	 bviDLN66ckmbUJHs9IgEL6KCl3SsAdz9gJ4xvREAvCLq9s8+8iNXsrjUGmwA86QMjy
	 rzrs44UkqPsbSDNYuDJ3inhvkql+usOy4o1R/uPIAd+TCUadGlLBf77q8Yx9Lch/QR
	 g1O758zLPaK/M+zCudzv2oRYDo1Cf8Di2z1KEtsyG+UBJsnpmcVqwXe0qqXLHP+8/y
	 S5yQmWh+Z6cFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D173AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918014285.16012.2801828147606154491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfd30f727dbe780cb2d03f7a1cd339d7df3187d406e70d288f22d820e71eed5
Date: Sun, 23 Jun 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719180142
