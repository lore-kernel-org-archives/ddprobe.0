Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537BD134432
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713110963; cv=none; b=rWQh5Uar6ezxuQwCkNM/rVluutJjUzQ2D394rTg74NH0x3e1eR/lFlZQzUayC12bsHZQCsl9QW98GarYuaZb+JEPmrla0tNCcTSFRLoXvFAKS8pg8vjt5t7Ul+X0CHfMKGMpsvADsrlhktXWjrMpkthfq4hEe419kg/q0JI1GLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713110963; c=relaxed/simple;
	bh=8dG9WYevyIUAE/i4YrtleFEiaAVB9ksJPFVLLpVbpkQ=;
	h=To:Subject:From:Message-Id:Date; b=khxlhcsyIf83t+wAh339zZV/wiBlCi90ija50XvbBj7CM0oZVBB0bElK8tprfmmN31CtQtgq7+n0OZsl99SSaUSsynjl2wMt8cqjZNVJ0OwpCG2+hpBEl6/LBnrHDuTPt54gkSGMpGmJKeeKyeaMIdWttcFw9W5udBAHatemUMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3dZZMrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3dZZMrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93F2C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713110962;
	bh=8dG9WYevyIUAE/i4YrtleFEiaAVB9ksJPFVLLpVbpkQ=;
	h=To:Subject:From:Date:From;
	b=D3dZZMrLSDHBdPdJ1d0tMhBRD4zQmQxoM1SrQQjQTv/bC4wDJ1f2G152i2XNlTDf7
	 bsdU9gYLN7LvZaCaQnSB3D0yONrFL+y6o6vMi0GzeCDdK5pXpcre+Fo86cizrAjir3
	 qXmLnnxpAlBNvImjO3+jpR7h5+MF5XrsL9qEBc5IStO0nVGWcCL7zLEvkvTi6aFPL0
	 9H7ajt0YnGg2H4sx6zxxQ75582O5YmLZwz46zB3Rfk/6c2sJPeLrnlCfYFVLLTGHEM
	 JEGxZYRwfaakZyEkuyJMPd83GZf+8w/q/B441j2PubWazQJ2NbdyfoMdQBWmHYlib1
	 1APl7UzWv6UgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FA6C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311096280.12826.10814728696988159751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0bb6334844a12bcaaf86b4136e7ddbd3ca42a283e224c465dbcda58da0b5e8
Date: Sun, 14 Apr 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713110962
