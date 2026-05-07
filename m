Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491702BE65F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778125654; cv=none; b=IFhKUM12+GjaWA4QF2bRFok9UfnBk0OQ7YpzAbK6vPf8tw8mM9V+L/n7DzqQFnnz8txJzsrkD4SpWX2gzDxG2axDlkAKctu4UmhQyrq+4/v/VcTuuyWKwDfrlmU7o6e4YOlhcBiNmMWYnrgJ+NwKSi07WE4YMC64Xx42QY43mEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778125654; c=relaxed/simple;
	bh=x8V577oUABycwf3aig1Ad511Fk+Z9wgpRfeTMsu7+F8=;
	h=To:Subject:From:Message-Id:Date; b=tVVWmgD77PZIBPWoYaWPqSSSafx89or837G0TC9p7vlVpUOGkqYIb6/Qz/fcwyUitKPA+CRxZwIjG1L5J0zRlpjCn0kv0pBstoBfybDvn7Ku5S5HjFP8W0JpQ+0VUQyUS4jSXf3VtJbb1lIsgDYW7apgd+OZDTzSBrAGK+APHSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/F2NC0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/F2NC0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B927CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778125653;
	bh=x8V577oUABycwf3aig1Ad511Fk+Z9wgpRfeTMsu7+F8=;
	h=To:Subject:From:Date:From;
	b=i/F2NC0tUo16gPzsB6KH3FOP/Lw1Goa1tOJgw9kFmz0o2gOTqnIfDR/wuMrrdsAH3
	 DPUx8suoUgzwqQIEOz35RUOnMletuDzdFbaM5K+gv41elIz/QlGvQYC0xttRng46kF
	 T7Jzx/PRnAyGpNIBR3K0SF0XCAk11fa9U3l8Xsf3GPiD43uhaVjpUkHvT8Hzoasosf
	 zXhzM7RiwOw45pRy1HC5yJ7wdPXvgQiVXNTUypiCGr2cBFK+wlrjnW04jLC5B8u+Eh
	 P2es1CudbJkFS4ddrx2owQCZ+c2feRvWG7KIzJ80LzXkqL16NcHo22DgVdJUaJoFVS
	 GYLQJHLKVuAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE04CD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812565369.8316.7364224477632701472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d12ada2cf00d5e54287cc300149233d587c70f3e272e353dda8c91bc7cb8165
Date: Thu, 07 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778125653
