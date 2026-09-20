Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4317830F7FA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789866634; cv=none; b=sV5kn73AxEnUY/uiQ2jJ+rEoW/18VZoVgm+8k5c3PQVip12yAaEaM5NkU/7zATPHQgaNlb0MKHG/xQO0NWjszF3+KRh/H4WR3j3VjGTs9aW4jVCtzFRGb2cDGHNYStqI0su7P3kNttw9YNtV9YyHZxOYmQigrzIcSmsxzYhYsZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789866634; c=relaxed/simple;
	bh=UWokNChQoh4BVJ2TgGEyybueAtssmBshZ4M09Gu3bwQ=;
	h=To:Subject:From:Message-Id:Date; b=ghzM7tXEQfxYxywji6w4rknoTmN/P8nAbkMO30h2wbKgMCbl0TzpK8EcgukzkaX/lqQ/TGaLYCeM46OtS3uFIQNByaTz2UDq/dViQ5oj7LMvIwWjbFV8xDOJnll2iAb82hF9+JnM4hh4jKb2NAQGtvfRDLlEAh1Gm7l6F1U8ko8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzAyW/Ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzAyW/Ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9CBC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789866633;
	bh=UWokNChQoh4BVJ2TgGEyybueAtssmBshZ4M09Gu3bwQ=;
	h=To:Subject:From:Date:From;
	b=QzAyW/Ai3cT6KsDqHBDE69VaT5xLgPIafJmqCX0AEnKgB4PkSM96+2X70Wo2BY+dd
	 pWA9f3tAcALkXrmpmU177csNoQnqMlCZ7sUjAUetCAY8ztIbTMpM/I5fPgmimtqkYL
	 +ALjHgz9CNYlCFnmfAR2InRpxqO6YkK3yLYWMp7HB0J0qjLInDf9US/28CZoElYRJq
	 kWm/loYqlh8jMBrsLxuLliZIaMnI12CrQD1oKYyVq/bFWukKsG4XNM1svj/GOMaEGO
	 UJi0vpuo/Wax5a53zSg2r9R10p1Wlvt9lXlaPHaw0ROlVp8r6jhwlTnA+4UfaafeoU
	 Ehi1QYMAl0x8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCCCC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986663368.24654.11674749731360773503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a41f39802bf619264270d2289aedd6688e6f1af3692bfd3e42d2e5a915f6361
Date: Sun, 20 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789866633
