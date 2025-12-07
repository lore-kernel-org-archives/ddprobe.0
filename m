Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3235966
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765088574; cv=none; b=YGAlh1gtXSOlAXKaMVTTM49dGum3MC2Pc8tHtsg09lPOHQncupeiAa4VlLB/bnQdFoAQPEpr4mbZsGXWTr15mNwNi1Y7dC/Xm8uz2r38lqfjtXGPcv8ATv+Zzyw0D5yR9Y4iQMrFudyaXleZcURV5hHZ5EaVwzgkFNRLjjfM3Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765088574; c=relaxed/simple;
	bh=AfhU7RLOFwRx271G6Rfz7ET5BSiReQsQLjSPXHOYqb0=;
	h=To:Subject:From:Message-Id:Date; b=dCX5xXgeHKh2E6iQz0QiGrYndBjhoplT/i7Cce62Lox3bDRx3Xe/TI6lCujQrJJpU6jnQHbyk2tpjHBqyThyvnXKUCL8C5e+/A3s87o4D6nvSD4UlwXjW8ySMI1DCYGH6O6/nbvbMOYIAbowaIfJ/uoXh0s+XtIZl7WUNU5a+Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFqdNSVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFqdNSVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765088573;
	bh=AfhU7RLOFwRx271G6Rfz7ET5BSiReQsQLjSPXHOYqb0=;
	h=To:Subject:From:Date:From;
	b=sFqdNSVa9oW0YExMiFv7PXAAhyfloxS0ic6kf2zZqrG/zd4Cru1gWE4HyA7ZDabfL
	 6pLB4NQ39UPUWLwF/luHcONwLSCcoYBOVUmC/7NKJJWjEaDlP3WyOQB1GPO27k8iVR
	 yP+T8MoBcQRpd1ThhKVdz5y9kUAbfcgAX2BBsc7h9jY1uGOiBQYIArAUCB9Lsgi6rA
	 kqgyCXQLnSH31NwJrYn54JlYssXPYm11Q52zBGfQa4K5n1VKXhFW9SJCDiHfYPBiO+
	 pfN4n1mUu+W3NpDCAS3qRZIaHWvjg0OrF5XUymQTzsR4XdvzYoCNBOcODd3vPpSYau
	 ho4hjkP1XmOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97992D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508857358.8760.749726949779062081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a6d1d9d3bc22565cb9e249a8ccae3a17b03d8f9293535b288a5a977c215f7c
Date: Sun, 07 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765088573
