Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3E13C8FF
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757987394; cv=none; b=tdt6ZyLCtn8QHGiVzgqbhzegPXw4Tq2SKudbt0WnBD4+9kWW2fJcWkIlvS0wonUQyfhv4OPbcvtX07JdyuURQZyKWxcRSGjHsKzV/yOmWsc7nq/oPoiXFgYHcpEUaC1GB5faV3Pe7XquC56mKNDXSNs674a4h9uts/i+MjxGoIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757987394; c=relaxed/simple;
	bh=f28TSqKgDjMbP/IqGIzVLHjQUjaNdjdq+Za0lX362/g=;
	h=To:Subject:From:Message-Id:Date; b=Vir0YWJzXyQ87IwCnocQ/yk3TW3+1KMGSyG63Pwkyi+CAPW9PrtLUxcB1Wqhp6uZxGqCJbJF2EPyrDfnOR3aqASN/Y6IjPrX3AFNSD8vKlUBiMK3pKwp2Uon8l7H6fDwlkCZTCYW9TdkngQCi2IdznFjcbYv4UjafQMGHCcvAp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwgCu8tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwgCu8tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5401C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757987393;
	bh=f28TSqKgDjMbP/IqGIzVLHjQUjaNdjdq+Za0lX362/g=;
	h=To:Subject:From:Date:From;
	b=rwgCu8tzJ9aSuMvsQelzEyALumX6yC88mmYF9xXyJHUUr3xGnlhZa9+hmOlZhF1HB
	 JzHm+9V4K7O+5zYneOsIvj/2ulPygvQmiUdxbauWZ6hQg8upNgQlUotqh5iHIlGJgF
	 EbSTfoOxsQmyeFzW1gYM9+E8gzXiSwgKQIJUEyaBjGEuVgQqrKJZXiYG+P64SC8WsN
	 Z6jtCmvz+lm9FvEtc6v6cx3LohuRwbc4etkwKcn2TKgtDENxxaqlbOFGrQFdMn163m
	 NUGLysaDm/D5c+QIwSy7mhwbBTbAuODDGxw0dOhd/+WCy6joXL44/JjHt2vu0JAZ36
	 pZp0TWjp6FNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D1CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798739358.28058.7151368140858150337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96ddc64aa96d735777bf928142727504984062f8cbfe072c40bd3a1f6bf0a78
Date: Tue, 16 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757987393
