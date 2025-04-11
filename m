Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3532D1EE017
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744364394; cv=none; b=LtoB6XD8enRrwDRC485/wqjX93Aq8fntXl3wt72EMVJoZdKUf0QomHvEvsdJTqs20XUwrUXBz15i0Ku1B2FowhUnTyyDDJ8Kaynt7zcYol8G9GnjGQPdiwcC9Q/0kdFRrd7Q80xK6ouIEOWAO3yhQ7vLTRCwTGtIWPxcBRbCN14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744364394; c=relaxed/simple;
	bh=X8Ot4DKn42H92h3dxva9INdzec39XF0vFP4F4ZoMlkw=;
	h=To:Subject:From:Message-Id:Date; b=j6E5gjkhMGdRju6LuaxvbJG04JguVrPyM8VZ5fI+HpWxDm78kHByPYM5OhhThFi/rtO9G2j8m6qEP034Sz13Y8cA4x4J6In76q3dfANJL0ov3yavcypMudpxL7IuR0rghPKSZ6991n0k5gBBKBipYynBngKi802bCYBxbtMI0Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5DNxHl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5DNxHl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C38C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744364393;
	bh=X8Ot4DKn42H92h3dxva9INdzec39XF0vFP4F4ZoMlkw=;
	h=To:Subject:From:Date:From;
	b=Y5DNxHl9JZczWb+Ayp1AQeX0CPEpcnxsfhA4KUu9Y6cYh7JL2o1pSboQ0YHr/3OdJ
	 aQaQkFK7KicjAkqHoqR3+2pMXLN6RZxUBrTFmX/DYnvT2a/t+1R0T1ifQz3RX+0mCy
	 i7wuEEqaKSXq8YxSW8wdxfV2kKf88K0mtjjHrOyZA3kUoBOEvlhRVkR37IS1iqI3us
	 eYScNjIc5PlShm3lm1c3vRQjbyR454YQT5d8WxJhE9RpIqXJJJnDsvXgszEci2G/XF
	 e25KFNIojvU6+C92lYzb9stskQlFwYyNCsqazB4mX5Q1E1sT7Sqnl0dnwl4X+WvJ3h
	 vNOzuWSf1puDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA4C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436439359.25445.15501603900168102776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac970c169772bc2992e9a32189b383966a949a1ac670321b92b764fdd661499
Date: Fri, 11 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744364393
