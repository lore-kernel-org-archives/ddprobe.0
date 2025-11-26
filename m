Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322541A239A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764128574; cv=none; b=BZZoXecq1OBYoPUZ9NzxSoNUcgYwPUyiDVW+RjldO2PlY6kk1XgIo1hl4PzWi1aJeeNRBokgDF+o7aUiCsKL9lyOGDH4s2CF8RELf5wtZxHTD6lRGq0AbHqU4nvur4mUcQtSa5jkhN+pBgV14Z4/jezxFOm/lqE/xCK02Zbri78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764128574; c=relaxed/simple;
	bh=yHPOgDVJQTl5O+4kMbkBMg32bOpEnhjn/oY2WH4UBXo=;
	h=To:Subject:From:Message-Id:Date; b=svDZItAiISyyj31oFAhjkgCkmLWbY7SRr7XNXMfkASA86wOGMmWhyUbbcyL3oJmVXexuKhymv1ZFJSNBqCHyr1FyvlrRDRRcNVo2yHttrM4TaoMUHtD4hm2dIoIKG3qedy83aOZ0LISFNGf4PjfXsUQd433YpRtRhMTS/qayWtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWA9Zk37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWA9Zk37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE409C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764128573;
	bh=yHPOgDVJQTl5O+4kMbkBMg32bOpEnhjn/oY2WH4UBXo=;
	h=To:Subject:From:Date:From;
	b=hWA9Zk37tor3D4/cDZmhdqOhVz5i2fSdADs3GttQcYVSyCKESKJXhyBTOtwCIHOaN
	 yR9lCY17FmIyYMT7SBU/BarNhDzBZadqn/5hg7r/5+Wp4afrmW75DjrLhCMGtZPxfT
	 u3jEsIzhUgVxmKKRYCwAobKATBJaR8L5DJJ5tduzcgtC9VsLgxmzeqlUsx9UMRKJRw
	 Ts2BdYmisEXf9idyD6eW6qj7frAbj6zuOwoZsxGMff3ejkla2c7BTZmMaC2kdrUBI9
	 jqZbYhJEqLvmttVFxbJjmNtIc/iwH8SHM5rjtW7hZRoBhfvHm98xAsX7C2eDH1F5eY
	 bZQmigeu0SAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C78CD10374
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412857360.12746.7855500496642712143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55da98d9842ac897934e88667111c4ff0e309f5c072b226b145f23fd7a8ad3f
Date: Wed, 26 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764128573
