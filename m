Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609B02E5B02
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790549434; cv=none; b=SahcoEKQ+OsgYBMS2bUPggjJPEJB6Cefw6JGBYo+k6Msp16rcP7z7FSJLnNMfNEQhpno37qvMaDL6QxQJFu6Fwg5/4ifJi10ztQMkXdBXZNhZu1oDBMEQPOrN+BQCsHJg1VI6BA61bHAiGdrAlVfk7FEAf0x9ZWR10WAAgZvW6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790549434; c=relaxed/simple;
	bh=CESjxRl1t9ufgShAPcPYGrTdrwbjnjIXwwtwysnzOto=;
	h=To:Subject:From:Message-Id:Date; b=HSycWz1Qb56Q9JgqLOmx5Cg9OdkLdrwg+FbMIvTEpxVMrfe1CF7eWlPMbH4Qh4KwZwQDgJVp+MZjDd4X5bW1qnnH4VvGV7VJkp6/8vdxArpUJV2jd6SlBDk4v/SQTeKwn03U1KklvDYeG+m2PbYFyDlmKV8X/7mmuH2eQ468uX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0E2abrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0E2abrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC86DC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790549433;
	bh=CESjxRl1t9ufgShAPcPYGrTdrwbjnjIXwwtwysnzOto=;
	h=To:Subject:From:Date:From;
	b=Q0E2abrjXQf4JbyMsZwF9/s23WOaW+l3bp50E2Ujib/eeVSEEREQgcmadEDb5UcJI
	 SFhxh5KP2a21Jk9nonFisO9phq2/YF9kwUeDpaowRmWdWJtsazZLJIpkG4eX+iU0Iw
	 ZnjmTQ15z35cYc1X0/ORaeWCSFIMzqg0YnmuW5SULgmGKKayZCoj1R3jd7qfA71jdt
	 CjwmtFTAW03rbYe7sMLpnWiTpO2nToIKTRPM+kv6cEI8FZP/JnsXd/AlnLhzJ2H5/N
	 JkiuXJdwSC9vmCOTmBR9j8svHELkUCVyLfNzM98Bv6s5pkEyoDYSjchpU0J6P++apa
	 VU/QyVbf1bx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB85C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054943368.5392.3516253487970979197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffe2aadbf287c66818e700f3151a72050fe4758a059f67debbadea9c381a917
Date: Sun, 27 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790549433
