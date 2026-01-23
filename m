Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443E2C11D9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769157234; cv=none; b=XqKcP1/TZHZAQ323vm0orCLSL0aEO2LiSgeujsO4C/ZZycU9rp26gmn64ROgRcD8vNHMPVojcidKCQ4Qhfe+Xw3bI6t/f+dtjDRkMKj6/2CLiYs7H93eu1abiBGzkBAF3cjwX89kYzf2SxIQBkrrtRbisRhSzZw2/+2ifmTq6bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769157234; c=relaxed/simple;
	bh=ppsFgjy+0rcpj7TyTMgsqUiwdS7TgMjlm6RhubsdL70=;
	h=To:Subject:From:Message-Id:Date; b=oHFmrDXtXfykiueaWPb74tebHA5h3CWCWDPnWDSyNcPJapgsJHoF3SBeFbW+4kS+UVG5lebWKxQnks2tlaG1ktInC/XX9k14wh0mHetiXdnBLexPvUAz8LI3NePfpMxzkPPCY34Hk2RkbXHVWLx79v7Hb+xdWF8cHhbDmKj25ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6IY9rII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6IY9rII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769157233;
	bh=ppsFgjy+0rcpj7TyTMgsqUiwdS7TgMjlm6RhubsdL70=;
	h=To:Subject:From:Date:From;
	b=P6IY9rIIVoETLK6dCk7ncqFFGDT8IqWI+aetvYsQxy6Y1M42Ao9foxwK1YdrjeYhC
	 B1xfOHJkIqxbes5icreatiT+MEf0SNNT/hkfcrHNw8NVkn8hOANRq75OVS7f6K/rB3
	 U0viqmGlto/fLwAwaoZZet6bE2+/iZL5b0UC6V5+ZgvE3dwOW5LNyTwl1zeRYr7EMP
	 XW8nHb+bcHGFjuMmfirTBFz8C693e2atAIud/qFVRwBpV56dXnl8BjY+SGWHQIdxiJ
	 h9G9pMLhz1kOcKcNysW2P8JYY3Nb5ysAV6U42SIBVyKm1THwM+ODtoBEoii0JqlmBO
	 nSXeH26+wdvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D95D7234B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915723358.2708.13124502271468556189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550857b0ffeaec6fcab9af45c8e4c3aa65f56c0f7dcfc43137af20c864bc3f60
Date: Fri, 23 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769157233
