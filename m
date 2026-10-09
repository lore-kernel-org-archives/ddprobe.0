Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7C447141D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791556834; cv=none; b=Sb2RHuG5E9Z04up/n+4oOp2+LABAeU7VpzIe0AZfCJiWPME3cPlxWGrGSwcAOYixWocy0B5g1b++yfa2Th6o6CfwH4KMF//IeGm+Tq8wyCrxB6QwqGK6O5yNlitjZ2IUuTcHz8H07rLuvwIQok5EiDY1qaIC0Mk1h+bp+xcnX0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791556834; c=relaxed/simple;
	bh=0OXD9jUI+K0/dQCSeUNUQuxAnyfkeQ6g5GOi9DZZssk=;
	h=To:Subject:From:Message-Id:Date; b=WmcH+he2D0ZMmtGy6h6Z6gAjnLDK7YrZ0I6d3snn6s1djYue9TlPJTYrr06Qqr64ilt0NlBpgi+m3uraqsi/+l49Wl/QcnknkYSr/GqXyZnQ1SH6gFOdRe8HGifLaMD/QqKVSNZ4U3J6JGc+qCYZYqUEiDYci5mDP4m/45ApQn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8i/oKj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8i/oKj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4EEC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791556833;
	bh=0OXD9jUI+K0/dQCSeUNUQuxAnyfkeQ6g5GOi9DZZssk=;
	h=To:Subject:From:Date:From;
	b=i8i/oKj2+hXd6eQIxX0BTaR2IM+ikka2YMc0xlOmoWY8cITVfy00RW9j6H43779ke
	 qUIDqsft/sFIjCUNkxNEFC6g6YbJNLifiPyOdqrlXm2PJEhbGoNUV8WvA6wPvxGQuJ
	 Xq8JRK4UWdBxCuEoUwm1Dfd8gSyQKc9yEovFKLnzajCxKtu3QX4b284IBUYqIfsqSy
	 ZytfNBAU686wjgKaaGpcfzz7dj9xaaBID5EHQ5lVZ8UULeYDmTTDmcOegkEWYJ3qCT
	 aeR5XBF1sPuIV/czO0z4DpC/b5RSXJVKKrvx1w8RamX1AmHb/jgbV8qyjDZbsVfopL
	 Tbxqj0FxS+Uog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE8CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155683369.19842.16396140790206555132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edbecfe25380a2cd35f70a3ef0b7872947beebaefdc64ab3e90f4ecf562e04a
Date: Fri, 09 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791556833
