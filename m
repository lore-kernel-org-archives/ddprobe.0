Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DB323F269
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936754; cv=none; b=puQLi9h/S4P0SLPMG7xfiOQ74/c7147IfZPzdcVOwpNaOrhLI7bsfWZYzZbzn345s2cnWgoRhVgHqBicGcvrfkAN58I3HUjouHVoH4pC39u+8JVIdYiRbNkcbh9Q8hIVrAQaMFijDzSi5afdTA4Dx7GhlruHhYa+XTMp0NdutxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936754; c=relaxed/simple;
	bh=1KiaVZfGdZ39FjY5TSXy/3h0+x7ITT+hYeOJo8Zk+mc=;
	h=To:Subject:From:Message-Id:Date; b=E1e4ml6RNcRNWEuLsWwwLIdPsvpZMsarvCIp7Vu60TJA8HrA/CW97Pk5RsP9ZBxz3mSReMJr4fjC9/yiUdC10K2E5UdoQ7pX+8VNd6jLg1Sl8oVTHwd3Tv149SJ7KF31VMVL/8oSJxPrL2Kn7zp/w5tx2jNycH1ET7Wfsddyx9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEaNBvsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEaNBvsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07ABC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736936753;
	bh=1KiaVZfGdZ39FjY5TSXy/3h0+x7ITT+hYeOJo8Zk+mc=;
	h=To:Subject:From:Date:From;
	b=mEaNBvsP4y1tBzggJMTcFupqI16ZaGY1ZgLq4mkg0ZPjshtHkZZvY9wcVv6iWudhW
	 1okKrv7kpIeOD8bgqEuHFeFL58+CWG0R4s8eHX/Ips/QB1eLjIArjxpPNfw2q2eP69
	 E+0MnWWM/JRrbzBeuO6IgxUQFxgoCUUM30LDT4+pKl/LD4WpGQqQgmREXO4SEiohep
	 TmAs5tG231R7nH9mR7KquYT5MdRJNRBYhSWt3kr3EKeiwEZvvEl9c2I6hikbuxGDjX
	 Y6dDLHW9qXA6ZR8CJdxTv78xFXJt4ugVvxNHLUcMz9lRtgKwKyMkQ2IN9pBU6dMeWb
	 Py+yUT7+eFwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9936FC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693675361.25711.16010999931206523049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19e615b036352c7a1023c9670b1ee29ff441b97d1cbee36e9d2efa76ccb1d8d
Date: Wed, 15 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736936753
