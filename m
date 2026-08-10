Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD068635D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786324234; cv=none; b=lm4d+3TF/PYUTPWXjUcgOa4PfiT+aWP0WvRULTiaM54mSoxaQnL09rKxMMa4GmxSwp+5UlEnD5cUvTRjnwMkm/WhxXOm5evHqyviEGBo5BQpsEIf8QM7osCrsE6mAoKT1/gaB5ZMVeZXNiG8h1m1hrikmPGNhEtQXrZTMhVjbGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786324234; c=relaxed/simple;
	bh=w1kr/RDO89GrL8U04o6BaWrVkb1DHK7FKAHu8KyBeyM=;
	h=To:Subject:From:Message-Id:Date; b=kflDcmoAGg05LOF+zjzOSmoH6NfoILn3c7Rkj2R8nic9H0+52+0wvVFtItcYkGRF3sDk8kAckrXwmk1ouXv9O/kx1AgeySE6nop8gFbEiibJdoLEX4F3zrvZPUavNgYo+658cwyKG9BavROHzC0YasMdqVc/l90B0FZordkCBEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuIghu4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuIghu4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4F9C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786324233;
	bh=w1kr/RDO89GrL8U04o6BaWrVkb1DHK7FKAHu8KyBeyM=;
	h=To:Subject:From:Date:From;
	b=KuIghu4CTJzQyNG7sLB43gNlSl3Nu5Ot8QT8TQuIwxTk1RIwZhc/XsF0umuXSHY5T
	 ukh/p/dKyjHVXCRbJEYCfttzZLHFzHmM29zy5lXN2yPJXggem1um83K9JruH4OmLzf
	 mBngEzarMmF9PU3cEsvXjAl5/HpDLm5A8pvOT7hS7sjtzGrjDG8KkcNzKNi5k7//Az
	 DqQi6eViiPhh3xJdnxdQR/VKrE61MhqFGibT1hQCnMDQIhHXfXlpSprtEqJGmL+uUZ
	 E13xG126WaIPjsaYZrQ7io100TyLQ1suPHAM+BEc1UvdkJOLq/JCgVG956KWd3g8z2
	 W++VvqJ/KvHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A46C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632423368.8985.17798614400461540335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3cb96154e4409a376872ae7f9be71b1013c15c4cf9c1c6a0d4e786a2cf9510
Date: Mon, 10 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786324233
