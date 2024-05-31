Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A2A1CF9B
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717167263; cv=none; b=HVP1BoVLA82Wwm4/htl2IAKbWhPr88CgUC4KCv5QQ684NSLakgQhrR9cQnajhonqlrhFwchBN0bjBRW7gMx52TCihV9++vtPVfRCkNw1WgVbQPDgsa/QUuMgGqBcrcTiEo6kTEk6off07DfU7c/2LVtfYMNigTijpaxis/8qpcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717167263; c=relaxed/simple;
	bh=As5f4dzM2FHYLRpiMbXfoXTgrUKxKLVI+V0Z3omY1Ds=;
	h=To:Subject:From:Message-Id:Date; b=sC8slq1J4dormJoOQMnzwLFbgABg/RluGp13fUdEkthpOg7bVWd6posW94kCOst4Omddp3yxf/6y1dYG50Iv4vHSB15IaCK1NQAAS111grJLE0Q52//JxYVnHK4jrVp4wXFQCOEVBQyup7BG5lyBAQ9ZzLmCKKPpxForWSe+CqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFzyoplB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFzyoplB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13E63C32781
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717167263;
	bh=As5f4dzM2FHYLRpiMbXfoXTgrUKxKLVI+V0Z3omY1Ds=;
	h=To:Subject:From:Date:From;
	b=OFzyoplBKcpL5OwYL8w32XcAGSLcTNhBlL7/aqbg48CD7kXsvYPyk003R8B2EpnDx
	 idg8NpRDPNiv+uEGkJGbm1cAOZs6Kk58xD9d05mYXSfQiK6ndfAkF06rFIWEbnVxHo
	 QVGGBS4CNLRpklV/0C8+JUuSujVjxlk3avs0ELaVPEWr1RQic4hOEQDTlGbcsLugaT
	 RgME4E2E5klyhz+Zd56ZNmxwYMmnflqLsTe0qZcrR12THBm7bw12ns8No5Gc9vGPl1
	 s7LIlZSxxjgqCwhLrwYn3bRO4M58wVNlawtJVHofJPSu9wIoMLhGwBmgFgrw/Nvddq
	 l7SLnw0dr0S2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA171C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716726287.14579.6255116846226471933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d996c01b9cea5f95e47e10b364e4a554821bb6663fcc7d63c43a11814b1c6a3e
Date: Fri, 31 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717167262
