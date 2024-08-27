Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2551E158DCC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724792754; cv=none; b=Ma3VQ2Hz8Vva6h8hKdWS5Vo591LNhe738d2lUHtOsUIYZyDs51IkKVeArpb87mj97mKlNKLT80WJxOt+U2h8tL2QA0DZxgf/C1hH9sHtDUFSqDatVf+6JUfq6T4y0x9Hqh31hg66r+poswytccRLFez+z+h4KFFd2Fj2PhjdlpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724792754; c=relaxed/simple;
	bh=u9ClxHaFwaXodIfkoBx6Rk7ztY3QSlVK8qDCiHHfYcc=;
	h=To:Subject:From:Message-Id:Date; b=EMbY4hmaiTV/2HJK9wlteDNDeY1EoiMkamiZx3RVsgF+odX47DBrjjyGGmTLVlFWRg+UcGUgnVaS0R1OlqOvh4wqUJ3XUQHyYL5L4Yht1ZbRqrFCH/c+5nhkITR5gaH3dXe4iofPfzrEj+CXlZBjIg9h8mhdtzUC26y4NbVWtlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqsHZLra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqsHZLra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF7C4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724792753;
	bh=u9ClxHaFwaXodIfkoBx6Rk7ztY3QSlVK8qDCiHHfYcc=;
	h=To:Subject:From:Date:From;
	b=pqsHZLra2sEtLxXF2NQPpeFNdswyaKp/TQQuVxuxGprSztvLVt5GZO8tx1OMs7APl
	 SFvUgldMDMq4IFJHm1YJlP53H/baqHSGEc9pEPTX99KHWJtcOqdKRa5guVeijcLgy5
	 Gx5d40RnZMPd6vDn19oBWa1DRi/y8C+litjAMRAA4N0w02xK5a/Z1b9YbeugfgsmNm
	 qiClAVM/loDZaXD+3zIwweDYFEIrW6ASGaeYOLInquP+SNOHwC8PAaTripQSRke16T
	 R4ZoqcZ1eJLNBIMSbUhaWGVWnSjr3er2rdks50oZccwSMaKEU+Ckn6orxDVYqp80xj
	 q5+N04RiIMw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF9C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479275360.31807.14800174947117255600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8d00020330ae9e3a53ffa8fe4d276cb8af45957e1637cac08e40205e448004
Date: Tue, 27 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724792753
