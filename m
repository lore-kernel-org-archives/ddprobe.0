Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04688344056
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771841094; cv=none; b=GdflrBjwuiqEhBJOM12Y9KGaW7SX7UQWaTl5S/ONVrUTcu7maAhEANCgR8AJSBCxVLjXWA2iRZQX5fXowyBLkPTFeYurOuG+RZ1oNKW8mu8RJMRocafLgjCzhe2QXdkVa796nZhIoLx+nuNv7xpK7ydU7UncECGlQmH+d/XcFOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771841094; c=relaxed/simple;
	bh=akrHq2+eCZ6+Dsd6Frvgx0vJz6mK83GZNGGM5R7uIVE=;
	h=To:Subject:From:Message-Id:Date; b=PPydJcwQrfXf2rHY3g5iUNknDtSUt0tH8zE5m9/bj/SWVTtgzQX00yGisMTgNsLSRlkw+Ed5+oHfZAQrOQmflR1hkjpHQfaYeoXSXLBbwIe+OnP+Wh43/v3IuEnedAZksAKSpNLsXuSdoYU2M6QGuoHIRktRzJr82SldeALWXq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvIsGtqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvIsGtqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771841093;
	bh=akrHq2+eCZ6+Dsd6Frvgx0vJz6mK83GZNGGM5R7uIVE=;
	h=To:Subject:From:Date:From;
	b=BvIsGtqhx/gRyG83bDPu9ByHw1ZKsbVRU7JZcCloX9ukx6LMAYqNkcQFclAOuUsd5
	 vGzL8vteTiweIRNoTSkm0daIwWgsZ1L/DQLuldaKJFMVzGlPFDD2BCI41f4Tdh+8z/
	 Moam+MFsRj78/UnS22FiHQnoMn4V6E4SFpS6K5wmx+aPLkDL3tfO6jH6oXEA/ip70c
	 dwBdNtrhM5rTKet7RPrBdZ48BtfeV3Q2NzW9SmrVV4dRhqTpOn2bBZHUcUs05GHnsG
	 wBQmO2OSIC14bHizKeyyeddlNFfTTj4InHtVZkRhJvQz/KxosRzgz3AN9aj3DjCVF4
	 41lJmrlwRO0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD7E98E10
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184109358.18438.5913359924457830143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456991003e92a768170f88ff5525120d2fbb142d43ff35e4b8286ee05cbe9509
Date: Mon, 23 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771841093
