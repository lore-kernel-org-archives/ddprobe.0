Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079E51DE3AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758569394; cv=none; b=SAbWbY3t9EI3Vu/QDiUvADQy6TKG9Vhnw7XBcDWxMQLi0g1+mkClQOK5wfNGC+kCT3pofosPCgOI7m/3RDEbSHp5SQdTXe4OgMwB/kRUrO/c/z2uF3NSOfQI6S1IdJW4pESCU3N38D7UXSIOWOLAP3IA2VrDXXGqXPvgBHysl5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758569394; c=relaxed/simple;
	bh=tS6ZFLnT96cROMrnDZTGeaOpTV0buOYxIGEr2Ib1ERo=;
	h=To:Subject:From:Message-Id:Date; b=HNj0B5c5/QH1B28FmhHsNeh3MSLwTZyhQa/TFH0EOFVIdf1Pi+oxGwNBGRZ5VOLCwrfZqJ4JuUAbTE1qYETz5RkRbskPZra8L3qnDNCWGGVvwFC9B3L3QcZjNKaWZMfdeNXe8HosNRaful9hJTv4x38pnw426Dds2tip78NUfec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yxow+OCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yxow+OCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758569393;
	bh=tS6ZFLnT96cROMrnDZTGeaOpTV0buOYxIGEr2Ib1ERo=;
	h=To:Subject:From:Date:From;
	b=Yxow+OCGwRM2/DPSAy4ceMKu+tT8RrUHdZQl26LV02vkNKF9ENgBSgpoK3UWbgDQ+
	 PZi/1A6GN2zLLcdAohKtk+a2Gw82qkirLiGUd5UlwUzDi6FYDxfHuLSrg2ya6+aCsX
	 IAjNKjPVRkq1ULwaLHrJY7iXewMr5ITLAGtXOtNTMSDKb8e6UOg7qoRLbQeuhg3QEE
	 QJBtVaRAboGyIj+8AvFpmk0Ix/Ce+zLY5lxdt8kE+Pmu9zLlduvWk545trowY9l8BX
	 d7Cf5pVY4IhBqh5xojGZQem+Xn+3MUDxsI8gYAmJXPqk63lhdQid3yKJ+0sE4a04e/
	 DikWvZlBaXAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92815CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856939358.31197.18014969853730875029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6bdd24fcdb67729c4c3862c34a5b325628acb8177b34c4e56b65c4dab3cb407
Date: Mon, 22 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758569393
