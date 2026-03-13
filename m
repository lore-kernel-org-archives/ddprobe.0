Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CFB29408
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773404694; cv=none; b=FxlUa25FxJIqn7yJIeZODL0Jw3XdDvkNOkBseO4yQCXBtwAHwP9jlKqcwfTbkc9BhPLNY/6KH4tllKFEml+2Q48bbAzU2Dq7GLWxUMg9US2qbmD2Tcwh3ffgFpy+d4rkHzAqRe69J64ZsmNzavoYEdkL5gSi1g4JXTu7yJYMIuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773404694; c=relaxed/simple;
	bh=+sy1vFBGaM6C6whhQlXXrpOoMpXio4JVThv7Oi4RsuU=;
	h=To:Subject:From:Message-Id:Date; b=T0fVx167xmMf+O23twJaBkDlhm2Kv1XOeOW945ikbjmGSQNVYDy+ynraMN6p3LAArjJAWRsyHDj6O6CsJ2YF2vfp9Xn8ysClEy/OsTFOBs4GTyci4zMWbewhzDq2mw+6dDQxHvSXT8dIkXSixiqfsI/7kbHhDVGOxLrQHa4ZTCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvbTrjem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvbTrjem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E1FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773404693;
	bh=+sy1vFBGaM6C6whhQlXXrpOoMpXio4JVThv7Oi4RsuU=;
	h=To:Subject:From:Date:From;
	b=pvbTrjemWsaOsniAq/d8LLCypu26mYqGqyT1pT0Ne4ezHgUs3xIG3t2nfKzvO5/om
	 vu/eFx2xM3JztVFR0R8O9Wf7SuX/MYcfKTxL7+M7r0JTuyKi5ImJy+XotBgY6Nq4Ms
	 5OU10fVU6zhvP6E6FzjJgWIrjuujcniSfj0Hj/Lt7AL386CKaeJKK7TzuPRR0GYHNX
	 28sd9J/YnITWiIJu9pATnOv4YRMJlmgJalKlqfUu/Xwggic7z1FUG3ykm2yZW/Xjzc
	 T9D+kv5dWuspJ2iV+1JGGChSPOb4iLbY3k0lUX9kZ4TD6DAYsVrFH4UqShq3DWoRZc
	 MYoBIXRwmuiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A3105F78C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340469358.12947.9320423486570922372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1854fd06ac4dfe71857350a86d378cd8796bc7639e7c12735cb1555f13b1bfb5
Date: Fri, 13 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773404693
