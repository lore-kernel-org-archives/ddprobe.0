Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D141C72
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783737514; cv=none; b=KJw57f42RkGuu4tEuqOfvH3sZTTIKEsOrcqkYiQDijcX1/PEoEISVkPIidmVnC8X0Qdv05dCdbz7+EYKgQXL5WaI04Pz+BQXi86r2SpLLgLIlqlq6oOFpTHouM2KcpCbAfk+a40PX07zDqKEhQEH++GBQ+wb5zKEfxTuACnpTJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783737514; c=relaxed/simple;
	bh=07sOAi02IkpiSj4PJR1Vdf02lnDGHyup3YyqsitNyok=;
	h=To:Subject:From:Message-Id:Date; b=Wl0x4mPGaUshlJF/YkiECr7fn9TGLpzGPipdUbq5K8/pRJDKa63lIUy+J1sk5udajHMsh9GnyNM1rQcox//47AHgDKFh/dtrI3lVs34s7Qy8TqVb0Zg3ytGh7LiisfvI8EQtyldDLDaLoZVLfQ6AQ3mp/k2tlHD0KLXWliU0GY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDU2NktB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDU2NktB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93F3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783737513;
	bh=07sOAi02IkpiSj4PJR1Vdf02lnDGHyup3YyqsitNyok=;
	h=To:Subject:From:Date:From;
	b=LDU2NktBmcV6xmxdp33SgUcSoXHDIwxPJchw+pckjc3EpAnD2OmXnmTiN4nPPPpZJ
	 67oydOvX1+iVX7muK/liDwiIH56sHgXkuFGEWoopwYfIj8DPp5F68gFTOPTLTO1cfn
	 oSHPEA1uRQbl9wmOENJShW4Gx0aBKSmi3T1Z7ldFIkdA/C7dS45vBuj8C+hE8CLw1l
	 i/MQASzPRtmbGOLxaC0B3yLMyxnpA+6+5mZX/9EGBwxrRNj93tRDR888Y2nF3ejO2X
	 1857IXKTgtep6cWpPvFzPxYJ8QkFI2Cvdg1kGu021CHMS/3s8xmViacaCdj4ncFWEI
	 YWvf8oVqdMrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8264C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373751368.1497.7853978589020501044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf862f635df6edace5f0556eceac62e3d8a52afad779cfff5651f6c2755d0115
Date: Sat, 11 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783737513
