Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B17D2C0F79
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768778034; cv=none; b=qAirDU2KZGkQdNBPU45wg5F/FM9DsAx6kMJ8NE4yMVE2QiW7L1rUEDxGGE8acm22YL8WrCHQLRjc6xkGzT+n+UDE+f5iXyHSFsJR6xi5rFv44050AI8W0eSmJtcl1J1gQuy8NBmrudPM2+n0M21+KD2WzfYuedel8hCyPelvVH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768778034; c=relaxed/simple;
	bh=u+nm4DrKGcYnFf+78jX5pMCDHb5K4MEwHWL6GKE59L8=;
	h=To:Subject:From:Message-Id:Date; b=rLcteLDYm26iofwAqdwf6tZh99jk0HHBKfctqACvLHn1pCNIKy/Y1zMzUvmtMFwArcP1w/SkfhCn9wUOSvoNJHrFHDj70RpILD3rUHZG4N8urc2rwsNZhdUY/kG7dQV1EsKfahIIwJ0KjxlJ/RjC42mI5p9xVPAW/dvPq5pT2TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV++GGHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV++GGHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D68C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768778033;
	bh=u+nm4DrKGcYnFf+78jX5pMCDHb5K4MEwHWL6GKE59L8=;
	h=To:Subject:From:Date:From;
	b=CV++GGHQckAXT1kvYH58S6XbUDdCpXR5pbYuinb9yg2Tz3bB1KP0JnHcgjAzP7XqT
	 z2FYLpUDa0yVLXk9hkJM+V5gRAPc0RtVAwPr7Tr7/COG/oKV1Ev14sR1m6LzKrkjae
	 fWCsh/qDkiYbnAayJg7OyWYjauN7hZO7cOVqNRVQIRB8CNRvRIW9PiqCZJu0SN1S0c
	 I5EpLjfYkdYs6Xc9Twdh/hZt2IXQmm93cHUsRZv4oUEowZAmRkti7Q54lDwOEEXD1V
	 XtqBo0lM5D19jP43JsY+M2hqDWY0WAIs1aR5+zGzCTl1+dZzmnLYmwLynHK1LMckHV
	 fIywjgJEHaE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DEC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877803357.2226.655237082168925227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f28daacc1ddf6225945ebc0cca2a829e7805dd40f514717df52acdf7d20ee1c
Date: Sun, 18 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768778033
