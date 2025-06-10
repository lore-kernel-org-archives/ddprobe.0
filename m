Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B7A23ABA0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749560993; cv=none; b=oj7x3rsen3mbBptOd7BhRTlVhfj1MfYjaaQsKO8yzl1Qcely8ytos4jdxCYajXw1jKoVH/ic0bzaQun1GGCpt596jklyAR4xSXtex5MrSg0KjsM/I5YzQHs6D4RnNNmGc+v2xBMqQdjFgVBFmd5qYetYxheezzWIlHbAeBuF2Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749560993; c=relaxed/simple;
	bh=usF9T0U+jXLu/BWyEubfvJOVkn5zjIWnPeJQoLbUU4o=;
	h=To:Subject:From:Message-Id:Date; b=W0jZXvdFQR16pWycbVbA5QUOuWh5zjKK7rcZrbZR64emU7Wh/ij0BX5ZQN2CEJAszxhxCZEYKKazv2gjgvINMmp4emQf2lrK2206aWrsb4gMRw0UJbkIWY8Y1muf0lmZPNlI0uAMihhO3Z0dlf1FUHbeR45PcZ42NTkceXlaor4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghGKfK4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghGKfK4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA04EC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749560993;
	bh=usF9T0U+jXLu/BWyEubfvJOVkn5zjIWnPeJQoLbUU4o=;
	h=To:Subject:From:Date:From;
	b=ghGKfK4tDAT4NHd6jg2C7PIII+KSudkY0i0ceukdfac3D1hvc2etluAQj16tiZkk/
	 Ug+eSJaMBOKo/2DDZdyLg1wO8myn34cJ9zM5GNfYYVmW7o3uKtL/AvKex8AmrU7wB4
	 2uhgkp+Lgypn63XWEyYt//aD3bM/8p0hn0AdZOGNzgahKSrEkhX601h+vm7wm65Aim
	 mbs5oOzQYkHw5nD5mM6/ihOfCF9Z7IP6dbE4nnWWqK/bjNB4geow7N82pAq1zRdr52
	 XQ64BAGnBqhPagyqvE8q3rsdyPISz7hMCvswAVGFYyy01FKbucPHJ75d/xKiv+F1aI
	 CMwYjiEHkj/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC5C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956099358.27259.16118702312444029149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9a49fd6007c14e6966a8ffe41b00dae4aba0da78fdefeb988cf2f72623c0fa
Date: Tue, 10 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749560993
