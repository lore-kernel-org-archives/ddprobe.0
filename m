Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A451ADC69
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744355994; cv=none; b=PkpyzAE/fKc7uYoUx5xXI7+x2X5pDcbTa601kT2lM3QFTanCkV+2andIVs42O3Zy+25uPGanX643A/wfqKawRLIqEja1yukVpluNFgfHW13CdmnMqAYBzhqyKFSlNKN0oBJHLTV4QZeL8HztZb2DpMGXER3NNvxMsgqfiBBLVFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744355994; c=relaxed/simple;
	bh=1AWyY+d/RtTLdnTAhMxcm8uASUK/OKCSN0aCOX4YZXk=;
	h=To:Subject:From:Message-Id:Date; b=AAsp1dDWYRrIy12sEAE/B8+p9Dej+7AwkHm1TV6G3P2S47BjiY75cW0MfiEm/RKuTpK0vFs9FJBgaRY076PehWM6087z3w43+0das6Qzgj9AlXU/yKHfkdVl9fzq+d/jhzZJIceVWZqEWESuCmnJXd0M3Ev1BZvdWjZrNl2do40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRTM8Yfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRTM8Yfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5388C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744355993;
	bh=1AWyY+d/RtTLdnTAhMxcm8uASUK/OKCSN0aCOX4YZXk=;
	h=To:Subject:From:Date:From;
	b=hRTM8YfkWFpD/E5CH3F249qDtyP+tNPtF/122G7gp1ZIWy9NcW4khPWN/r930u5o2
	 jPFA1B/R/9C7ICF8oQXp1mantH2CQDWHmrBfM090+CxSmbEJGc8yptXCUlNZtrA1qj
	 ju88tz07VPl+2h+lVp1QQuLF7A1Kopq7vp4GyL0D4oHaeJc0gR9tZBQZyR8R7/n/1K
	 7RC6i+scL8i0ocsjswV04q/ELnebfLebO12Zl52ToJhtBddeaaWJJBVnvMe3A8vLLf
	 4wMflotgQ2jgTPZ+gODWrWygswU0MsFpVzke/vcTBtCPGzeQfyhMTrfDmHNWTcbMKo
	 rMm5IdWdFVdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91628C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435599358.21099.11278249851949750617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac2e21af98941e1f257c5fe25f2b7084a93bde5589ac54a93202a9d7e426f56
Date: Fri, 11 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744355993
