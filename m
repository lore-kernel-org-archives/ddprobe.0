Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430FB1A2547
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748728194; cv=none; b=UTbdAXGMnGpotmgIUbYA1Wngo4sCa5w/atSJyq4gNf+nWp0i9dt8wAMl+t2d9Bdj0lmRSyQ0E/hfQmbk0XrI/uVBmfEsddd61LFb1cihl/3OmsCxp5wa2DphsG/Coh22qt2EHooJhihqQ3azfjLuEXSLylueDrwF+i0OleoHkC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748728194; c=relaxed/simple;
	bh=HeFZ6J1MGoEu5dBy9dqeOxWQsAMhtoy+jtUYHvofwQo=;
	h=To:Subject:From:Message-Id:Date; b=dgirUyziffDqyy8luMBcNBJlseZAWdymLivtoBm0pa+n4v6Po35Vi/h9eDc4eFaQWxJbPEoH20syS46AVTnED+EWQ2qeg45IUGXque+P0TIKA32RtU4szAhhfn8MMpwTQi/SmpUPj95TqnlfXw+qei2IcH4sNvMSz73uRkYFK0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpHYiz3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpHYiz3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748728193;
	bh=HeFZ6J1MGoEu5dBy9dqeOxWQsAMhtoy+jtUYHvofwQo=;
	h=To:Subject:From:Date:From;
	b=KpHYiz3S4o4Y6mfFRaAG09jJEg0/By3ChA1pfG8B6wD0SMj3aHYEQmxjP+SoFC6du
	 QQyXOGBSeAgqHjNCJUh9jTX9o5xAXUJl5mZ19NAZmtODAmBW1sBE61zZBxWPmUh5BG
	 RPBIkCc7hNWbi8RbvO+RPJwDTy2muTcgb08+5SYcM9jWXumGqtqNLghGcPmOD5Q3rE
	 eMhZ5F0KKjLKoLKGZ/aw+jR4jU5gxTngzMSuB5/P5/crPIpxyMM7IC+auCmxY0hzal
	 MB3bvebWrmB5AD4KzVSNuOR4WyKu28xRA06OjvwKxbWCeI66cRbe1VrUMl2PFlGVt1
	 sVk6OXeoorVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96843C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872819358.10837.1365343054740153871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b97fa05a93813b30cdacda1cedcdd7ab1c27d463800315066ddbbbc3ba2ba0
Date: Sat, 31 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748728193
