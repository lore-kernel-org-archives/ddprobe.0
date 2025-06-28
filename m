Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4717513B5AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751107194; cv=none; b=Cq/Ku7sLvmS443iQTM+vVgNLZ/xDWEXiSADPRKddszBbdXGB1C0Z22Gy6pvI8+g5vGnZbmGVTJTAj9n6wemVNdLiRVWQzCD/Gsp2bLPt4729SWPJOXtiZpdcbLj8PrKsHz9ufT0im150iF2VgaQp0isn0zKa1ey9aPtBKkFmlGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751107194; c=relaxed/simple;
	bh=7+pK8GmJV/T3CUZX82hjD2n2M4HMTI643/+G/I08/Iw=;
	h=To:Subject:From:Message-Id:Date; b=R2GxWCU4XVfNWVhXzx8Hyk1E/+4io52xd7fxmDAeMSllhgO6lxeMgRRET+DLvz+T1QHly1/tYY8ae/M1x2avPoUlFs3wHAKijUXgYe0TYBg6q/6OwYhApv3QN6AASfuAalnMIMDmLE3yI2pXxcMhI62PV+LLBjHo5PhxNeTpGnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlD7S+o5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlD7S+o5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D81C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751107193;
	bh=7+pK8GmJV/T3CUZX82hjD2n2M4HMTI643/+G/I08/Iw=;
	h=To:Subject:From:Date:From;
	b=rlD7S+o5+X2c6YmqjmsOhEsH5MjGx77Spj1RbrSmiKgW0f1xRDe7hGR5VjNkKcsxq
	 Dj000lv/WpXFGEvNk0diWmchTJiLSAcit9C/djzjJZP2wS3nwmU0EjwOxqieUNVBrY
	 pirSyBSwOVHV+tQQRz1Cv0V/GfiBHXRsNQUy6YdmwNX7u0G/qVuFs1PGltp+VTT78H
	 Sih2BrH47iPeKvacmFq4yM50eQ6/SLyNfFwNaXQKNxkDEVw2irt3neQaAWHRywG+36
	 yCAEONeuGqPRxs9tbfgeHIS91uP6K9wHR9aC/bxm/YaCKArkBsfgHX3wEYQi9yajQf
	 jGIhi6M7gDw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAA9C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110719360.16282.146793569679804823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6ff34d19645ac9c451ddc210ac43427932d337413585a8c6f0b00bb0fdaaec
Date: Sat, 28 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751107193
