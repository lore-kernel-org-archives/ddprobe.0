Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F153A257A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778491834; cv=none; b=RCS0kIqI5+28/Df4IRxVTvFdkslukK+h7rqw1Uf/ousuBzAvLyXYIYA4HbC+0qsMoO3SjjDuju0ywlGoyw14jlKFLezy87/2R3/VjqRZza8teXpQsTnw7yuEf7Fp17QVtoJUr1nHDDTNmDSE/wanG4G1hmm4RjYH5iuL5ZLBDuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778491834; c=relaxed/simple;
	bh=Y4OW59FkRsd9gHcM4FNl+vBT6O5m1kIdSNJL/HP+OE8=;
	h=To:Subject:From:Message-Id:Date; b=dzTOjM5iCFPXuTrOZ4p5sEy2wu6c0Rxm7y+dKu8YPKqZGNx45utzsBzex1jgdch6dYooNYNo7L4vS9PYKqrikU8J0DBvKqPikBPcX273zZi0qh6UBDXASoN6jKmi0w8kRlPhNO+Y1xgOh98+egaJQNCLtrX8b0BTeBn7NN4uZbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwSTAR7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwSTAR7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F0AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778491833;
	bh=Y4OW59FkRsd9gHcM4FNl+vBT6O5m1kIdSNJL/HP+OE8=;
	h=To:Subject:From:Date:From;
	b=cwSTAR7gF2mcHA3rw51V9a5W/IN0NGa4Qs8YtiCUXW7Lc00NLSpuDL4nIMZzDS07y
	 TjCmVEmDkIPtxwKxmJGvlqBru/gUVgahFrQ6jenaf0PZYbm1lCSr+PxVSuW1Oz54Il
	 pd3I2Jgoxh4c/VJUnZDNow973NNuKWOgIF75UN73A/P1C5W61PDTjzAShjDAvUTnlq
	 BXK0AIdqvxP1C09TiPv9bbiGo3057wLalm32VU2mGM9dpNUgeWEOtkio0hy4xyD2K4
	 skI00WcNEgkO4TR7AMnWMEN9Sibtl6R7VAiZ56uSP5LVW4IVRivy4E8EmtF5YLeRkO
	 mq7pVItN3w5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6DCD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849183368.22775.2250475996330400196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26644e65a6fa41421ec06a707b707c2ef8fb60e1611b8bf596638734ba52178a
Date: Mon, 11 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778491833
