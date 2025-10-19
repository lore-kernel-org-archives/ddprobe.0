Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EAF354ACB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760890794; cv=none; b=or3Dm+CdzDgquymSMITWfSrIOun5VijQ/c89V4/Odl/6jV1MAavFrY0LjoRolvO1JBvyL/pLeg2So6UNEIzIvhBOfjCrOhLAkso39ljJNOTOu6RV8oACThA1Hux7Vvqvrzrwb8U08D8UxPqP3Yf4iwcBOl857w/YGeQ04VyKOxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760890794; c=relaxed/simple;
	bh=dALjkAkAKzA+t99UHz9rvUWLczJg7dmG6U0OvRya6Zg=;
	h=To:Subject:From:Message-Id:Date; b=k4WKynig21qgef4sZ6KyHHVlwSyAdWwwzmjKE7Fm3ZafSEXGJGzEWI4P6TRfueTXcltxGhEjIKSAtFlrx8osQVyC8fIwUvFsLRwCsitJME6tR9FJyKsFJWMH0ag5dnvkFJXSA45Vo4dY5scBQxMCLnXNYjllXnYVxcpXybd+hhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbZAomcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbZAomcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8498C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760890793;
	bh=dALjkAkAKzA+t99UHz9rvUWLczJg7dmG6U0OvRya6Zg=;
	h=To:Subject:From:Date:From;
	b=fbZAomcsAHDWoj0e7dhVTQ7dMwyuQ0Cg+kmLP6U/Qdc3GwCoxEuZj3GSBDa8XHhci
	 GMQhpXVHtVqBzt0mMrC42XJbn2CPmAgCWKCZ6dzeaeMNykkPt7UG6wSkwKoBfYLcX1
	 b2neXcmtPgGS7bjUKkb7ndyX9Vk6bqrfHDs9q2nWENSTcqS2uOm7hYvJig8VuzgHn/
	 MZYRSgsj2OH6wGKvS71T2F7ROhjyuOPphhCz6O0D5GL4+beL0TYeqGTeHjP87hXodQ
	 cxfQYHWelPOzJov4PQAypRRxeOSREf1mbk875bWOXwK8CgwKSgdpBRQEFmH7oH4FZS
	 IhEjJxyjSgZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089079358.26353.1154235027148189740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156556b3451b292a1dd78a7f804c2c6dc542cff43e4ea588857795e64771ef31
Date: Sun, 19 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760890793
