Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CB0288B5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728825954; cv=none; b=Iv9+rDwCCd8o2dmAwGFAfmAqRm7xJoenwPBSSotydZmSiXOBwOQgt8HpVnnhLRtlj1f1VlJ36NyT+d6DNHXQe33N9i6iXnz6rqPGLdy64KpIaV1mZl4DCmnjHxt/I5fd2uHA+Cm3trADJTc9407+YxrKm6ldUZIBXw97ix/Ob90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728825954; c=relaxed/simple;
	bh=D7UVIcAbZCXuvC9se/gNYslYIa5VJ/qXGL9f4QjltjY=;
	h=To:Subject:From:Message-Id:Date; b=r4gXW4pO8r3jFTE3h5S1sosUnQnfIYRww2xJBSU7yWbSLIQGaiGn0NJ08M6NkQUW9DgtY8drAIs70XyYybAuENKEWlv4gQPkip6PVryTLqBWhq+t67/PYx3EipamAgXyFvT9SDQ01TT5qaHXK4hND8myeGX7Tz2VDkQgrDVNAC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6rabHLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6rabHLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F53C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728825953;
	bh=D7UVIcAbZCXuvC9se/gNYslYIa5VJ/qXGL9f4QjltjY=;
	h=To:Subject:From:Date:From;
	b=F6rabHLVSCbqIcp9u+wm5kb9CXa5bNuYBLHY2h8V514DLQfVKzMrynbiO3Ugg1E8I
	 yUxNnk9oK/2btbN3mO0p0Cxp2M5GXsxxG9hL2FFIXDBXY6ZD8xassB/x17oo9cZESG
	 8Nd+LryayDHUyYA+U2J6Xc5tnbSjH9l2BfVpq5GAzyKlA7azZ21F9tEEWXlNQXFvFK
	 40dVS79GeZ0b3P9voySTj5ady4bbmoOxhPO693yuqGIZgIBFeeFan5Ya1gpeR3UcEi
	 B2NdncHbYHlKYG445CFaseotH8yA4PjRynty3ePGtgV6ND8fQL2ViH0hcorj6WMzRF
	 Lb1jljinJcxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DADCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882595365.5275.16610814544590280848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7637ffe2a3bd721f406a7f47dfb36c675afde136047cffb2c4cd2e871f14e00f
Date: Sun, 13 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728825953
