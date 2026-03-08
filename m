Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA38241103
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772960094; cv=none; b=us3v90tqYi4JVxujjiQgeNeDsU76rBRUXRNhuVEJp3BZy6B1q6xfOvjDrX/7lBjlxLILtlooCcdAbpIbtn5elz777Tb6BzyyS7x4xpgyAobauevmnXXKsiUb+biZZPb/4QzwFM/BdZ6T9Bn0njdB/Zzp85ms1lx7XeUrgXIBu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772960094; c=relaxed/simple;
	bh=k4JozvZEmXxEP5nwQJQoP+PcCK7LSZfIwv+9VqOZJDw=;
	h=To:Subject:From:Message-Id:Date; b=LEXD0lp22HS2c+mKwAJ54BB6J9cLO67QnSjlmMIlIn++WEOEHP8WhFebvnoxfHGlTl3Dkg63H+TbSSRqCI7wmhodbpkcG+aqxplor1pDcjp73GX8FLxqvmzwZh0FwpcSaJg7yP8BgA+xO16kRRxsrMOlMRNd+hydqpaeJGy9wXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPIbdXd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPIbdXd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7812C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772960093;
	bh=k4JozvZEmXxEP5nwQJQoP+PcCK7LSZfIwv+9VqOZJDw=;
	h=To:Subject:From:Date:From;
	b=SPIbdXd7fbY31SydFQ6JnOR6e6Hbg5pF/oYdtT2EYy3FUMGFDdkUMKll0xVFpoXBW
	 3E8DcpMnmoNQmPxTC7dz766Vck5aTRjeHKOVlwU5ZNpXMrOAUmd5woYi8xuXUJHTW6
	 id/CEtf+tbXUgxeS2YrEfkOwwTLrn/mWjprS3laCVXOxUzynzr26VTVTD5TOEOYkKm
	 ZyDB7pWOxokT2Xu8iOoSkVDO7PB+Lw+kqb7e4NKy4Lcgoj6DTi8jrhu9CYviDiBLbP
	 eaxjSlJtXVKjJBhUMG8MtdInHmbPSz8GsQZhGBst3xZu6AqOCjONXCn9lZarbVvKIi
	 vOQReCOr6FsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E22F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296009357.7426.5987244778554173906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d97dc89b953dee916b2635dae0f0781d8973691fe5efb80d015d76bb366b0c5
Date: Sun, 08 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772960093
