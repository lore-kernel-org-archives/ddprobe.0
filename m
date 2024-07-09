Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6638B3D967
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720545983; cv=none; b=NIFOxqEryYPfhrjGoOVe7VEQZg1rx0yHobnYyaEnYNZMpy3y9x36B+1P/N2RWuo8gwr2SdDcwy6PA8Es3iN2mqGMd2hV/Ub7OlYHIbhKzCXMmSooD81014ueE9Ro9l5IgMR9lk5Ito5RwIRxhBajuxeQCyAsyiipw8CUKuWlFyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720545983; c=relaxed/simple;
	bh=BNon+v5QFtid2655JeFTFkNUDNgCrFWm8VqIdOSauoQ=;
	h=To:Subject:From:Message-Id:Date; b=BCQDdpreFqqwgJ4Gy0AVwJknElFRx/TTRW7zoV18yE8D9Xe1E6d9PxF5T/9SCMrnU9LR8I/pZd6Z0vhKIWEfa97Ym143VTCUrY7Wusp+GvlAKD6/UdPtkIiKgKllzMcXwrWgCBSq1c4/QeTsQntI2nxDZSvTyBeRaFPY6imb6Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNP9NFCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNP9NFCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB075C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720545983;
	bh=BNon+v5QFtid2655JeFTFkNUDNgCrFWm8VqIdOSauoQ=;
	h=To:Subject:From:Date:From;
	b=mNP9NFCu2qYLz7YK3R3dXQKvZ1JIhzpJpZZbuh6s61EDpO7BKsltLDEJLaJMn9UE6
	 ierlC9eTzaZRDGvIwDdWkM9pJtLkSQ1Sw423KyMZGPFaXbw9E60Ku6QKhtdu4XEJPD
	 vHiwPhtz6Fyfrdm7Fu5YjTPDl6MzO15tt23RdRByT387QdUU76nx6LRTa+A/Q19NXE
	 dcxsc/s8qE+Ot6REqDiiPQmUiyUageAtv++xHovczuYNq7SzQyonc0xnY/gnsRItC2
	 9bvHeEEPxS96D/d685glc26uOMGqfw3r4/AsK8HG4QE4lu8Sv9l4pLY+XN40IaWd1g
	 7Qy2GA6SCQlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D04C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054598280.20530.14897669379617175195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2363b91630aa1216d80c7635b5e8c613285c8d5b0fecaab0fb597099efb35f
Date: Tue, 09 Jul 2024 17:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720545982
