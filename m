Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497D2DFA29
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755793794; cv=none; b=AL6jHpMkentW4cXk8pOxwpjioZXyF+6ws4RKBqu+U4l6Jc9apLLoSMPuEoyjyIwsfRE4anULj4+ZtJOP1ms3yHndIpoWuBMs6weA8lQI6Tr0clWuj8KfAXefMmfnajbVt/KdG8vPXTVWTTkNn4DDPKJ4CvXHpa2may9lErx1OHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755793794; c=relaxed/simple;
	bh=TTFNzoWRwXahTuwTZwqI9X/hnQivljxFezsZnbJ9gR8=;
	h=To:Subject:From:Message-Id:Date; b=UWnvP2aZeFXgR2litKHmHpcMUp1cnnMG0ZdLvf3HXNA8bkjYBhC48iwlLhPQz0PY/TgXsrIKe71p2miuS+txq8yo4mCV4i5aJWjJmaN6ntzfdd9IAiPJfqu3TnzTbLzVFlD06pSUgh8DXjF04SIST4KVC3BwoX8rdJTYIVJ0Mlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT1l5m8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT1l5m8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E91DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755793793;
	bh=TTFNzoWRwXahTuwTZwqI9X/hnQivljxFezsZnbJ9gR8=;
	h=To:Subject:From:Date:From;
	b=tT1l5m8YFzAjrFodKtIcD9xH2XDXDJ+jDZdL1pv5aq1quGV8+IJ0+fTlj3ls+0yv6
	 7u+nytttCYX2hGtKiAfI9SWhRq7WIMf4NSTpriB/4gKBoOzkBEOZlFwtjYfXcb54a2
	 5W4z6+jtMFehJRqh95HULpaBIN/aiKypa+UOugxnm8nlWnvkuRyNiAnDd0viwXwaOQ
	 jkOxBvynk7Y12RI0AprWtHMKa+xhjxtCSLxdCKDZBwtDQ6nx8A+vbGrfWKbnwmpgA1
	 Si8+vLOmRE/IbMwC6PJwsGy4+ik8LQXSv297unU50dQkj6+lvv7gfkjF2OcqoQDp7b
	 f6bCp0vRGfnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE9CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579379357.31448.13598439093524706205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c2688bac9326cfcd2b6ee9dd7955d503cefefa96876caaca77f09418280a64
Date: Thu, 21 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755793793
