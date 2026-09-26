Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9FB3859D3
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790418636; cv=none; b=EEV+SNsOnesUPl8dEcrDzhIIc/sf+HpaflLXYZDA4r92L1TPyBltsSO+Yd4KbrntDxN0RlT0N+9Kgmp5HyoGL4zkg1eGm7UwWXeeXRsmEglXJsVfyj0BMcCe6l0rWbxakoIkzPHM6HF3+IgyBjftzxNc/1/JRtpnTIJ3jCfLsKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790418636; c=relaxed/simple;
	bh=DUKGT5OVTTALZUuDmmjZGitrYwpEIbe6a32C0NSEjD4=;
	h=To:Subject:From:Message-Id:Date; b=GtZ8qrvp6fRDBwm/yoyJ/cbrwMDtz081wy2AYIniGaPFTcdKsz/3K4JrJKIiZy4TYHnKmdSIE481uL7o+8ouDtFaNtM/i6zhM3+ep7dqOnH0+ZaSXOQKQlJBITCbWLHPp3O4OVk/DyEZ1PFHuJaCn87ZeIXw8nfPRbyeQMK4vio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5Z9EOBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5Z9EOBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC518C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790418633;
	bh=DUKGT5OVTTALZUuDmmjZGitrYwpEIbe6a32C0NSEjD4=;
	h=To:Subject:From:Date:From;
	b=h5Z9EOBXT/R3eMHRuPtHRPuj+XP7v41GQ6n9rhL0uUzxy7FFhLE1AsYmnyQQeDOSS
	 N0oD31sg6IPcvvaZwzwLl33lSqW15BzHxd1wEdcrsbP89h5Q1qsElC+v360t3NuHPo
	 T+N1tGlRdjVpl3k7U6wCAAWPEIZwtZVGE/bWnvKCeBg3LFL1JOuCPk6+maYVE2uJZC
	 wHL9BxKmX91PIIdgAEucarpUBrwc8fmqIx5h647bTz1TdSTmdNCAXcw2JoQxwej9f8
	 ZlInJ7RvttfgOLkY64xgjmu3Tw90bxW4M1AsaVLMpt+EvmLlrCGDfmbG2lhgA5gz23
	 rX25k4bc9v/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6ADC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041863368.18188.4256631354722661283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2dc9376c17f3bf928cf47d719e96590385f411bd425388dcbd7a1abaa3eae4
Date: Sat, 26 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790418633
