Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2954174C
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714772543; cv=none; b=bcZxDm4LJcVLWTcxIOSaESRF6BEIe0vCQeHTWQXTxh9ZJq0rmQhRCtxX5+RYoYMpwN8xZu7e7PwtSQ5D9ETwz/qPlMv/E0lHfxG7jLF4TX8v6Qte+OPICTDR4dcGaKNcDjXi0fPtOXF7LXf7cRWg2sDI2baGVT7E8jpE0wN8s1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714772543; c=relaxed/simple;
	bh=j4vl37kY696THCXM9ZzI7m/aNJV1l/dDRXYDR9rLWE4=;
	h=To:Subject:From:Message-Id:Date; b=sA3r20I2cnHuHgB7+5dIDIuwM+iurpt6zpLd4/0aQ9c5MqNY81OOnCn6BP8xkpO9/ATGi/yA2tG2pOwupV0aeqPLyT0+EA/b12xAP4WREd5SOootYfgc+06GNhvcF13+DeUQrM4GFItL1QH73MnbPgMGYipwWs+wzv40oj0gMqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSsp268s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSsp268s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E71C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714772542;
	bh=j4vl37kY696THCXM9ZzI7m/aNJV1l/dDRXYDR9rLWE4=;
	h=To:Subject:From:Date:From;
	b=VSsp268soswKEV1OQ/d74ZkQfanZgSY+SAGo9KZ3TWK/N5A+wZCgTNLVRPjlSgPD2
	 z4taMMXCfZSo75L/bPMi7TWlCfIHuIt9Et6R4YHKXTbd2d7Zr6oU31tXr0pukd5/vz
	 akCrmPBgTDEi5N2AoJpDVm//pIc2woNEtCBKZEuEuKSiNcyNBCAbczikXpo396u56E
	 5EJuWOZ+L1KpMmBpcmZ7uyqoJKpsUYhSAU5h+64VKtRQVa7CVZNYaIwAHgtneluc9B
	 MSwm7E0L8QScES928HyNfnAVOFKmokE6SlASGYws/X3M9rl6DkyUYARp0T8DsuTQp7
	 Uf6WEOz1tFpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF50CC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477254277.18916.4505577910718700705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c28156f417c225d415e02eb6e409d3a94c973ca209a4d72c8f3fbb733dee941
Date: Fri, 03 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714772542
