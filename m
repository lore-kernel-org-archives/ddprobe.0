Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817F6F06A
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740619134; cv=none; b=QzkHVFXmXL/MhJsdCD5wgw5ozmXucyo7rvDniqGjXXJ5pk0Xdf1oqwLp1p4Fbqg7VishHRfZZUqCg3ZEw+JR7/9tafsk8DdrsqP/XKCc5maQwca9w1I7gD8jFyUtYENg4kXLuOO1qoQNAEfw1F2Ia+r2g9OImUa8H9pzQPG1BwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740619134; c=relaxed/simple;
	bh=QmbkuzxWFg87GVNpDDQ3nAyRxI8kR2ZNeYS7xHH5dgo=;
	h=To:Subject:From:Message-Id:Date; b=RG2T+FYqmG3Fk4cv4QmPbuRQY75IgRPlF/p397JrEKU5TfxEFNhfdbyJ1hsle2mu1Td3b89h2Ssx0cEsI+S41IS3SOmslVTk7vb/gQvpLjJ1xGFVWU+gGHOfCNtoL6EP4+ekBZ2FQbZ6XOX6+oQIH8CzRMjrhwZ58oj3okbXbRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuaUKmDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuaUKmDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB88C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740619133;
	bh=QmbkuzxWFg87GVNpDDQ3nAyRxI8kR2ZNeYS7xHH5dgo=;
	h=To:Subject:From:Date:From;
	b=DuaUKmDY8l9cQobP2tyD4nqAGs1zT/q0TJg4l2yRZ7JheHrzED1xCGGNVENR/VpXd
	 lHB5V5XXLf0Q/uQmeE9B0iOkXvrn3YLsXalojsdXs1I6g2WfzgOSFs1Ye4n6Ej7E1k
	 xBRro+i0y2WMgaGyg2UlWD07Nv7QhNWy2Dac/DovCWtHsOWQq8yxmT4lKjOaZbGf3R
	 Tao0TEB0DCDNAETrNBz9Pa1JQKodq3Iw/4AlrcyE3afykzNZAdt9GdkmIaNqK/rK7T
	 suy+fIGlV1PBNDr787xxw4z0UyiXTy07sMNpL2g9ux/GRK8CdmlRUUmavr8p2lMuzq
	 4XbvELssJVZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9728DC021B8
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174061913361.26900.3096090771431254521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02a5759e6f5d4e36f28a40af1c326fcaef8e47e5c8b75d9c71bace0d3eb3ca2
Date: Thu, 27 Feb 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740619133
