Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B04826FA4B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784309914; cv=none; b=cOLIFT61BQjMyEUKB44l1JrAch0+E0EOWS0C6G3rh5Wa9167wPEiaL2Aql7580scoW2N2tqR3qqsDsq5jXhkK3AczB+S4I84lAM2SUCFmGAb1OyZPQNjUx78Trax/N78kw4GMLrnirwHuNArZKVMDZPPlvqp7vPEn98Xdbvizzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784309914; c=relaxed/simple;
	bh=x2YxrXarcRWvxAKwK1ES8CHDkcjZ9DzoDveOLXCXmcU=;
	h=To:Subject:From:Message-Id:Date; b=LtsDA0C+zprd5bdALozDRuihpd7/fOQsPhwXPl4Kgg7bjzJzIUe8AKLMaUPJZmEqy2N1W5ZjQ+lM8GHpFduM512uwmDGgDX/Q1gyTReWpR15zx1+DZMqzJgOU5DMsR/PP0DDgotUyRJRJxfnFah3Vb6cRD0dxWGNKURHSadkL4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLO6knrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLO6knrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B47C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784309913;
	bh=x2YxrXarcRWvxAKwK1ES8CHDkcjZ9DzoDveOLXCXmcU=;
	h=To:Subject:From:Date:From;
	b=aLO6knrgc0OQWkzBStQzW31BZAYt/V3Ou87hHVd8UFZl5YN4f4EsRbVFWsKqj1h+G
	 GhuESJzUhYcmOX+1SUlloP2T07myqlh0Sc9Y1j4fiLn7QhV5FjZvTYNwDxpXWtuEJe
	 mEQgR6lS4wbMfvxVSy4NYoQ91f5TM4zZDRTqDC53H4kTWObqwW/HlI+cxaApjiX8q6
	 Vy9ErqAk2ursZkz5ppcYAAQ/+hNRN4cOy6w6zhrq5rlNKLhg+wyHGoldETccp/fLxK
	 RDAU7fDCig1o1lbljMQpZU9Wh2alrZ4mTvy1eFlnBaXh2SLQHZqqnCJXe5bcW6ZWNf
	 hJbeHz8Swln1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBEC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430991369.11135.5366000123374119304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947fa9d4d354049a6978fd5092693d4df5b8da8b4b3ffda8e341ff70fddce47c
Date: Fri, 17 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784309913
