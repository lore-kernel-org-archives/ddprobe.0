Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A33635DA49
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780922074; cv=none; b=Lr01qfOnh2PqfErts2HRUgBKSS1b4viQywo605DaSdouhha9mQUWcM4mnmFJjXlFPDTO6DMFAPUoUEU1PZ6+M8y9OZDZvteOz+Ly0qRXno2ZvYZMP7SKyrL3n9QmcgHzzuMy7EqsJfDvKV2Q26vKzKw2YIXOvuSN0XLbekzhKlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780922074; c=relaxed/simple;
	bh=wdthbrnPLzkuqoLeN38UCdrcZnpUtcyPAtO9J0A0GME=;
	h=To:Subject:From:Message-Id:Date; b=baiS/iIwQkzaBq2Tiu+2loqGMAOmzzN309Hc2HfkFbK1ueJfzT7uVvVQGIsbgzjkFY0lNLdXOICDEkMn7N7me310d+2NTeJr77J4d7iJQDbSu3VbfXFOtRzJcp+LAONF/5ounGlo63Atpk3hsGs1iAV5bfinwA6RiLSveW+j+wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCQlxMoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCQlxMoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35B7C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780922073;
	bh=wdthbrnPLzkuqoLeN38UCdrcZnpUtcyPAtO9J0A0GME=;
	h=To:Subject:From:Date:From;
	b=NCQlxMoXbCHzANtRRBf/x76foDbtFozFTlBWqR78arKsUmk6bYEpqA5NcNEKvPTVJ
	 ZbxWsYCGFhq2XTn97rIQegThAR1Yl+DAerECACguga3aPxNgG/kU0JVrgEj1bAfcRj
	 GLRIYJhYwPrIkRuL9eDVJUsSRth1HmIzkk6ixYxeMcxRNExqDwtHOoL3iahpnw1+61
	 ly3deeoZ8b4s0WfMZsq5mVGBXw40Hd2ep+5ABPCLQznaOtnTPZqeAB+SLoac9gj2Qh
	 lKoPldHLsztT8xCqOTO8xWjW4ChS3X4Pk7byU/7zWaoRgUjj8buWPSkIQ2XRk5ppvY
	 Z3LjvHnWsdbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B7CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092207368.8256.13491085861878610042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8858484a472dcc31548e802b7b1fefd2fcd888edd774f8a6cb518571881aecf
Date: Mon, 08 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780922073
