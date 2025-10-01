Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241421BDCF
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759321194; cv=none; b=Cnp+YGOKOzEyrl4bbF9KtWxXbsrG06Zh9kPvtekp7lkIlYA6L3KELUFoSFdbj6CnK9C9qSx2jAqaI1Pi22QFvADcbecuT0cZXG+oHjzZnB+hMbmkIyOjxLi84hkg9CnrpVW4BRDavUO7+nvcgKTsFPwQAEUo/jiX6YkqJf6m/Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759321194; c=relaxed/simple;
	bh=DTJKWxS1JHhXvoa4XuEEV04qXIEssd3e3gqZxAZs6Sc=;
	h=To:Subject:From:Message-Id:Date; b=jiyZWiQJ+cfcunkg3RLUS2IiQmbGBgwDR6lDrRKeqqbVkftm1fZT8J6aSe34dnILjvPp0PpSuU7celpd8kERBtpdf11+BBBZvslIL+KRba2OUG4tnwaDTBrRATsGttTCf6gUeWbUtydvWFa0i67xEiXCqF3w4cVWSNeunNG9dyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIgteEJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIgteEJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160AC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759321193;
	bh=DTJKWxS1JHhXvoa4XuEEV04qXIEssd3e3gqZxAZs6Sc=;
	h=To:Subject:From:Date:From;
	b=iIgteEJSdvRULOjHkihqHKAnT1EOhlGLHRRDLHMsKx/4VDv5iHbMuqMd2SULrHF1b
	 2IufjBPiKzB8UhV4R9OyfW20t9q4qcTd11VIxdGdYThvzec3dy/BWvfuowPP75P3SU
	 TKdK/iFdi+pascbz+j0h/ZbPiLLPjSsiyLcKDJt5m3ImD3BbhKlmGXwosGGmmYW95S
	 ASVfh1O8m8fovW9R/txyCuZEiqiahSlmfxroWlGh/P8PfP3HotoGnOS8MuPIdSYGHT
	 8F5nqwFfsmn5lRk8o5V4b2uotkc5gWYUYd/we363kco62QIB9WDVugTQ0KS7fJ1Pyq
	 +LIKnqgf2fQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E8CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932119358.18706.18360001057481196151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ee9e1127471585ef7aea568ee8e4743d3f84a2f811ff32dda50e738cffad3b
Date: Wed, 01 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759321193
