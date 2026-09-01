Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367A7426408
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788278434; cv=none; b=olO5qRVNlMLIoMAR3yNQO6kWPSkOpXHNO4wse/zaCYnkIwJG+SR8DHpQwWKwZ0rqEdFEF8EROh5MAgIZS+jK77lqILq6o2OlzJvSenVEVqkzjyu63t3CRV4bdU0yEqWszSVL0LRIpM45iF18Kn6rp96NmsEAIsF4REusvXZ6TGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788278434; c=relaxed/simple;
	bh=eC7wB4Ob4+v+IvtFkjdYxwgzOJ2G5rlXjzhlzTbTk/g=;
	h=To:Subject:From:Message-Id:Date; b=hup+L5getOfdfup+o28IOwVsVw7kFIomsAV8LSXXptx7S5KC/6I9nhcEtXiJBf5JCgnlnlA7sU4FMmA+MApYWcegS281gwRL2iccEkoYQPVHd/COG0FIcEMhg4MdjftCBVg0P4tk3MyUnNF1qwFPi/q4BYDGiUhsus1IlUrMaOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApoZpPXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApoZpPXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE53C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788278433;
	bh=eC7wB4Ob4+v+IvtFkjdYxwgzOJ2G5rlXjzhlzTbTk/g=;
	h=To:Subject:From:Date:From;
	b=ApoZpPXtjKIGpUAhy4nv0C/pc5j2/cSqQfjj1cz0me31KXBHHiIE0XiiFG6Mm0rLQ
	 n8qZ+9Rjois/ZDO6MdpyZgLZdXHt1Ifv7OABRQKTCCKVCy6ZXuuMHRdt/2F1ZiKh2I
	 wUB1Jpx4zBmGjaCgTVT6igD/euiMXEzyCS/4jYaBdipbj3GpARk22QtP4CydtbKwQg
	 apwW3l+0VvPgtajrzlSrYw0KTdNWi8WXPt6Yq88na3sSOGR6p3kjP7Pt7fTC3awNtq
	 MwEp3leBNPGLLnfOVu5EiuuOUiaJaWLKjktUUKg/ItqzxXnH9ALzrNRdEguT+tVKWO
	 COl+TnU274iXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A1C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827843368.10495.4184995271010423467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54736c9a4ffcb71748b64ff9567a2eaf2dbf350357d1e21fdf52bc835b63beb3
Date: Tue, 01 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788278433
