Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64404D535
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720647443; cv=none; b=GzMsxrYFRkb1nKfLG44Vr6Cz10KjnPJcallsESI0Cg7f+3fW+0uief8YmSv18XMt37LN4sl8QIWHBS71G1raiQsqih4WmMsRh1IeHml7bpplCDW51QRdrkMAIZskZQ7tHeJ3YYNPLZO7itQgVp6gS3t77gP9ksbn+12g4geESYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720647443; c=relaxed/simple;
	bh=tuho42srtkRt+8G41PX5voqjw/er8mdb+vFvw2yGaZ0=;
	h=To:Subject:From:Message-Id:Date; b=or/GBMtIgJ8B0p3yGBg3HRAD3i7o8B+Kh4WY0FZJdcZUWweaRxZJnPNfAGUjuIODCNAGjj8hNnyq2DXx06F2oyGlljR0DjlGtg/qU1nc8vx34KTV9SMO06z0eZZ2O9dtX4yHH4/2MwEEN1Db3P56seqLq/MUixSAfurvHIFcAMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbREhaEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbREhaEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD78AC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720647442;
	bh=tuho42srtkRt+8G41PX5voqjw/er8mdb+vFvw2yGaZ0=;
	h=To:Subject:From:Date:From;
	b=kbREhaEmzwwzzn649IhH/ILzSuvJtMjbBS6lZsSfqnrDQP2LrDvRf/WJAZfHvAHUO
	 OGnKZOcBQTAhKXbT8osnjQ3pOdp/LGvZKFHXYjYs5BywBJ5zV8oiVT7N8QLO54TZYm
	 3CwVuqHOu3fpU3BN5a3WzPt3QKQ/Ul4igZYPA0QIXbqr/bMW1TG+Gu6vEz7ed2/F3M
	 p7w73uSabaPfdMcvzcw9mPx8jlAKFL68VQV8DP6PvGFjm8nCUD/jnDjMO4qUCWjaPY
	 WGqjfFbfygi+7542VzytYqUZwp0BB0un0+gl2s8wvA/deCp3C/6VFpZ6iZDNH2N698
	 sAX0HFTrw/o2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7658C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064744280.13542.12755433406427143030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc2db36083e814358308eea00dc3266d103e939fbaf69219e4409005761b5da
Date: Wed, 10 Jul 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720647442
