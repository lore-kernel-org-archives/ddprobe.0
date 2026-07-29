Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DCC1624C0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785364834; cv=none; b=SLR214aICbvwmXug/WjFDnUiHPaZyVtMjBe/rJRe+IDaTArpRdP+CR+9CAM1eAgQJh54j6ePaNr7dhkHru2wM0340GEoTbRdeCfP47Lx4xkqdpxPA/Dgl2h6jqerlDv+tQ0o3TGSl2FlIKyC5647ovVsv72/e7mL1ZS4Liktrhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785364834; c=relaxed/simple;
	bh=41O4TwptIg70ZiHbL8bl8ecPiGPXnz+AMRKqjsZH/cs=;
	h=To:Subject:From:Message-Id:Date; b=ixuIZLXYYNyN3qpLopxbbteKkNQGA7sC+PnkfBOtXTgh3m/XYvYLR2MNrUwMn4ZG0Si0PmiAA2jQQtbU7JYQHx0vKlSBUH5226yfvvfVCd/mYta9d3csbkAv/t8I1fgIQLgdWuZl/sy2e2x79x8N6ApfuaBEiGp2C9gLknilY/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thPComcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thPComcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DE9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785364833;
	bh=41O4TwptIg70ZiHbL8bl8ecPiGPXnz+AMRKqjsZH/cs=;
	h=To:Subject:From:Date:From;
	b=thPComcOXjXYZs4QnTvrKmnWDrmavouk/aTkT/+yfHQ5PJv6IZrk5Kgcv+hnO6Oi5
	 NH3U2+ZAqAmpauCyxxmFRrz+Y1eWDvgZ2ynN6OhwOzmcp5L0kCDwDGjJfIggL/xFv1
	 LjDbJSz2U72EiKH4+2hulwYANSCNI6giCmMo9DUs3BlGcN1qAflZTQrEo0Vx7RlPtx
	 y5VCWkyu75E2M4othf3YEd8WAf1X/iNS+ru2Dl+5j68HRskT+EbNl5ldKxbnSfaXjs
	 2YthLv2SVLV62J/8j8LrkPAjKxAswxj3Sb5HGgEg6hLIQIKxAlaXDYcNUQ34FhprlJ
	 3q6/m/scSpxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FA4C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536483372.31705.16350403239560299466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfa3aff4211348ef7415e3c273c517dcdb09b02cac883f512a6bcf397835ba0
Date: Wed, 29 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785364833
