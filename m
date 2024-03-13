Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063CF385
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710289697; cv=none; b=pVo46pc2GVGpHHYYWPNxOvAEgyjl/tqns8DuY0tP28raplYMitM3douNNQAF1B8NTQdV+cKgrqXLepaXXPiEN1gUPTgAvS3IjcSLMODIo4OQxIEZU8cpwJ0I60kNHRZMB/8vlw41BEN6xctVmhbeA3clyWri2BzXQHPxGdtZ3EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710289697; c=relaxed/simple;
	bh=0tFsy+mkql/RSX5snTkwUT5JeA6BhgNNjGg067/hLl8=;
	h=To:Subject:From:Message-Id:Date; b=RZRe/wB03GyBnAe3dv1mVXMxJ2ldIFBVGOCzi5NODFN++fH0xWpSw/s4GJ1rfaMHIUg6TFTxuU5/4v9tfyRcaRPIz7gutW03GQ1hoMWTmq/+BbnRWR9bpCNtbqLaZeErXMZxXDWgTi5YUr4yBQXvac7DyQ94Gam5AMfvK6LjeHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLZyBmNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLZyBmNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF27C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710289696;
	bh=0tFsy+mkql/RSX5snTkwUT5JeA6BhgNNjGg067/hLl8=;
	h=To:Subject:From:Date:From;
	b=sLZyBmNRFh6wPtMPq2fcLIwMzVhfdzMCDFmKO+XcwkpmYmrvZjhlL/ski937C2a49
	 VZhueRvkipYOqQuesgNrjlpi1cFhI1uYXQ6AGpTUr8qPLMgxX9224MOy8RTOrj2b9J
	 +L8D8Z/EJG4RTxl2BVPEKeidp/cknjbshW3hDEiDqTb+bQ0EWRPhCLmBa0+xvOboxq
	 2E+spVNIhXTOQwDaiTqHUVsMP5mgd8eBtCO9exOGXZfXlGXKQHbeuG2CVD0h2j8G9X
	 +72YpvwylrsXiKZnAr6+qQc/mgimktL88ZAhJemyTQEFS1/TKGTbInD7QpsO1mf40O
	 BujbQRSdNGoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F94C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171028969636.10588.13845774265185758868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549817d9e568eb175914f776b45540e0051165f146e3a46244b1cd481a9a4123
Date: Wed, 13 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710289696
