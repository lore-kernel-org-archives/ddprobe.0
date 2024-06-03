Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D891366
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717436123; cv=none; b=qyiLM3Fmo19fsKntYD5AHsrIsULQ2BEyO0q4v183jh0QHj/Cihh4aaiWhMMFN+3VM0CQDaHwxaAB9k+QkDg52xDFbjIE3f3kW3eiaMjhlHZdQZ+c3Y+yV+GJcAiQshcMSx2r1xcOR1Z560bIsK0QdZ5Zvqp5MsEEcMESWYidRnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717436123; c=relaxed/simple;
	bh=lv/LJuPWTPLN3OJsDR7lU3Sl4GTJ5Pzckdh+Yo1V/8Y=;
	h=To:Subject:From:Message-Id:Date; b=PSYqqJoUPEnvhTtLYkKEQsdaNmmocwV9MXXtxPMwYb4LGqFgkOLTCuwg90JsCCeeNH3bmj6V4C2eWwd1JMwh8W5IBbh7RAdS0B/bSgirPmPZqDcktZ1RWK1AljQIxe0Nz48yvfhh2MUUo2QxBXnyjpo++m8oWlxtBrPpP825iFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEMtxE4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEMtxE4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF3C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717436122;
	bh=lv/LJuPWTPLN3OJsDR7lU3Sl4GTJ5Pzckdh+Yo1V/8Y=;
	h=To:Subject:From:Date:From;
	b=eEMtxE4NFadGlbFIiyqeS+lM1fwemUzciM/hexxbl43XsgJ7amKxOjaY9VsJjmmwa
	 krkW9GQv8pZvbl18kuqQg6UgROt/MV7WPI9+fDsMcAO5WnwFP0iN7oO2SCTSJlvzjL
	 K6xTReCb3k9uqQfmwf3TFXRUKqYRTzznxLxG1lF8cnBdDsXDzsX2b5kZRzINWLSMvU
	 c1lHbpaCU18AKQgRSS/7AR6OkAB6UWzmbsCcaij3aLox4jLsdelUPL7Lcaby8qxrjK
	 jN21BalbTb/c+BJVgnQKPDKV3KQ159U72Z7T2U/TK/pq5jbRBZ/djn7tRpZotauMfY
	 CHhvEIV2C6zHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBCAC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743612276.15227.2614658412367991117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7454533035eec4c7aab31efec9dc3b8201611d3b1e7d6df8ca7b3932ceeab6
Date: Mon, 03 Jun 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717436122
