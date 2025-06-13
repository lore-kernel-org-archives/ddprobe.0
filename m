Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC13211A23
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749836994; cv=none; b=jOIJIOz6zArYP9Mhs3+/XoktiFN/HwlOF/2Z+uGAhOGynCJii1uYP7j1WF4WGSRIohlE0IcUZb0wlZA3+3OTd7OEF4AGnVKLfbl+PQ7uluQKKCuleS3ENCQ9BV6pVWNHCjeGANWuYLEC9Q5dBXd2RPIBstyLx7r6JWFoZbGAuLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749836994; c=relaxed/simple;
	bh=hyPQ3+1PnccBbRixbmVSinT9wZliTfMhmZLEL5pHJSM=;
	h=To:Subject:From:Message-Id:Date; b=kP+l57hOw7GLZads1+np1fORBw8d0TUska1ixjyW6dBl+8GCGa0WoVVwtPv/5KU7OAMQNI1q8NPrKgSX3mRIxxkpDNES2vT8GeruvVPZhxaVTx0n5OqFKLcpJYz7GgrrQEj3L2UveYleZzQV+c2rwYXB7YnCpnYLOH8rwTdD+L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d22J4xG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d22J4xG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B41C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749836993;
	bh=hyPQ3+1PnccBbRixbmVSinT9wZliTfMhmZLEL5pHJSM=;
	h=To:Subject:From:Date:From;
	b=d22J4xG7gy/aGHdAxbxfUyyWgZ/LV+EzrCqiYqL7o57yCAk7UiaI6cJVNaXPlh5bL
	 B+Mf7S+IFqBmsLF2A0lVfB7hLz2KL/RpWxN+esYZekQ+77oo2Nu9JQQckGCBi1xdTz
	 iYZiLkViovyo477ytBlnRBmp1En8Du77saDO43RbPAFqEfsc9Ad8AEin6ASJtZ1t/L
	 /Aq7OXmaQb09Ep5dSBVix98CkQlr118SIn1W24OPan03eFpS+8g0nQIa00R0+UK16G
	 NibpSZGIbmAxkaVQGCpq/8Yhg4BAqAB2XBL7HG0WI8qXirCIo6xRg/EhY+LtVN66qz
	 MQ4iIQiMo3fsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5EC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983699358.12271.3129010420726975973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d65481c727aac2602c7bc0d555281140e79f84bdaa1998012e508d068b4b06
Date: Fri, 13 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749836993
