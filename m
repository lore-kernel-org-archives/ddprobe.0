Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7661862A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002794; cv=none; b=GGgc6Pe7KKqhNlgdhfeK0nvy0oifMbX4hq+AG4emO3mzN7rH979NjXH8Ik+cKl4MmejkcyLG+Y6VGADzttjGTKmcxc0iWDP8FrIhSRIH4O7YNpYkVGnGdWd0UR4uzHDpJZ2bOxKsyvy25GFnR1nGvUXrRCJEiGgMkwaPYcKQhZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002794; c=relaxed/simple;
	bh=5vJmLZWIAD9ZJhlhNLwIOTw3upiVTvTRufu7p0LoZtw=;
	h=To:Subject:From:Message-Id:Date; b=brEAFatZJxIcLn3amTVFLAUaa7aoCV/111yfrFmwHfZOtcxecn6jS2mI55hSogqh3RD/sJApXNZSzIv0z0z+k5RfijTNQDOy+rK/shNgp4CEWXOR+Kdjt+5AdGxOJYdN0ecA28jkv5MxzjTTYG29yjiuSos81lROhNincPdWTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwPX97su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwPX97su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760002793;
	bh=5vJmLZWIAD9ZJhlhNLwIOTw3upiVTvTRufu7p0LoZtw=;
	h=To:Subject:From:Date:From;
	b=uwPX97suMwihJSDnl7DXjK3l1tg6hfZyWVouaMl007it1QbPHCxtwEpJUQDGvPRG7
	 fR/e3YJ8sOU4o9sLk9FOHN8ePd152vpJ62iwihbEwUKqhQ4RVGr7Gv9aR+kmH42fcn
	 VTou4R66fqv1f0eL0IKUD8QGmVph5xFxSuZwhKdWhIwcBEoJNYbsZ5ceqQr3ZgCICg
	 LWITg+PGN87+icAcS1nuAaAERxJJQosu7GVfMpPSDCrhz2CgEOJEtgVP39+LWmT6rJ
	 xWNSu7ZzZvk+ZLXRsxmoGP5JcVVmH1jvpHNHdgqv9lSp8mRN29/dq3efCllQtPZYvP
	 5Ui36n1NI03qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922BACCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000279358.7115.8489452622326095178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5356448f531734977266f79e1cc92194175d2cc6b51841bab80eac451d729145
Date: Thu, 09 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760002793
