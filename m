Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A881A5BA6
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744853995; cv=none; b=AR5QI70FTh1/KMSfsQMo4hOzQQh0eTm442sdk70GkatkpaVnsD2mxwVVEu9pEhdI+D/xgY9w4kEEEMi+bwT5mgEN9yRUaH+HaVmg7Vrpj4QY82khQNnl0gQRi1VLnttbzbdrjXF3DLLlCO8cLStNIogSN8muiPnLNlZD1BPEQ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744853995; c=relaxed/simple;
	bh=loK0AtRLlRQg9fs2ubBUPhXPDPh3ZiJBK0miBol647E=;
	h=To:Subject:From:Message-Id:Date; b=IpwCfVcqQFgBvcijx7sgjoglPDAzKt+sMbg5ARY5aHP8CNocgdkcR8rOF2P+IZ+rJajzIz6XO/ANfnDDZgDmTLo66cOI+bP7RshoasoCBtWsv+AScEP9+TFRT1sEVPhBnqI5HZn/nnoqEyqJpkwSmjrZtupuVTRvxBTR6He27Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WINqAGLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WINqAGLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7CBC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744853993;
	bh=loK0AtRLlRQg9fs2ubBUPhXPDPh3ZiJBK0miBol647E=;
	h=To:Subject:From:Date:From;
	b=WINqAGLxN19u7H69LklfidC6JN6nr0UdEHAkJI/RLMe90SyEcijEE9vxoPoXOxebF
	 1FhBH8qEK42JPdxfwnLtN58wvhspRjA0Znk9md//Smi4aZS9nGSGRyM+F2Fj0DJD49
	 7DNSj40YiGqd7J9+Xi8cjkS0uLG2g8oabw/6Ez8VUjs6cXZ4IwzjMlyYEbSnZ0G+35
	 93MWvCOy+Wb6jOPMhDjns1SRT08L3QXL9gdq9BVL5VQgMY1Ptekldjr7INnezlNKpC
	 9Z8sVfqPh1l7yaE4cdVvW6G8R1SMwUJKg6RLvUV/MH0Fnxp6kDMHz7kQx+uq0oa3M5
	 V5NejJf+terlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A2BC369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485399360.17692.1469550933699013871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a58308ce5be3671c04ce68e734e05f39ba0bf88ab5d9b544adf15b358bba5cd
Date: Thu, 17 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744853993
