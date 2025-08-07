Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339F37483
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754531994; cv=none; b=ft/WbI1VXtbp3NLYHh4ilD+m7yCfR9myDTIjcQfg7ggWKbkqLtA5JGg8ddQ19FSxLDVCt5xR6VdxTR+FeEpaHs6OqVNo1Nx4tJWI8pfk1xhwOpA7fHMvzabFZ/LCrVkob4RQez1WZMCENVXd17ocskCd2Ait36tSTzYYSKD+Bhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754531994; c=relaxed/simple;
	bh=CE35kIABPkcq076uW0GVSBlj8m4UIOUdgYNx1VNw4WA=;
	h=To:Subject:From:Message-Id:Date; b=TBDxbadx2KvM5cVa8w/Rg6b4vhl701fnHnyMXhZBM31zk4lV8lpvzck082lo27na/Gm69bZgbz+BO4XtaZ2yTv2BPiLQTu5sWHCgReV2gctyxEJmE3wInmETBMKezlTGeD+MYoHpnmdBqqWCQ1HT1D/xpeQsxGV9zymu5XNA1zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbtI6M0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbtI6M0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754531993;
	bh=CE35kIABPkcq076uW0GVSBlj8m4UIOUdgYNx1VNw4WA=;
	h=To:Subject:From:Date:From;
	b=lbtI6M0Q7e6NH4F4EioEmcbCippOWc24O7mGvzT17NwuiwqGT6k67VwEty8m1uWRr
	 xPKiMXJk/W6ix7oj/M+YuLT100o/COYowsI3vLEHFtN2RqV6vF1Wrq6GhnZYctib+q
	 RHwyG+7hhaGLZ33hVNVg250OIZJUmECzkY7IWvXckdm+pttYsHE/JubBqenma3a4NA
	 uSmBgVsikOVmlLj0EA46gYqEXMi6mTS0kezTiQx3tn2DDHurAIh+rA8PY5NcTHHpFu
	 /u1ILQnTdOV+5LXrfvsNwZ5EDUDghh/BSJAioxt1yEF8i7EDmqDO9bxCcg5wMD8OGE
	 rR3J6WvNA0OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F327C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453199357.16188.11437825119945828582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fd007b729fec150a44ffefca6fe24b17c93b4edc059491d2c71a9548cc16e0
Date: Thu, 07 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754531993
