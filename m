Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216F4B5AE
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725792954; cv=none; b=qvL9V0ZjRUAgjo4FflveEB0ysXpqY2VF7SxVtuF//b87IwAxawR69r8ICfYnxDQqdelhYqIIvIrQlIDP2qWRdd0m3d+CWeYSSFIKeav5Oz7lZxe3dsE+aty18II4CInbBlHfQquUdpXr4ruPahhsFsiTpFSVaGavictTCauOrWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725792954; c=relaxed/simple;
	bh=A4s6LI4AGaBpBlJvjYRMEr4f+U2UB9/j1DpPpGGEeyQ=;
	h=To:Subject:From:Message-Id:Date; b=pufVsUzunFR0QVocej2BKgwXaurD8JepuCUES3+0D/gCkyUwVtNjiVyPpk/5RCJerzeMLW5ukGNMcj37kWUHQyOOOeF1FbhYi9jig4LMWqe2qSlINJ6V2oLWjhRT5mW9ut/2IZL0V9wLnqJDSb3doaidASZPzTyBsFhEUr+TGH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDg9zjPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDg9zjPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A25C4CEC9
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725792953;
	bh=A4s6LI4AGaBpBlJvjYRMEr4f+U2UB9/j1DpPpGGEeyQ=;
	h=To:Subject:From:Date:From;
	b=mDg9zjPqojNJir5g1EJYc9V3qL8lScDW552aqEpIPhblTxcfqcZlSBtcRc6E7AqfB
	 xBrhR7gfXhfDzyL+vOzLywbnuipXxjJLeHnH0M2FtBBYrdIuCGh7Rtz0Un7jBHudOK
	 082dY2djWTTZoe3fpiGZmjfNx26K0dnf8HH4eoBVnPXco2q+Ut1UDrL9jbrzu1ofJY
	 3Xigdz3ylcrSCbgQf8EX9+WDteKUUTZZw9GzUA4YwcnOX7ut1jOUwEPnSqJCNCZK/h
	 eBtO1e5WUvwJ8h4bHR2PUumBOuUpX8QeImxRfy9rfoNBhr2yAVzosJzTWsN1l0kCPr
	 waxukDhWZNsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFF8E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172579295361.16598.8918667100430761799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c127d0c97aed10dcc82232cb5ce432e62c28011652a1052da9e6872b0d4e17
Date: Sun, 08 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725792953
