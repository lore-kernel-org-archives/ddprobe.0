Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4782FDC4D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768500233; cv=none; b=brZteOATe69AGAmTxBBO8e8Z7OTqd+dp+j2t4OgGQJnxfyzvyUI5hMq9aEPQ8DFbo/2dTjnOcUzBgZLK3XSP4cTM8MNyFLP1EfJarCnkejl58hBz9UysQJebOaQ/yqMAPV6qUQCI4oKXeD+a6PX8rrufS6r0bu4ccwbxUFrPC0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768500233; c=relaxed/simple;
	bh=lB/F6x82mEmBsvJOyCMLCNe6BkfmLnkW8Z6DriTALKI=;
	h=To:Subject:From:Message-Id:Date; b=oNsMUSeJyS2oWoAt//VmN3DYaxDnsAVIwfPijzSiqfvSNTbBjWAncVO3Ojj+X5ASN0v9JcIMpX1i/lhTXGpUOL4BKrRtYh/UdaIpN7/zxxQpuGEyc4rlFcZTlAz4eTKdrjB5iW8pYZkHvMyAnFwdsyqhFGb/SeRpPtYcHmCWuNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H54fp5Iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H54fp5Iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB0FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768500233;
	bh=lB/F6x82mEmBsvJOyCMLCNe6BkfmLnkW8Z6DriTALKI=;
	h=To:Subject:From:Date:From;
	b=H54fp5IuxXlYtVnW8sR3MH4ZnO+8kAVElpCbk7wOG4UsfVj/zJL1c8xuLSN29C8uU
	 mEjlhcWQF1crnyPTritkONtAAvOxXmwPmWs1w0orURaWpsL73RLp6MaH40z3WaYjgW
	 Maq+wG2XYrzfoW17aPzgBoetVNePreH1dPTd1DdQ2/FJoXry7WNstIUh12paPydxkX
	 bApDVezDqVBZwFU0o1O+M11ATWIxHr8V3jypXsP4j9ueNRW1+AuWZcglUlhDPNffZZ
	 /3OE05ISRizzJIGTMEL1FcsTzLZVZQjrHdQ4rIQQFuK/o9AzJIC5cyl6HefEXk51Ze
	 sCaO5xnRYkEYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDCD46606
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850023361.32630.10978388487729927591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250b8fbefb8bab52acfd3d6bd397768fe312edf5a41bd81c701eb70321caba21
Date: Thu, 15 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768500233
