Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE99280008
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747423194; cv=none; b=iI+dlx3CH7h50C7x+gIjGy4x1wZsffnY0xQ94iSvdhbxRuGKEaxW/0L3FuctKgfOmMIy6OOxg4FOnH+lz7eczXP6Cw0Sth/+xKSa5sZ6N8sV1JKhpprukv8QnpkjlHXo+oARxDC5Ulu9QzcxfEzAVcxrWzBtYCvYO2l4uH5C924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747423194; c=relaxed/simple;
	bh=E5qnkZRLWS1zMLnsRsEPOJ8kDPSXx9KDUq5kIIYAaVw=;
	h=To:Subject:From:Message-Id:Date; b=PYTiEMiLkpRRYWsyKi6rK2bkml15tGCgAqTHhxjyL7JvjIn7hO6BeqUCkyc6bnMMCSydGi/oRAyuN40ROXVYVUfrbDGQH98Ix7xl2SybC5hs9ICMq1armoK6Hey2ewnaRRhYahU7YR7ZGHrlzaIU7GiHDLpmz9lYN2QKrWVhQWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxeF9eS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxeF9eS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747423193;
	bh=E5qnkZRLWS1zMLnsRsEPOJ8kDPSXx9KDUq5kIIYAaVw=;
	h=To:Subject:From:Date:From;
	b=LxeF9eS+kUOnpRIzsVOGYtGkGpWl6WOZRttFhxQX733UmJv+8zrjyZu+ut1ra6vnq
	 YawUz8TQTtWbNa0WzniEY3Vmo5fOJSw3niimtT4Wh+OVK8ZC9iBPRTfSga0uhYdNyE
	 ANSKgD3om5yk4x/8X3i08ZZClB9RPJsU+eUiVTWimZogxOegDOXITUO76AH9mzgmq0
	 PWBgxWBfVOKf46KDwQpnZlnrlF8nmmLmUvK3ulG22kQZy7pI12kGmnX61ois3Ch4Mf
	 oqMNoykmhtcLWxhNoZ4DXu4181nBGEnVEA/vrV9nMWEqGLw4Om4ZsNhfPaKLACrnLc
	 JYlbdRd0hij5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE72C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742319358.11016.8449020752217461414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3930e31842a4375adea02477f0c538575d0c862ab8f8e99f91ef75d4d7db85
Date: Fri, 16 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747423193
