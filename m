Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEDC21B9F1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750932594; cv=none; b=aMPS0183JQkrVsxn9QLVvBaKojiXsM6Jm04NVxH0WE7jOzBvLLanYgd0R1PFBUXcDEV0C2alPsstJAe8Kk3RvBXBs6aUEmrS7Ma+aLWYRZLuwvZ0m6eWTA5+ljQ7Ake3Lo5RzBporMWB0NdGIHZbHwjEORAtTp0U69B1uYzvqHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750932594; c=relaxed/simple;
	bh=xnoBTtdk1CB+9DYr75Mi3ZPZCawSa64j57lAfjfy4o4=;
	h=To:Subject:From:Message-Id:Date; b=dR42ToC6Dn5s6aK0KDAJE2VADEdngc1ktIL0Xw21d1Iwv2aNzw+m3G22LqW+pkjvyWf+yw0o1KPr6WzR5l+APykGAe0BXXxO/hQB3sFB8bSPL8eJMF0ccuhirzxZ8UvLqx09YywgsQECOPWVHg6q/1LetN6sXuPpzZo2RQSVv8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHBgEjyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHBgEjyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F15CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750932593;
	bh=xnoBTtdk1CB+9DYr75Mi3ZPZCawSa64j57lAfjfy4o4=;
	h=To:Subject:From:Date:From;
	b=VHBgEjyI9QZbfHZqfQHhYy+nWcKGnDNIbGmm1XGUAJV6kUJZcNkDJXDoEgSS0Rori
	 tCqfjx2JpuGXIIdiLXxj4KTbrodvdMvHpA0k9SE1PIn1F8r059Pl13D3s8piB04EBL
	 ReYzm1fXfz9GZv0DH7R9ZmYDWNko7uNzTS308vsjdzEdUtYZg9WOOuYveyJOWWIIlL
	 Nk9ySOEJn99dJZrYbIxveZUaOGe9fT7Y6XM46mpPM25wHrGs2XcWJ61umBMvCkG6BM
	 RkwR3stajWoIeP1WrYBpU4V3TMMSCtv7T/RL9Kp1Clp1YVVicJSzjvcw/cOXlwfhNV
	 AaI0EvWU6YX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED7C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093259357.10313.4906410846267247909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f30d5a61b2dada75c7e33a40f01f0272e5009ad60b7232c62da031f48c55894
Date: Thu, 26 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750932593
