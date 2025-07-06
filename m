Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A78288C80
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751822394; cv=none; b=QrhMJ9c5GO8cUSBue4DnCHk4lREhr4H60g+8YygNVwycYpmW/dLx54W1seGLphPTyGaDCNbRQ/SRiyguZC8TNkEH/yiyREOGLWdO5OGI8tBoIe25a2OdtQT4IBN8jdVXGCTVn1ovMq3MLMmnI0KvfmgWDevBRoORoQ6340Jqeps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751822394; c=relaxed/simple;
	bh=3WZx2jaaLAhzG/ph/A6Xu7nG+izJ1jgN6ZBp2Gh2huA=;
	h=To:Subject:From:Message-Id:Date; b=Uv+AXmYPQLhbe9YMgFLxauL8C0nFNfi3abETRnA1yuzXSfw/Fi4I2ZklKqpVa5Sdm0jrTFBPeNG79THV7Masd0Ajs+L4rBB195t7PpcqaGbWPDSIYU++XoOR0tBaIlkX0euIvNJyfhxLPSyeo6La47bOKAJRNaKIby8r/HXp/R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P39pWH6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P39pWH6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C1C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751822393;
	bh=3WZx2jaaLAhzG/ph/A6Xu7nG+izJ1jgN6ZBp2Gh2huA=;
	h=To:Subject:From:Date:From;
	b=P39pWH6si6ExWlcAUWnf1FvG1nV8jPuRaL6pRjxmwiRYfByAYAbUZMbvbm9x2t+pd
	 nhZ6mFtzHH2whSymSeZfMr0CrliqieMeVQ60J5Cdqye3jwHQy6KkEt0/YBIL4ruTlX
	 fHPD2jC25e6DoLhTqAI5cXVEWfRxVFDp1LGzJwypl/5bVR1WQFhhGWHx5EJ5zzL4ow
	 cpnLfn2gWmFsxYmKZSXP85OWh2xZ41UYpTtoPS6VVWdrXN53yXxonP80VR/Euy7sKJ
	 3ppT/FPe9FtQLVn4xHCLhWgaJw4wewGKeJEi/Fcz+nfC/0y4l8lSQlFvDc61S6TYAj
	 KLumiSQHmWlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C3C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182239357.3361.3380009244462290227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfec2e1660c31f626339f66bf345331e4b1c29fc8b91c394eaffa980a9cbc8e0
Date: Sun, 06 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751822393
