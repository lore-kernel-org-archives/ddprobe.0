Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39B57CA1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715772143; cv=none; b=Hd8SfAzYs/pJIWhurUa2Ugl/7H4iCxuEKjPnIW7QYTKCPxVSiMH+/ZvhjYzsT/EtsIn+4mzkrGPKoy3fECB0IzVztCKPxRAvq1p94+0FdVjevRTa4FvI1JeIz6gcOqfW8w3Xkj33Hm61YuWRjGvzx7Hsy2tSNphWr0GKsPlSPuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715772143; c=relaxed/simple;
	bh=K+pycWLwQSV1xA8NRZBADM+8OHJ8WKm8NBQPfN+jREE=;
	h=To:Subject:From:Message-Id:Date; b=BlRXIR9thnkRcnaN36aqq91EIf/2/9pUi7omrYJ/HRlBUav6rKgeIPJbyETRmd4+ggeT1xyTWeEgNw/Aeb4PCLYW2RkOCIPARDLD8OEawYOwYKLWEtuGdA63jA7LTTiDA+Kd1Hakrih7NUR7MwPE+B760titrGeNVZc1sYWfZik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFjjCY7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFjjCY7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD26EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715772142;
	bh=K+pycWLwQSV1xA8NRZBADM+8OHJ8WKm8NBQPfN+jREE=;
	h=To:Subject:From:Date:From;
	b=WFjjCY7f0r0ZtVMWOrZ5eocq1uUAEHKs/6XpgDcsN7/0VkhGfysJyAfIRi3nWUtNP
	 /u5VA5+WP8aa4ZoceH260GXMo0xhin75FtxddlF7v7jcg/ma1U2vK9AO83XVRmnTc+
	 3VO8QZluf01nGYn4E/SH5NsVALiVr3jzD+LXx5tSHJ1kmodFkSIwkuCUqQwJU1TI5R
	 W+mzv69M7sn/SIMjfsijBp/7KYbF5DJNsyutWEX9xVlLHPWw9gA+/ij4o/VVSbVsff
	 3q8+TqCkOEpmVeHiruvRUAS02RskA7kHfbWVHtA0/pMukTnVM2Lk+PAUaRQY5C3y2c
	 n4W2/1b6wSAMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC87CC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577214276.11392.5099053443993116901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d279e5aa3b19421615c5a1a1ebad974bc557e51134a2f2647e5dee6f9373cb76
Date: Wed, 15 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715772142
