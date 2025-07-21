Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8BB2222BB
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753132794; cv=none; b=KCMeoZjOTp3LHP0a1Cq77Mgt9dlDSdyqoOTT4zT1M9PqGVA1DAyphdyzuRYCasAWy9E/GmcmyxJDTVg6iPAraFlBCi2YXxqFXIP9jfIvuRxpDuwLGdgpEXXGVxZPtV5q7dqNYv9++lFekSvLQ6M6tkAH/VsDjbsGpMv7cSA57EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753132794; c=relaxed/simple;
	bh=xKs/xJ8FJFKsJEMFFlXYcorp/GWsM2p6yjZQ4pBqDLw=;
	h=To:Subject:From:Message-Id:Date; b=OUdw2VEL6WfKJvpcZD3xUIj15sHXuaKkcp5rQxEV6JwHjKZC3TTCY6rodwd3/CbxjO/z4DWn/3b93VTuHX14K/rGscU2hSFs6oMOROw7ZlmiQohgN2CVGqkSgGPQ709bHB0irj2xOQsQCwQShLwZ6Olordsx4KergTUniDv7ah4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeHgclBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeHgclBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28AAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753132793;
	bh=xKs/xJ8FJFKsJEMFFlXYcorp/GWsM2p6yjZQ4pBqDLw=;
	h=To:Subject:From:Date:From;
	b=TeHgclBS+J/nTahE3jppL2h2eFgz3lQN6k2yMsK/+gVLyxPYZwd1FwJV9uIYRAx9G
	 ymS69R14tOk2pfEIc9gGtjr9F2AlJBO6v6Bs3dWm2PKs1b34Ab/pEkVjEqge8FieI/
	 pYS6jW8WHJlrt14Gzg24Hyz9rtUIxsqqVoR+h5dgbgMJh4N29Us/yAoFis2jCpr1RO
	 zOFYH46UEmQ4pOCg5ncj2+fr508W1lvqiNZQKR75lGiz6Dqd4C0ch/KXA+Pw+iwpOQ
	 olkmnbWApiqhMkAtkTbA5b9gQ9z2f9FMLyWPCO2T9IBO0l0WnFua2pOpPXNnl6NwiO
	 DCUMsL9/OVtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D5C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313279358.15415.15691106921483028811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0722fa2d96981004e5200bd10b6696b45ae2cfaf634b0a53c5ae1c58f886926
Date: Mon, 21 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753132793
