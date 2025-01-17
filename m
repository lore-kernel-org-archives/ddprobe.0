Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4D1A726B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737138954; cv=none; b=l52GDPLS+3ar6bMWR6IV/dJeEdvasMrevYKRIgo5m0UnQWCSwyFMv7r/7VQpcoEFZcHegby8AeZN4UeiBp/SLURy1s6fz0Cfx4gukUInCZn+tjMxvqm+023dyoXzUutyo91y8qUDZky84uTw7RmxTiYJfj642wHNHjB7gcle+H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737138954; c=relaxed/simple;
	bh=8vaOaBqAjeThqiY1azHPVebLYGU6GlAqvMMIwbPECKE=;
	h=To:Subject:From:Message-Id:Date; b=Xkd0uQ8ad1J3z7iyfZjbNmlAyhYCGfJSLXZc5hxmPkd9jviGZpVgo6nRo/Qt8ot5aRipFhMTfOfc56G4rvHXLWQYKZLLPHl/ugT8PVNHLjjMEBBFAO6cULtMHrzyVnwI+nhL8zbVrH5GUAQiflL0QPLPpeCyro5fZnghhIsobB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIPnhox5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIPnhox5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C81C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737138953;
	bh=8vaOaBqAjeThqiY1azHPVebLYGU6GlAqvMMIwbPECKE=;
	h=To:Subject:From:Date:From;
	b=uIPnhox5atSYa5Ry6mD0WMsCHdLWVSinujUfsDoaG/Ur4Z3a5BYmhNkJNE3+u9eiF
	 FlrgJnEKRWeTyMp2Cf4NrREf6ieJ2pwryV9DcKBXOMbGtAVcOZgeX0pxhR9csV8HeE
	 V158t7t2wPjRwxRdA0hj86xsAdwLAmdcYNOcLDnBLbE9PfEExlOi3hIa8CR/maRA4k
	 tw2jETcwE9UXMSKUkXyVOIs5DE7Qb77DHui8uQcrw/5WaNxFrFQJO0drLzIRmjo4I5
	 XTWYveXYbED23RmenAyJ0Xhy9AQFLxzm+qWRvbkgYOjUAUyXNZ7T3KaanXcnnIn5LL
	 KYRblN39KB9JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF31C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713895362.23284.5101882453507681672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bdf808fdcb22c5e28d2298ffcb6220474fb1e9f005c0f28ca17f7182c90ba2
Date: Fri, 17 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737138953
