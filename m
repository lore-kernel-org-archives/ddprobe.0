Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93D3CC7EB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783081114; cv=none; b=m/NjPh8pm2oeHE4qldNF2ukL9O6QkgwqO2QgUOLp3/cl/jmnYlF7xiF0VhcG2Hk+Se2Y0z22dwZvYHWLuGjxEURvqZ+a0RRn0F/VPiac/wFDSLQ7yyT3KAWCgaarX9lotDm69BLCTeo64c/61GDIHApNS3NaaQv7k6i1lmE7kpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783081114; c=relaxed/simple;
	bh=WIRO5HAS3Aak/879CHFQ+sttDtQoutviyTvNokZM68A=;
	h=To:Subject:From:Message-Id:Date; b=nJqVB20vm8Zd4sWDtQ2AdB+QNQtwHoL5dBjSCq1teqJ1FxcQ6a4axPKBoKb0hJTmzxUaNLwl4I4j8zXqQ9/3TIOkPFaL79tXoG6HKOpt9Hb1BewrCknFi6uoaxZs+xYd/wlILoP/HT1NmGlYJ1R4OBrBqsf7YZvYVOe5huxN8PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVcLriOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVcLriOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC59AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783081113;
	bh=WIRO5HAS3Aak/879CHFQ+sttDtQoutviyTvNokZM68A=;
	h=To:Subject:From:Date:From;
	b=aVcLriOqI2kx7FGn2/RPsAJCBpZj8RWSVDOvBsf6Tq40J3oFZM69EAzHmHULu03HF
	 Cdcoc1DUGdKPKGwb1M38mYcTn/40idHCqVk/Ewtn5af7k+m1FCdzynOyjHsFsfZtvZ
	 nU8rsTYLvjoMP7KZiKUNDgYZZr4DqwBoRj4n5IUsIe6u/xCn6Kko+TZSAsCpGH9LQf
	 Ur5ACY4yeXT+ZyPnekwI6pnJfyVo8Im9JRn/6Cptcc1EsXqgQndLS59SVJYdhmo3AB
	 ourUlPODxex5Yz1MBuXSca4sqrUOIg9KIlZAKaB8jEbxvCc+7mSQzzoFwZ1dcMPtD0
	 jNyNTcLJ3FJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9420C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308111368.14732.5514990658159687566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a357b83f753c510eb9e5d3ed4099e1ea8dcbbc086915eaf8c5e33e9e8f22861f
Date: Fri, 03 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783081113
