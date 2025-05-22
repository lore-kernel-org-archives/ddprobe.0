Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49164208AD
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747887594; cv=none; b=HiKkFDQQ1GFFb+ZHWgl4449ZScXEdmutj/e1uX2BvqNOq6Uah9XM85VqUyTiHeKRKsZEJ2kQGGi76zklTUP+QwAIiFHnOdfaLCSJrLCWmtvn2R2WgYyIqYyx/sadEwD7vQLXoJG/r7WO1M6Xyweh2wTb4GAkrc15wTbN4WPHX84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747887594; c=relaxed/simple;
	bh=dKaM6xmuVZiBQ5zt+X8bHXn3Q2oPpGfb3eWysF8n3a4=;
	h=To:Subject:From:Message-Id:Date; b=OswrBW7j4rEpa5vywZtXjZSb/leqc5Z9RLhjT784dmTgxJ4mTmeXexT1KWda1CBbR8mEM7GAC5Y/wzqMd2JUVH13nvmQBg7faXC3d7ids0SPquCDMCggOB/EfEEa5wIMnVkyS3P4+1PYUj54YEUuq5rsp2BV+g3na0001qcYKiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+6M16xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+6M16xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747887593;
	bh=dKaM6xmuVZiBQ5zt+X8bHXn3Q2oPpGfb3eWysF8n3a4=;
	h=To:Subject:From:Date:From;
	b=Z+6M16xSPElTA0/2yXQqxy7SpBXnRbqRl5ITrbgxvgJLag382HSRz+iJMFQk/Xot4
	 kHahFjXqHanrsVYUY5/P/UFnCiYR1uDc+eAPVw0uOXBxoz65LbuS2cZ4rexnSPfjRK
	 BDpDZyYjQGLd3Vf7Nr74LzimIPVcbk5lWosX4e1cn0bSUrAJZ0fJjYe+NkagLZoTYF
	 kBnH0l/JkgO1SHnUquXrojGRFWau2D8OetATHYM+A3LJUj4XRcjLMnwTh6AdJ1YHEO
	 PNlpPrBs7yCAfe/sqcMRWe9EZ0Tii9xJdm+oZy4SXQkuIY1sYeivjIV3Gg0xK1/kMJ
	 h7/gaZW1/SDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F57C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788759358.3699.190017068911457658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ef611774ebee1068bf3182cfe0e6bd603a0908fbc0a4999dcf2a15f5dd22bc
Date: Thu, 22 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747887593
