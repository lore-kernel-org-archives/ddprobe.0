Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78F409637
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787911234; cv=none; b=V5IN1UW6fo2hQ9YAwWrN6bJ3TO2kFRxVuG16WqWBTlz0afpTsruyjX72/kfvUSihBBDtmNKA5yLUN4geSCRaSdNrhAK9KxmFduHoAIN1kTON61IJqzZ6okOVj5DqfDwz4os2XmvVIY0AMmeeQHe4blr5Z4jigRkN+mFPnCpcUFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787911234; c=relaxed/simple;
	bh=rIDqnsvxDaLsN5HBOEphTjB0gC7f+CacV+nWYS+1QT4=;
	h=To:Subject:From:Message-Id:Date; b=bLnt1sjK+lndADYbempEV8gA1+FbwuOQoAZTUHQT0OmODbLK7wlUPsZbki96j2znDD+89LvAJUb/bg41OHPJwBGTTp+66UxKZov13dXJDslRE+8R3qDX0G1c1QNq3xYH3EbbAtemqU7YRz6IPlfeg5+lkPug3S7pO2aGjRoVpyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2pka+EW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2pka+EW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF45C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787911233;
	bh=rIDqnsvxDaLsN5HBOEphTjB0gC7f+CacV+nWYS+1QT4=;
	h=To:Subject:From:Date:From;
	b=Y2pka+EWQd0mIxiecKxHCfisV6R9n5bwOY8kmmuCvK6UOttwfXmqpz4XfhKeLHf8M
	 rKPYIMkBeydK39+fjqCLx9gSrAIqAhkjNW8rzcSswUyHRF182/VWu9PehkbxR66/Gv
	 62Z9VpvjXJg8bW9g6AnMk6oeGP7gunxhs5XDd6eplTvVrEfAi/CXnFiJxJgnTBqX0v
	 +mDbLvyHygZypUIfEVSXCz/4ksKcLTN68NJd3AJgpJSxPq4p4uYJZHvZ2vPD9wna7j
	 bS3HuB+mh5ws/rYmhXmGFd1wM550D2rZ25JscnR/JJih5+CiL+fDA5Qm4OuFtlLJs9
	 ktOwlWRjMetZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB69C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791123368.19458.7750495525776257976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43abddaa083a6ecfba0490a5e218c3c9007098cbc69dc25b154c7d9498e31d8a
Date: Fri, 28 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787911233
