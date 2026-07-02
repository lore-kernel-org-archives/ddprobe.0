Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B79308F32
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783006114; cv=none; b=Ui+1R1Xnx4EJ6pa6B7NGNrXINv9yczNuIyZ0/Lgx9wBthbOyq1EGNdjGW3qCPp9qzYg5u3jJr6SOeT0nBMhiKeF83EzMkcaxHhO9bEbyfRAU1k85k01VY/aJMr24bhvT0nw/EudvvlsQQJKv34b5R1aoispiFRQbrHf32+B+t0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783006114; c=relaxed/simple;
	bh=cUXLJe1uc1U/WyOo+gg44wgwHVvY5Ere/RGqmw+i7M0=;
	h=To:Subject:From:Message-Id:Date; b=OsBFTzx/17gw+RPfu74nnpNmeJJYsXjve8uD7qDfsBm3vZXJF1AwJspldMKTc6U/AFmiXAqW24mhMnQxHvBthEqreyotlSLNH9i59/tuG2kS56HpZ3JF2QfP1u6sUhhie5brKhB9D+IchWAvwlj4ZLIyl86bqpoTLE1OrHyYqQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soyXXiuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soyXXiuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE04CC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783006113;
	bh=cUXLJe1uc1U/WyOo+gg44wgwHVvY5Ere/RGqmw+i7M0=;
	h=To:Subject:From:Date:From;
	b=soyXXiuCId/ahyCBZOsSwjYsHtkdAOw0hiCkUHw7AOmrHz/ce/MVav5bE5B90/uk/
	 j8p1AI3OsDepP9mWeDbK1Ozkk+oXdnfkm00vBcANp+z3p8+WMUljKUYy/sI5sqBlUo
	 hyIFGUTx3HOysbfoCUI83rpYgNnBGY0O+8Er+fkGFTfRNpDTJbRY2YmjSLtEJPXjNG
	 slMl4hVIqQlaEB+FQQzEpgpZikZJldQhRkLhWFcpyLHnBAtRDs7WXGLQVBhTqoF0sY
	 D45WSE7yOLRvXa0tXHMJwqPzAx+cRwzJFFIZSXKKVoN9afq8kGYPhFksX1ouKL53zF
	 rjuIc+KtKrq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB097C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300611369.24468.3710934147980108063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6902d5eedebdfe7b901cf434c41d0b43acc8a2d6270b20ebe98f77b4d7942d32
Date: Thu, 02 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783006113
