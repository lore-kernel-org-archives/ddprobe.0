Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E7A3FFD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780842274; cv=none; b=HoRexjQ1098Nc2p7NCItHSIPg2xEG5vSJMgGnrlc9ZYG+irbJMOLy5/fPavXoFY2/E0dzhr621NgnA56NeXs2mvZ5CqGPDykz7Pp3XSvW2YycevwYrcMCT9R83eLh6VtWuVW+2M0V7ENZeAocK0sdUok/9AC7UK9/Br9haRb/tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780842274; c=relaxed/simple;
	bh=R7Ia/efNaITwpnsaYDSYUawGQu4c1+9ztpqQFGFquhU=;
	h=To:Subject:From:Message-Id:Date; b=Rmt0wajvwqtSShkgCYi+Ee7VFoIR1PlL6urbfnSrr0zVuUlJnjoXsZvGnpkYIKEEdLZXGM47V4W0H0sb46H5Tg6IpUoU2mln6nxS2Ngufuw81zCP40I24/3sM4OFhBAAB5j7awmNgmDI13cQmpxf7agVoowEld4dy8Hfh3d5DxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag5g5Eg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag5g5Eg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6334C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780842273;
	bh=R7Ia/efNaITwpnsaYDSYUawGQu4c1+9ztpqQFGFquhU=;
	h=To:Subject:From:Date:From;
	b=Ag5g5Eg6Dm5cEnnEdCkYnny/jpGc1K/GRcMOU7hfgIbICNT38i2zhdBT0BMrisN5M
	 Ore3QvK2m0N0ghPIfU+GIsRpqyYQWS67yFnlTwhl0CxSbiAAr9zFzWWYlcVlIde6p9
	 KyOUYERl8UcdtJHj1odGoeCWWxnzuUq3/WSVnTw4/WzYUp9RS9ihn1lCrB4j6XihLe
	 RJukolzuTXAY/eNiCDGX3CnXsPVxY6YDypTB/Ro+vhSC2lb/yd4a2BWCqnLK3kO1cA
	 wRP4IASshJFDASEXZglaYc2193ZmSH8BIMeLgLxMaX/S1CHQcfWz0je9ydoMif9Gxw
	 5Y8vAtyKjjOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC932CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084227368.2243.14897322115302273926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5d9800095af415c3eabdc10caee0869508142efbf5f8c1fe51ba896c5fc580
Date: Sun, 07 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780842273
