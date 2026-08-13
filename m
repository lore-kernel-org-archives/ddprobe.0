Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0E51D5CE0
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786582834; cv=none; b=AipbTcbTvS/9M2qz/D0FxAiYpq6zE9iHEPMpZlJSTXIOO3f1/Ds/7kamwDKvofMmlQKmfBrdjl2r8biNj72/iC1jnIn496xERnAcPy+tMaeoN1A3XZTgCpYqTxrNlXp0m4ANknjyE6NpybZ1EuAjr6ynV8wtluIrmDF396oKzNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786582834; c=relaxed/simple;
	bh=DmjPYgknX1aIngH5BpH8CMhau1Ux7sMItU6Orcn7NR4=;
	h=To:Subject:From:Message-Id:Date; b=kb1Df56S3ysAU/uKTtEw3gpxFw1vTDVdcwxUvd6ZZAVtgJSbQUG2vEAKuvs0vTyhiFaozOANr3MqYLvSScp5mCSe8kbwy7PJRwXBiU1xPtSloZ8RfZxpaE8CJJ3SdLWxEJxo8edid7kRip+VM0ZAHaiizxzuAaoNwISZi0zZLYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6RPADel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6RPADel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB97C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786582833;
	bh=DmjPYgknX1aIngH5BpH8CMhau1Ux7sMItU6Orcn7NR4=;
	h=To:Subject:From:Date:From;
	b=b6RPADelXD37JuYbQ5xzMqVpviq3YouBhlIr3pu+TQbTU807mFw77KfnM4Ahz4kgd
	 ClIDDQPo4Cp0aeSMA24YibTB/R1LV4u17wVz3dMWar00Tqzzmh2/sTwg9/YvGrtDIp
	 6qhrvkWyb7oGHVyjPO6VKXuBccPPJAbkSEPC5a8+SYKqgkKgo+BMjY8WO/gDU6Ggps
	 wGsf/R9RiDx3KIu5JiBGNVQTDQXu7E2V2D5YQ7RWmyG+Ny4+seBKdDH2atBxDx6kaz
	 vw8NsFBKhPMRv7rBNOeD53xtLaFI21VPbVJuUD3GLgQvoMKFDohwrGUxCXuox5BOkp
	 BVit0kLI0fV+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C5C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658283368.15069.11183790124057765593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6369b1046c835563513a4eab95f49a8c1d767713437f74e1856b4f4d9593334c
Date: Thu, 13 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786582833
