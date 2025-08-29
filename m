Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209952F532E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756510794; cv=none; b=VvKTpmL3st/+7REgsOaahOErMyWdjHee2pbQv5U8hBZbd+nK+5Suitf0FQA6+b2yUUCyESwVE0xpe0xtbr67qEiT0Tf0MZLYSP0ilR4EE0XpKzVCKclfRTk2VvNTC1OCopmQtyWBpU5deIV6awpgQos4JKT7lt5A30DZ2OY2tEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756510794; c=relaxed/simple;
	bh=V9AjRyxgBFUtPGaPH3CM9zfPQIS1mjfdfYWgQOCk69M=;
	h=To:Subject:From:Message-Id:Date; b=kcR2ju6Fe8YhiCqUIw3+EUsewd4liX6eYfaDy7lsoibZ4kTFA6ZPl4/AN6y7yBqa7904rOlReme9nfuEZH6RvHAkBPvBi36gXut2FS0Hgcm8H/U6tJGrGgpwkqudnxkTF5kgr0w4b82OcpWj/qzcGjBVt5nAzFlWXRaXMc7ZRY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIFr7+eB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIFr7+eB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5669C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756510793;
	bh=V9AjRyxgBFUtPGaPH3CM9zfPQIS1mjfdfYWgQOCk69M=;
	h=To:Subject:From:Date:From;
	b=nIFr7+eBhKZr6AMp4aTdprxOqc6i4ZgnP0MfgkeuDIlzDiiJ9iVOPQNpzI90mf0SL
	 +lJarSbJoQFEtEbN2k8Jib73nJq8Yugd5GJpvWYIlMSFkyL3vDrZZIHBOEJYcftujO
	 Rukh/rqlVbgkQOTiw0JzGW/qMB3OZnLZ8H66oPKVHRZCB4vLBXHgnRg6Bp+4i6Jqay
	 edFMrxkaC8w0CcBYWzjsVqbDAHJuKa5iB11JoQL9eh7y63lru6CH/4SsuzhQqmaxFV
	 e7Y+zIl0ZU9qheDiLV5cmRX1LDMJFdKmmJmOaCT0UEJ5MKol20khR/bItgXeXu0vTO
	 40ISx2lQFILvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95135CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651079357.22661.11029355058565477645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2ec12a762eb1ebf6dce8db90394dd0748dc46e00b252add65003d351bc578a
Date: Fri, 29 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756510793
