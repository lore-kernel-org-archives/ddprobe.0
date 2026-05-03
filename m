Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115EC3563E8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777774654; cv=none; b=r+fZp1JczhZgSVZLWouMei1VF1c6Z2776phZIrzRkdbYsK9UyJ7WY95iRNex9r23oBMKiRg03hhpjHjlHgazkrblbqCVOib2CUn1s6OfixxWc0jxOJD4/8XW4bpfzNMkMvV6S3UGmoV7MPi5c1Dk/iuhujKJ+CmA4PEJFcZu9xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777774654; c=relaxed/simple;
	bh=SRkpaOrM3kiOnx3a+zZ5PxlAR2a78/Qj21tHtLyViLA=;
	h=To:Subject:From:Message-Id:Date; b=iQfzNrBzc680RdpFlQOtZwPp9lq8+WnTE6xYMvPgMtf/vFKS/AchR6lLxba0yjR+DjruwqyUAF4wTSL6QGRZ9eRiB5KeZXAz+5Kl13Uu41vlLJE7dvsHvTg7rRf5ebXQN1wYxPoQ/9gbpk0dmMCOX0/X+8M0plYvIPjMhz3SNfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RN2Vjzne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RN2Vjzne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE69C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777774653;
	bh=SRkpaOrM3kiOnx3a+zZ5PxlAR2a78/Qj21tHtLyViLA=;
	h=To:Subject:From:Date:From;
	b=RN2VjzneATywXvL2FMgPFGeFwdxb8+DWrCq//IiFgQh/vtu8Ri4rzuxqDsRedv6LL
	 ZNZfG8X9vzIdoqB5wur97cc8vR10jOLiI6FZC8LlyiPrR/WCnyYTBwSCh+YyXuGab+
	 OFHx5gSe5E1kMbMj4czzq3umO3FH9p15zALdcgZbTGs5eP6k5hexWMhnUc5GdaNdVF
	 nx+3mtNksupiwZ/INbMDmPlsf459ciIpJ1rLfsu3YOM6WWyUqWr0FNH3dHTf02F0Pm
	 5/doqFNg7wE9dRTceA7sQSnzUcRqt/lkVs+u5fCC6T1ATpX24F0zdXJ/mS9a5Yz0+E
	 GCxY4zGd5h32w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAACACD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777465369.17955.2976987345483196748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79463b7d63137ee1e189824fc69a82fd34d56bd2619c84776bf38f616056c382
Date: Sun, 03 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777774653
