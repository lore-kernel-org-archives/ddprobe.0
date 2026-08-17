Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB503AE1AD
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787001634; cv=none; b=o0uN7g1MD2BDqGurhc4bavSWhicYw5EJctH+/4x3b9VpT22SpZ5hr+Gtaeq6tg9xnuFqahahEqO+Kwylqu2QFxcae7vysFHGPYLsgrrgC1l5LkRj0eJEefBnl2X3a+vZqDNa+JtAKhyfvbeXfhrBITG56iIBfITM57ZmVoB8PbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787001634; c=relaxed/simple;
	bh=pr5PIGMFinQXpDOwoVrl8VWTOvx09nhL1sG5xwGo/iw=;
	h=To:Subject:From:Message-Id:Date; b=E39oVMiblMR5xe+Hq6Nq6ig+JXC58afytCGY1qix/iwBTiWmx2yVGkZMpyh+9qVMtFcPgBq/IGLTzMx9POeh7XKKNvXr6p5fHm1K5adiM/ZXV8/IKsnhCbDFLea+62vZGAqa+5oQr3/1uI3k+z8x1DpRpm45TXfg1BpPmbY84TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uh5hqyzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uh5hqyzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A25C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787001633;
	bh=pr5PIGMFinQXpDOwoVrl8VWTOvx09nhL1sG5xwGo/iw=;
	h=To:Subject:From:Date:From;
	b=uh5hqyzqLgRiF2CKAenyX0vL/1j9ZeMlrNCUtvq/Aoi3OlVlO2vEzn+2awCRXIGph
	 OWOH8yfhlOsD3+WoiLzjhqLGMTqBGakbcOE9GDUpKRkNM96LV6tqwPYnmJ4tVmh0Vd
	 5/He37M4MNVFsZGun/LRtJkSn9fh7jnqsm9bGHxsYo7E1BZ62LkqmqqM8vl0O8iJKB
	 obd+WIqOdoGOg6q/ZLojcVdEIaWuRmUg7cjYHBkqdcBqMaQdyEsoghAYPahB0VkaVW
	 pTU6pFOOogW3rjnmgx9gLca2qr4Fj4YiDrHpYoiIzQCLkfa4cTjrO1Up9lVMVHkHUz
	 ANMeWU0nqJfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE76C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700163373.9372.3538234365508842336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0486591540505e9a4894001457c4b6b96e2ef9ccee59544ccb66e092f9ea38
Date: Mon, 17 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787001633
