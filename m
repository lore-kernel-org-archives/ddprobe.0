Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6037317BA2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782008194; cv=none; b=BSY6xROlrVCbozRWeiSrTRN5VqDLnLpblIFluioAnPvxq7uQm71TrvtJBsG3IEDDx4xjvm2EskZ92OQ8asIF3/zanCA/JfA1pnhUeyZv7AtU4GpFkst60B/88xTo3bzykFDI0Bwd7qH7HxlRQksZqOuoaRwsX54fXaypmsPSudw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782008194; c=relaxed/simple;
	bh=ETF8QRIUF/3ShtOItiCZB4yCy7+GbNbZHlNETmjgbfk=;
	h=To:Subject:From:Message-Id:Date; b=hQIzFn/Cnlys0gfqzxJNOQWyjrwXjdcqA0XlJku9V8kie3dbZRnFBbi5gq59lQhpCWYxweFtYwmqIV/KEazGZluNKvn4gFm403vNbRNLjK44a0huCCqcz/cXu80u27vh8yXYaqZ68LdKsZ122IoBmLXugEyAZxZFGDztvvMGa5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PomO3cTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PomO3cTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A41C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782008193;
	bh=ETF8QRIUF/3ShtOItiCZB4yCy7+GbNbZHlNETmjgbfk=;
	h=To:Subject:From:Date:From;
	b=PomO3cTJkXdxDQ1/rllOUu3BF1dS5wrQqht+zb+t4+7wv5HwJTAUJxI/JInnSlPfn
	 Ei+HLqPGAgccZhgUDcQxc3Kj8l8+mL249dYA8eCSug9RpNsllMPOJSdwoj5Zbqu/BW
	 m3kon4W6S9tybWJ03g2c9Bj+O4o7xmuW1TIAKA53K7AFbRzdBzIdqfloZdDckyHLtQ
	 Y2lIBaqc7QpP70uYe1uZ59TUd5IBoEpSXSNY4KY1n+pAV+PQhIShoCdu6ASmg90bMI
	 twvkbHbjl2o+O8HKBwE7D/LyOptQzylQnHcFTLJnQN5Kxq8CzELfnAuB1HGkVm7BWq
	 qBuDReqzjuU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61E9CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200819370.25827.3549946441359271463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc997e82b23d0534bab36f40cf9d55eab2088f8b28d005fe3479e3ed7ee6794
Date: Sun, 21 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782008193
