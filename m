Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0A42E717B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791034234; cv=none; b=SKku1chccqu3T3FzKxs8cjZEA1uHNsASuo+07mUFCf9LCIHXjohfIhVTN6axB1EGb9YmmqAgByZP41iYXvqrOlPy3gPhLdXJJ+mkC/IUBgefa2dwXVbeD39TfdzJ+YWY5av6nXZaXoy8BA1BUhMR2HdbPSdV+JEPi9ZUi4UlzAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791034234; c=relaxed/simple;
	bh=PGzgOUu7bbbgghRO7XXN95+LjeKN2Bgv6mJwm45BbT0=;
	h=To:Subject:From:Message-Id:Date; b=MLewdG493YOEp693cjpweF1JWSD4dOGsi9E6CZ6FVYEq8HQKc8VNH0bgP7jH5K5e7NU0igSXHER+s/6YzFy7ZhDzzomLk0ld//q0j6FZhDiSJ39ag5sy7pEARmFQS4xOFsd1bqdYhqwLhUtQGQQ+Rc3daGFJN65m476R0tw/+JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j76nWWy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j76nWWy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8013C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791034233;
	bh=PGzgOUu7bbbgghRO7XXN95+LjeKN2Bgv6mJwm45BbT0=;
	h=To:Subject:From:Date:From;
	b=j76nWWy+7CcftcOMXOpV4VQaPGlU1KtwV+9KEC8WweXZpa7SJvZcx7aKO/W51h9HG
	 QH57XEVfj5mUbfZIyQt2nG8zpgadvZEN4EQOAbEEg9Yz2Bvp+d9jod5zJaplkYUNhe
	 AdbMu7M5pJUmdaDHg6IKvKKlUf1Z80lVLKTDaUT/YSMZzVP89iZGgVCNHd/o0L/nmX
	 4+DziN5pBPgK+s996K9xP3dboFPv5LP8xEvQqTtWJ5wPVk5hQNTxs+IgZfvFFtgmcC
	 QN66gmez9UguO9fJ9AycwenH1Ziz5kB/a4fiWh7HDAvjNtsK9Oyrgu+z6i3H2d7iBJ
	 B69fnIlaY5sfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB97CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103423369.16048.3108813135284175984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06979ee1a3bc39cc14bad55b6ab36f061e0054f6dee7d4485f3ef51b26b3494c
Date: Sat, 03 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791034233
