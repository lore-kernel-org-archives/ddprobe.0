Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3AA13DDCD
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715966543; cv=none; b=GpPoR+tK+TTtE18JxDNU6pduVffvrnYSPDyHEoUDh+HxsAlghixdxOQ3ufYDgfSsBvRmIH4cPR63FpOs8OZQpKFkUBfa0o7tGHBDKLwlMhqnFTJyDgJspocwPS2TPdar8hCv5pYZcxB7SWrNfd8bGSLhaAXCK4w1xdSi7S0qmP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715966543; c=relaxed/simple;
	bh=iXk+/jgZm3r5994Gd8qzK16ZN64FXvpweAaeV5iweU8=;
	h=To:Subject:From:Message-Id:Date; b=cW4fZXzUABLu2lNO2lIv0aXkus85c3Q4jf1O+V4WP9TYSe3fEUqRpLWgYFtIc8QmXCHk9wtc07kLJvrrvQJuewLOuBB0swyVG3KcOG7oMObRXlU/kr++oS7KTDhGtV0oFZf0epwQiy1eElbdNhzfENQhxngJ8sjl2A0MyLtWyb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8YTwqIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8YTwqIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63BEC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715966542;
	bh=iXk+/jgZm3r5994Gd8qzK16ZN64FXvpweAaeV5iweU8=;
	h=To:Subject:From:Date:From;
	b=r8YTwqItG8k1jK6GXA9e+uW70J8gZSIUTSNKEXh7vBoTZwEF+W6bwP0w3ftd6uEid
	 O1R/ZZKw4JL5r/QrgB0en8H57WW9+tKdJzm6pzfgnbLol8r3ovdaMakFuuumuhHumZ
	 HZy1/I/3MZjn27bqqYYCs3hzbew6G+2LhZ7mSlTkpov4ny/SSqOiaWJB4C11yYZvdx
	 RSCfJtrKLRBFRE2mr1Brb7Cabw9eCvSXVHGpJgcmXxFMtDWEMybSKszhWKqS49mK7N
	 59kecuQtrW9E/MfTCOiq5OEjclLO/qBLHUBc5hk49Qs6+67P9rTTckR+A0+/gvtJBJ
	 YMfItCsYEYCIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C138AC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171596654276.656.10492693938378967755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c58412a9f7ce09e14f1b6827123c4e3bb6ba5811ea8ddcd763249831ebbd778
Date: Fri, 17 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715966542
