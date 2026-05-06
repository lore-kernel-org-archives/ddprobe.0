Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA6A17A31E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778028454; cv=none; b=RWzSOAXZR8iXPhZzp8BpaD88jxnazh+Ss8XyrohVSh59k4C6fl3eb6VwxRXuALbnsWLrbVoxkgiVhV9wb/xexP2Ndo/iwXZgrjv2hrtAerhINtP8nQ2FKKkzgJ/1hrTDcig9mr316+h4IpNmZz3mXImkRLOcvKWI4f+QeOm1kUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778028454; c=relaxed/simple;
	bh=FyzkIZd3KW0QLxuh0Qm8pzRd19GXc0q+dGcezmt+GBY=;
	h=To:Subject:From:Message-Id:Date; b=qy/RwUIGMZpFY6U7+aL43VGm+qSi/JAF7Xg5xBaJepkyNIA2t1gK68zSjq9f6ifXAAMXb5jQOK8yDSCuLqiYshZQlDwAh66SRWMbtLiZgAwExvcYDQ8df6WjLvviMGyfYFon2WL0Z2qqQcJME3xLXfM7qylHuv67RnT16uTUNHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oogmpawh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oogmpawh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E2C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778028453;
	bh=FyzkIZd3KW0QLxuh0Qm8pzRd19GXc0q+dGcezmt+GBY=;
	h=To:Subject:From:Date:From;
	b=oogmpawhhbMEI51nLwllorDzr/8/lBn2r0z7RNCs7AiDu8gY0ZvlZB/G/52fN751A
	 FQCT0v1Gyft3jmvyekurgx138VnIoqaX7GTQUwvNpXouLXIR7rvm4wkPnwRq1ri75y
	 508+ij02OZoZj2vwbIJymZTGcBDKsEku5wnnRzGSEFya/I4D6mbEaTHCks58XTDOp/
	 gpmIe2xnW+21jDjYllOC9KW0ca4COr+AqBis8xbfYgjftn7GRvmFYfRzzxasiD0ABQ
	 MFXfPUdcWjdRmhaJoDMkXWQdm6o9xsEoaVdIOoknNzIXnMtqKClkez6SyxfrH8W4y7
	 fR6GxlT6HiX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF41CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802845369.9975.14141094700653008644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032fb2d48c0d4d9c4b0cd93bc3e04732fcd04ccdb7fa4fbb29e9458aa4997fd1
Date: Wed, 06 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778028453
