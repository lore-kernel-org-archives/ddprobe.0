Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A4B3C10B3
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786921234; cv=none; b=kH+Z8ljNXGqTeFg+2cHUpfR103qqaY68LOwi5DW33l8lwJjSEdoNZqt5borgxpgXIpTYoXR+RG3pJU5S8YcLNqshHm+PjfiKx1FMi3XJ9XUc8HVy5Z/vi0F/u+1Ktr3c/KyyA6mZDYyXG19lEmFOtGKXtzKtTsdcKlSNxQj40Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786921234; c=relaxed/simple;
	bh=vhE8r0xp3me2zcB6vM08EYRSiwh7hK4/V2BIR7xRLa0=;
	h=To:Subject:From:Message-Id:Date; b=N4qFKFUxRMDk1BNAEfssKjv4NU6hCWol6CxTwSxxs/L0NSqVrRhB0T/AE81neQvQq5amvc7eY9Nxf679GQJSJCEmWRs3+ilUd7k2VmryBhbr+pBGwJgJPmDsbDSNRKBpb262oPyH0xhqYhOT8Pk5H2oxzpEG+YUQY8+z/9K8aBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txRbeEOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txRbeEOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB353C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786921233;
	bh=vhE8r0xp3me2zcB6vM08EYRSiwh7hK4/V2BIR7xRLa0=;
	h=To:Subject:From:Date:From;
	b=txRbeEOxggRd+cbQ1w7XJzb8afa+9uIBuJrL9LPxrv2Sg3mrXtRSLcPmdddfsDEFk
	 2+WGIKaSgRIvy9J6a3EcYNxqdHsciJElWQr5f4DfuziMs4g6CeXGVZSPtmNOHWLjAP
	 FDZHuPFWhm5f6zwj3stavjJFZXyI4hWRaQ7lAf6PwjjaR7yluWZoLupT5+BavTCIgA
	 3lIT1UxdI1yVpRCwGO3fXj0zFUibuaBTI7cpcBtkT31gkSEh9d9quIx+Txj88ZOaVR
	 UFs0B1SkvEvxPxF7a43sH1PHk/YYPCGUjTuTyzOtOmfdS/8Yi9+d0zitBvMSJ40d4J
	 pdmhthRQBarcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BEEC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692123369.20265.16766235233425960757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74f8e537dcd411b4dcb1005f94b2f905ba527b5878ca15ac5613b416c87a1cd
Date: Sun, 16 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786921233
