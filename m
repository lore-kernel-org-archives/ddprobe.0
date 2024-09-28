Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E72134AB
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727496954; cv=none; b=jAB1T2mj5kb+1jjGCy2PG8WqRcnLPPFUSdVcyBMpUNxe9rjCrwYeHsxmw/6oDJaiHv43MmOKz0KNQp9W2YEERDs/jMxOjkB6KGqn4PhqTAMVQL0qqcT+zV2nr+JuxElH6rKSCPwqQxF/GCT7HOahTKJnikAcO1dRUdxb43POfFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727496954; c=relaxed/simple;
	bh=6qNkDljEURrPAIhOimvZQkDdD3STiFTxneKHEVS/ZTU=;
	h=To:Subject:From:Message-Id:Date; b=Wy9vgKF6T5qf+Ud33usfIQjxT5vZJwqg51l8aSkYRmLJV5Rv1g1SSzTCZ++KiJGlq9B3o+w+kyM+pFBzBT2jDpTJ5xJXXpg467ULQ4g5u7Rj1zLbTSp5PDLee8S/7oAaD6cEiSdXQOK6p5zAKDLsuWhMPrmXDxeAZ/LqUuW7D7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5rfpCUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5rfpCUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B838EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727496953;
	bh=6qNkDljEURrPAIhOimvZQkDdD3STiFTxneKHEVS/ZTU=;
	h=To:Subject:From:Date:From;
	b=u5rfpCUk5rc9EZnQG2XUMrjmmf6DywWo0yiFPUqR1Xlxej63jS2lcLWjjRLJz1jh6
	 wlYXqbvUdfmtMtW1ygFYH0YxBuJ2FLpYzoKpBq9HDjdxkVGk1WWj8Qxg9F7S4f2esx
	 CgdJQgJRz7IqWo3qox/6pQBYUusWhwQAlpfoVXcdtDo4zsXO9D5QWKD0GyKzup9Lwe
	 l/YykjL1wKCQuBWX34lqNIodREpCRDZ3uirbFo1tTjR43F+Ws0CdnDJ2lVAbIY1YGo
	 tIO6EuTzUv269ry1RlOZUusgBhrcXvgLnwdy1z78bYXEuq1aHe/g0B23E3DkxBYIQu
	 6u7SjLyxlfYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28DBCF649F
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749695365.15084.11751553701919263280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e03714171c35e378874211369589a77cac1e07cc458c09b9fa85739e435ed6
Date: Sat, 28 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727496953
