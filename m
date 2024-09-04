Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EE194ACA
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725442554; cv=none; b=GN/Zo/hH0ESoS1CpwMGe7Tr9UWcTvB0lG4No1x6sDqo1G+XRO0KbPyRNo/ZVwcmABJwTA1qGPId+EUe0zKUjVKeNbwXlFXdgikPMQwwXFehUfwcz3Ty7S8rg1UwOyxeWCMqNfV8AdUJs4Nt2AcoWNipksy/ay1lX8Sfc9mTWevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725442554; c=relaxed/simple;
	bh=eF+9xt4jJ7ZiIiQUst/WEAy9pnFYSK5faDhzPt9SEII=;
	h=To:Subject:From:Message-Id:Date; b=jMRYaNkTMCSLuBPEGjQbutv1WN0JQ6NvtE/tO2j8eWNCZ4C17UmAKI2aRVRKbT4/SELsUp3Iiw+bbN6yFmi4c6vtQcwkR7VbElDK7XpqjV5ZZ1c9z4xynnj355pxvCH+q3oTkK1jFEm8nwA94yKhbv+Z8e2k50bC2ER+8rtKQwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mm3Yvg/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm3Yvg/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69F6C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725442553;
	bh=eF+9xt4jJ7ZiIiQUst/WEAy9pnFYSK5faDhzPt9SEII=;
	h=To:Subject:From:Date:From;
	b=Mm3Yvg/aKKfsN4Qv0dUcU4eOcg9drjhHRuHp071+XTR4C1L2SywmtQmU/Ftzv1JdH
	 +JZ0bRgzHsqzrsdCRV78FnvxqkhGad4FnVNZ5kDQGxnitWiPwuEaEjoPF8hgdattuT
	 9KArJ3I9Brg0dM1Kpwd5N3rjjIHgZjRSxUcHY1rSmih57U21LFprRQWQwpxIcJPoqB
	 8dn0bY+X2Axe/QFpTFfnWdeghnL/z0merJ7pXj+vvQ9or7gVgaJ/KDkVbbIu2WTVyR
	 iLvumRhuPsRwSNOkoi1ea+/eQ96mudh/DussRQknyTrM87mvz27s3bWkVlW2qIr0rR
	 ZB97ERy1RhAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39C5CD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172544255364.17532.3970801625575153003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80dd71469469e1ebb8e1bb1e5ac1241312f5daf5866601e8dfcaef625b765873
Date: Wed, 04 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725442553
