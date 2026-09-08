Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05F636C5AE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788842434; cv=none; b=OrndJd7Iij4jq7sVOrX1e8X8D81hj+/GIOZMVYqXrEnDIh9VKWfXyCPb9sKkhjdX6KCJJw/c1RV55GP7W3thkkmIecuQFtwIEKpdP8bUpecNOlKhkxc1kUb1kkQhLD7vuOWbzl2NBJv/GRdqfZagFNqLHsrnWlk5/P2/tjYf3+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788842434; c=relaxed/simple;
	bh=Bdp14RNTc+gfOsRnkqhhvLn4jP9VCMjjtuboQ1/11BQ=;
	h=To:Subject:From:Message-Id:Date; b=K24AubNWkePN/Qa73HlVJNLCycms4KJbnXmmFjpWHz3V3tO4nVGpcu/qY2xDIbq9dR4gsBtcZNH0sf98KGJ6P5yVLhntEdts1JulA05tjBnqE2d4IktTN6yczdIA8kfZRr0yacvTvmDHQESpzF03aJeuG+k2eLNLBq5qmzLQET8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk8q4e7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk8q4e7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BB6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788842433;
	bh=Bdp14RNTc+gfOsRnkqhhvLn4jP9VCMjjtuboQ1/11BQ=;
	h=To:Subject:From:Date:From;
	b=rk8q4e7ws4So0K0Eq25tilxzOjncoRYy0cSnEJ0Iu4R5XAmrbEe2L4ekPpo6Tkq9t
	 MAY2QpSvJJEqFwu4FGqc0B/vHm2g45cUKT+pEzu74z/DHg0FZmcEJBmF44LzSXsXb5
	 xss6l+qbcAHTpRTJukU7gQzqx8FYtfopYCQgJapMvvxVEUomlE41H8oI6SOndErcr+
	 MairlCso800V2QOql0ddiib6xoUT9ivfocpaWAHgJnbkBsyF/O9IP+KMILbOkfWGcx
	 GWlG24x2wTaT+rsviF+K6xtWOgfiO8uAbqBPnP+hg4y+heUTPkrGYZ6hICP33D7skX
	 RPtmRVt+e57RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C21C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884243372.9845.1318428053025740198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec09b4e23116fb035b4b209851449742a18fa74514f8be3491ccef8a4048c9de
Date: Tue, 08 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788842433
