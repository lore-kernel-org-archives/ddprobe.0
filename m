Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A663E1B5DB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711542496; cv=none; b=tJ4zJFxNm6b9NMV1Kl494bTyAY+jQPHCUiXxT2lbyTlzdMaIIlxDglcU87hIip3p/ycCO02A6QaVe3pvjNnNJ5ygzNVqVkhcmWbqPUuwXsbl67hoY/8e9Fyxa4U0yv8OQz9sGuyNa8AwhEiSZeQxkxVbRdogIic/wDn6rP61aUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711542496; c=relaxed/simple;
	bh=vsa1AnuuOmm7Wjv86ttGZs6YoDeNjESgibM173zxfbU=;
	h=To:Subject:From:Message-Id:Date; b=YUB61/pkDq9Ox75yiHisMVlwM3h4QFKuGp6fkai3i1bkltkZBgA2l49F1DOcEWa1RzYeY32a5WY2do1Os868AwG4CJOe2emGk7s/Y5Ahu+Ttrmyf3LS4XHt9F3zoq/OIorTCd446cm8GHFxl3U+xkWfjBL1e9RsSSRPT54F7q88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+iow+cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+iow+cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2DEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711542496;
	bh=vsa1AnuuOmm7Wjv86ttGZs6YoDeNjESgibM173zxfbU=;
	h=To:Subject:From:Date:From;
	b=Q+iow+czyvg7yT1LifmWTh9Qractt/3zgBfNRr2GUiK7km2IS5YU66qQPVoXfoaN5
	 q7BO/ViwcoimQJZkpXy8oZqHDmZWQILFpjmX2FXDiPsDtA1xpz+pvnXqpIP5VG0DOU
	 s47YuwSjrFC86JV+B1P0+x8kKjJ6wgDAFl5+n+TLDfLtB+LIs/0pAFPHV8V4kWpAXG
	 k5U+oL1SgqQCDUNTNsl46Ob/TWJkj3rf5pDAI136WCL+Ex0Q5ty+QSgTGbeNWVW5a2
	 cqifmBaeO37RYHdButyr5ZDoCriYVErhKAC2wo6rkZoe5UdqcdwZ80QIIi9LuNga/5
	 o67BbtR5DLadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B955C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154249648.24060.14371099733588891185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39378565cc5eee8c9db92cff48bfe7580b1d3823ba6d915b3492f828cba58a8a
Date: Wed, 27 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711542496
