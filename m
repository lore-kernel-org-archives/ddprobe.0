Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299F0186E2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752850194; cv=none; b=Yd95yqub4mVmjOk6nwhpxY5UaQdelH6QoR+GDflJTr+dqTscCf3hIJjDb3S3sjKkylawVo99R20si/oR1eKseJyRpaJp1RcJBXIMUP4JzoQ5fDq7b6F6iLqIsNy7M5p7/6CjujqFv50tbVVdWrF0J+hZKLFHQEwYRtI3Biqpsj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752850194; c=relaxed/simple;
	bh=0FRlJaRpH4gxPzByah2Yxmnmg2bPWAz4zjrOeufBoh4=;
	h=To:Subject:From:Message-Id:Date; b=VD1hn0DNvk/Ca+oZ8ibbqTyvaiKS704CzYG6awVIwWaYGAIYDiewH4SFEsMLm4M8muNSfHG+L2hqaeOvTXZH5zmLsBHEZEA2eejraEsXyPHuYq1EzjK8a3VuQUkyXw9Ynb+/dasO+6IJozK4o1+K666nWLJ+guJ9ip4DoMaZwoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZI2rcvaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZI2rcvaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A323CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752850193;
	bh=0FRlJaRpH4gxPzByah2Yxmnmg2bPWAz4zjrOeufBoh4=;
	h=To:Subject:From:Date:From;
	b=ZI2rcvaWlfF/zpmrreffLJdIxtwhB/9J3VIP33O/j7zA9i5Y/y0xqEZ6vNbkkndPM
	 8l+h85BzlwuqXnQiZXbHHUoS9oPjveXLnSR+QFBgqK9SFIfRCHP/VHcURuJf6G948L
	 9or/iUlFXdF9NGEmV3qpo+OyojHdneIfTq7fGfATTdwZYhcSYkDObsplX/xs/csw4f
	 UEgg2VihRVbce0UVRKA/L0pSZZKTZlrdfPGkhe7Lul62LVwgsTeXpKjPKOGaSr/Cq2
	 0eIYb8SRoefRmamfSnDo03HAlc129dFhwvwp0NvGTpdabgadTzTNtvKfHHL8GCs8FD
	 lc0FEhtu6ctHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905FAC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285019358.21233.10870766733029658183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ff271dee342e94e30532c2ce71ad91c9bc80d2b59a79f1e1ca1db3404115cc
Date: Fri, 18 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752850193
