Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361EB2580E0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746622794; cv=none; b=une5t8PgQ6AxzMJ/cU/KsRFw7ZiEXQxZWKyy44IMEFWOS2GAGDkJcLNcOUOc80wAW3zaruWOatAh2Wpct/3WeTohaaZLh55QZNai1aNr4aom3bu0C1wdd0YdFQL3EN9uzFsM2xHVd8QC6p/oupi0u14q4ZUNJ8UZ5RkGFWFf0Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746622794; c=relaxed/simple;
	bh=Jt2MeSIlvX1PthLM9dV0p4L9vyuW7wi4zqb4NMsSi5Q=;
	h=To:Subject:From:Message-Id:Date; b=Gh8+i/Gyvr1S7L9adzIC85J5GHn+jPIGerQGVHjxwfV6DR/asxB/LmNFFbeHL97RHL/wWGocRkyRPm0AuX4tAXNGmmuCLuAZpX/9swWvh5gVSoYwkoB7ERClEH6ZVkMbXFbvJeM67pV/HbE+M46DPii8nh2j3tAsrg5xlP9ug3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d16u4S61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d16u4S61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D452C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746622793;
	bh=Jt2MeSIlvX1PthLM9dV0p4L9vyuW7wi4zqb4NMsSi5Q=;
	h=To:Subject:From:Date:From;
	b=d16u4S61n/pMbOZAm+A3oA9DB02/IBnmyP6Adkw848GwwCVmGAmglEzBfVBm92lCy
	 jS0c6YmEUgOtC5y+GQWn+MpCAPPs4Bni96e4CvND5fY4weAXyeT/HSzeb4hRgPJhJa
	 aMjtwclOSnws2bHOq1V0Dh4XFb94O79PrvWaF1yGhwM217E3Qf8aFBh/UcfeywfjI4
	 fynh/bAWHSaxbwgN1O+3BsgR3sn5dWbt463Fjn4zKsYe5cIf+rHAMS3gKu8hc6eW7u
	 sVDZkFsVT/XgkpEDEkjQUAXTi/htmFW+aAUxQBpaJp6RQ/AgWzaju8ihqT84XKPoEn
	 I3AWyJDaq0Ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E293C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662279357.24223.14518041176438841332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d7ef1a3eed5a9e00e259196627a45f93ad3d2f76144f371cca0ec028dd13ac
Date: Wed, 07 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746622793
