Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6214E44377
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714225943; cv=none; b=Ex57VQDnecH9G/2sLw6R93Y1nn2JpHMQkmuDo5YArI3ElhnjVDlAvcDG6Q21SiLvJqguMDpuIkn5XxkOb3hPO/0v+W8EOJQAkb2ow1nBlMqVVlOCudXoa+1IWNN9rzo0bT621cha/Xm1Si+NgnCE0xfGM4kKt859Z2r5EJdRWfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714225943; c=relaxed/simple;
	bh=a/jhm1G0nqlH9WZdp9b+7nPB/gjAU6DRejCCTWaAfp8=;
	h=To:Subject:From:Message-Id:Date; b=RqI1pL602XiAvmg4N2sl6Ldi4PWbXkQfFLbZ2grojch5bRICjEKPI7sYrv9Jnovaf6HdAXVjW3dxEceilyPviazgqwnzrr7Sbhf7buYZxjEIN8FDcKrR996GSXPR8AynPwXIcyfTCns3aaws7q5CknUxQWASdqTYKJRc7IrKpHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTqSOiN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTqSOiN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48B7C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714225942;
	bh=a/jhm1G0nqlH9WZdp9b+7nPB/gjAU6DRejCCTWaAfp8=;
	h=To:Subject:From:Date:From;
	b=qTqSOiN5kmP/b0C7zVLegNhdm+bWYYVGRsEjY+Ax20liHsfYqyu6tzb+nzpjNFRsr
	 wkmPrP0UgKdd1tYgeuOxktzvZ6Fme48zmd2EHpnoRSQRNEWXypU3dZOqh1uEDe0o2l
	 1SGSHVGH/KXKSCMjRRt4j8Tdar7ONG+qlQ4d6MfikMii+NWuV4Bi7E02DefVKSPdNu
	 j16nel/RTCwSlaeGy58ydBU1ttM8MgbIIqZcF7XnnMBW7HCNNCdnocgzzmjtgFFbQA
	 elvyM9/4Ji7cahGjRK/lOfMZVqpgQMarDuMQf8elxFtI/CVFG3PE1RMFMKFCVmthmI
	 lrSpr6AGzLmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA15C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422594276.15459.6191201428576852052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97338a7618ffb0b90d1f50d00707462a4de5a73af13a9f7beb70f8f2408e97ef
Date: Sat, 27 Apr 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714225942
