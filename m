Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B9218EBA
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779548554; cv=none; b=MYe0r1uziR7Gj5UQrkd7IUBSpCtY73G6aVCz2w1XGLvQwFexUlnUUE+qn2OrOyVtzMhKubjt5+F2x0rdxaq2LPPbBuCQrq71CdNh/XOrTbcsE8WfZ6ancLN10vgIz2Osiir+lgcYReeCDFiOZyZZDHXwl6zdMHo5RdktjSvSbB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779548554; c=relaxed/simple;
	bh=NwT3ssyFouTsoh90Yk2ktOrYlbpSiHQ74Oc7pptbm/c=;
	h=To:Subject:From:Message-Id:Date; b=eWNy0tVpOf/WPYzLTWAEdSBsCHdzuOWtBKB6C8kpH+lQn/yytX8FdcHrN+8XmOr4+MZ8jyFQEdYgtjKBnAuOdrrc74aLaBFRLrcmmqDSqAHn0sZeKpoq9hI/TKdz7Z7O6uIe/t1xG6hTFulPOxMQrjkdztn0AE6pd7ZbtUAhDzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXagUldD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXagUldD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5205C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779548553;
	bh=NwT3ssyFouTsoh90Yk2ktOrYlbpSiHQ74Oc7pptbm/c=;
	h=To:Subject:From:Date:From;
	b=qXagUldDjJCAXJyWS80SWaFiBJnpR6Co05dBYZMw66H/47zeEG0ErDSVFAF8X6P6U
	 gUrgL0pTsIra8iwSEcO6ZBBG9N3y4tWD9q1OotuSY1d/PXIGI/PfgmEpn6/Ko1cmPE
	 hXmMYLsyVAIjBDBlCU7FfKK5A9INOSRK6XDo2vSk+RMrD3s1Bi14vAzE8FPcPPDPrJ
	 N4Qf5+lW6V+0Lh2noXYvcIcgQO5I2JehNSMCrFbwYNcoSGSVX1uhtIheaZxIiiyztL
	 09Zow2zY0ONAHDnvrDkkNvoFKMY/dA+qq0irS+oM7gVmlEqt16Df3ypefYj+Cy4Igr
	 VOFourPmk5ZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB131CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954855368.30170.2790523001298964630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fcb1ebd4db76e079bbdf0d5f183032e88ecf2c287fe41d8d93c260928fd5f7
Date: Sat, 23 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779548553
