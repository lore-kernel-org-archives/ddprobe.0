Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2812D878D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755709794; cv=none; b=Cpu7w8K5J21pAmq9COG3jiOo8ecoJk3CiZRlqI5VpBjC8AG+gHe8EPxUsBwnvB/TEcK9iA86s0rJfyKZojg2pRH5n4cO5yk6glmCnppvO1+wXwU24jqKyw7tZHcH3BFW1SxeeJrTqxDONYoF6PKZvWP/OwFA0BGji0t2Cab4Kds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755709794; c=relaxed/simple;
	bh=U9oOYujl6OVkvy3H3TIpWAsxX0mLdfT7YHw1cJPMahA=;
	h=To:Subject:From:Message-Id:Date; b=A+81R5cYnBd88pAM7HIXMbxO+SOKXNXPbGqd3HWsgVoTzR+0BENbuYm5a8lGAAjPW5Nkln3tZXEIDFEAFQlloEuGKI3ib/j4xke4OHjXUrCnlOTYww3r8KlxftZBWZlaNNjGSNf6e18O1FI1aVoPz8ci7BRE2KdihRyE3Po9+L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snMXVC3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snMXVC3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92B5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709793;
	bh=U9oOYujl6OVkvy3H3TIpWAsxX0mLdfT7YHw1cJPMahA=;
	h=To:Subject:From:Date:From;
	b=snMXVC3ws9ky3xs9MBuwGZU6TJWkF92Cod3fd3Pu62vJMfMN//HX5AaGDkeiaetOy
	 7uxLtVQEWlKNx+tjhGvQxgkzCNcPg28QHcOFlhd0dWZGracK/Z8F+2JE/V8ePzhBwy
	 aMZd7L4t6mt65Ij6qfDd/tL7zj9BX2X/vtevOV4hcKld4Pakv5QKKRJFVlY/sSt6aG
	 5YZTlA5XRjInrTTkTGP0pWmxflX1wiVx/q8iriTy2TjKyu2+qzjHhzBRKP7j3i+Paw
	 /9vanEm0vtvfZxDD1NUOdGVIxzWuSZ+hRkbf227bu2MFi2ILh3hsThNhU0GnNSPu82
	 F7m1KHrpMoL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C3CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570979361.11397.3800525506821832196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67a8e84afa7f1cdb36005d1a593698569ef4770edf63b8c9dd793d56f4c2f16
Date: Wed, 20 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755709793
