Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D135359A91
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780180474; cv=none; b=PN3XHb6b1hvlwwg5G7vzjOGLdrdWClSPboYIzDKOd3edyJHNjZlXQQM2Pn6BL0n0lr48fMDnVmMnQylCX+LPEEg272Gubh8i8jPiWxQqcNZIBLBSvg7xwP2MJqheT+zxvLNB82UFSo0sH5tofBtSBiYGIpabJmXd9ExeS3N/6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780180474; c=relaxed/simple;
	bh=LW9fPOQARvvyrrk94kALV7iS09Nn85fBPC17oTKTs0g=;
	h=To:Subject:From:Message-Id:Date; b=kCCKJGVsyS1qmNRaxSlvCG950Kkh06wBNnm+Yyq7+EGADVOPLp2Gnrj+S4/bMKamZCpuA6LMyHWhYu9Wl0QR9MtDZRBAZpIHTomKrJ/tku5B16gduz+sU9UCMpcrUQNJ+JI6PtLcOXMhbUpLFAiuaGpT2oJSwx6gW/eVBZhQwFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYowVPWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYowVPWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA52DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780180473;
	bh=LW9fPOQARvvyrrk94kALV7iS09Nn85fBPC17oTKTs0g=;
	h=To:Subject:From:Date:From;
	b=sYowVPWE3puJAshzImvAFv9zf/tWFAZxmCMquGBoFAAzZMs89mqn3R6cWbUYPOGlR
	 nnGC/eBQc5905uaaS8Q3uhNi1wGcnV6YZTI/eF37KGKboLmyjdDob88729/8dRxXPb
	 N0qPcL1yUE++aDkkBnNjUGXJ2mINWjOmLUc1b1krrmoVjs92SdcQyzOvhie7kvaUZr
	 bZtoP+hUj5H3shuaQBBwAxNCT1sazw6ySMgUO3P4UIZcSHVfPJUVOHoM3ti15fgcLu
	 8HOaB+/upi6bgJRnmHDiPecXUu7VktwvdRyI7beD3G5NRzQ5nalXEXsqrhNWu2lRgE
	 YGGyFP4dvsuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19C1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018047369.13315.8613964687502534284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337a7090a5e80fd8b1cff5092efd944719ddd9831c78851c019523fea6a39bd9
Date: Sat, 30 May 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780180473
