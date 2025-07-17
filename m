Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111731DE4F6
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752716994; cv=none; b=MB2F7Ap6PUUul6ucaj+u91Q2cESP5wHSi2a/YUYwJC8X1Ati3zupxsw2jNa/U/uhQk/Bn44lH0/rPmgNRuff/aqu8BV+vEo8z2GEXI82Nh0jYKeNgJCJ+0UPxy+vhopDRYe9MBy2aSgiMOq94wd/s5EPpsHpvKai7XN0pL3j+A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752716994; c=relaxed/simple;
	bh=+kIcU3vzTuSZyZEYWSjfLd6SKZZoM57RKiwcZ7BoX8c=;
	h=To:Subject:From:Message-Id:Date; b=GaBi9wx9L4SgMYhq/4N6WzePVLZENH4KArMfFbS/ITrNCdCUoU4ApIRsbD0nsLWZQ9umz4x7DvgZEAee3jtF4iR1tfGB43EnDeVJa+CSpaJhEPYzg/cyfWZ8XRcOosfPSW/G6dAlRhpbFACUqeEMOIu767feAys5nHmkKBfRFnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKmkOdVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKmkOdVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCEEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752716993;
	bh=+kIcU3vzTuSZyZEYWSjfLd6SKZZoM57RKiwcZ7BoX8c=;
	h=To:Subject:From:Date:From;
	b=jKmkOdVc2RzGhnOfL9qYMrDN3ApuAKMElmzXdzLn8e766jkGx22Jft2XgR818zgI5
	 i5Xylr9YNHVlFAMByCEJaZc/IDTZ7X5+T1rV54pf0++JHOH128lZLSdGKIivfSfZly
	 A07Cz4WaYwGOEN1f33ml16bbQX8Bp8VKS7ct/MXIH0ENb4YuvHB7YuxFpsm2R8N0qJ
	 /2kcmAC/Gs/kZwfT2QxJZmQdWoO87XfiXvgJDmMFZXeEKifPwQwUL+8HDRF3QiS/+u
	 i/4MWS1JFDqyAHccOwei8AT3Cnjr3ZyhWf33Bs17p/XPPg2xlzxXlGS5UB4jlK8xt+
	 3bP9MS32U1rJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34EC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271699357.27231.2316220163021447225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca05fedfe0cb767b4902e4f46e7d49a2a03986c58b9da083943aaf18ddf8819e
Date: Thu, 17 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752716993
