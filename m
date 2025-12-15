Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EA6322B62
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765821174; cv=none; b=eUFgFu+FhWXouujxdaPMLEJJKBc98dMkWgj8yOLbTick4xJp8IyZuUmJkxKNU2zpiP7RRb+wHQ0zPn4dLmJV7NoaRfN+jw6G4gy+mqncWKaoNYC4LtvOYYksXLXqWmzULAoVuBBWNx7TjBWCl64LoaalNDPXRROCTqmnbLxD7hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765821174; c=relaxed/simple;
	bh=6STZF2oxL3vscA9ClJO5esJ/rbhtrfcyY5v5QLnW51I=;
	h=To:Subject:From:Message-Id:Date; b=b6MsRu9O6ZVcgB3vX/5Ps5dTLQhohJwNy9HuSh5EUZmlkvnNiOmKfwufzB9PcjOcuWEl9QrakZDzpHZJtQ0cnpeFTyeaFRwmcs+4rYhxCY1DUWU1Sa+vdmuM4D00hqkh+GeHdT2DwgvdZlRNaN6gpE30zICxA711/QpheS4kSNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg0v9JMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg0v9JMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8424C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765821173;
	bh=6STZF2oxL3vscA9ClJO5esJ/rbhtrfcyY5v5QLnW51I=;
	h=To:Subject:From:Date:From;
	b=Fg0v9JMXpYz2pQNpLCuDpXK5mw6GeyfOOkUOMaEhuGv+L6baWQKv7crqYxKf2mWzL
	 hmWQP3Gnodm9FdTcRKqC1MR0A7o+IDOutdM3ARfzhjbssYZgz+7RhGdTVBKuUUNLld
	 yAFY99unB25bIc9cRTNk98iuEdEQggk6hM4VeQ3Uok24+nCGYuK5Cvgnfu9WfMSsi6
	 xXl4g4jlKsvSqZ6SOSYqa3OeagUoZfFowf1sPVGeqZL33j40WF92XikrudLAFfNHlK
	 BjHGEOvbT3tw+gvH0Brp3jC962rcRT4YNc60itYDxC9a5E4lnW8qDceHrskPQ+Loe7
	 g3dzECQAVXDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E15D5B85E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582117365.26868.3680659368830975161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f51c096d3e3e21aaa3caa944de18194ff53912a2bb9b4496a53992965ba9ce4
Date: Mon, 15 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765821173
