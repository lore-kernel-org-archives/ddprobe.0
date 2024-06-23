Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0718BE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719109343; cv=none; b=WXasx3m3qQqpvBYQ/sGNQb7F2ZQDGajbAuxq8+fqvs7EOfOGDT0ACq/gtMRtVRs7Jq9o8lNmQAO9V6lbnWOzQE+1x2Xjba6RUkgpGkEC1aATTXQMOqmmROJqzvup03qWqniIoPq1ivHgwrhi95dqh4QJ2QqaEBkWuKs0CLOKHrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719109343; c=relaxed/simple;
	bh=jgfUZ06ulVE3COZh2Ed4hAYgucryeaYDOuWuTpm7/iw=;
	h=To:Subject:From:Message-Id:Date; b=dPFGKzRxkHPbyNEMZVmC6GEQTl2cva98ToG3v/9w8/j1eXQlPgcp9QNnpVMsW9F8/4LS8Jrd3d5DGq2wCWwrIYPCOATrRHzyftQ9mslZq5FIJcFKGE6uG1qgDy9LgJyJITllosSFnDXhJyFuDsiG8SUc/0kh2KtFnaLlO4d/C1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5juKTb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5juKTb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC286C32789
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719109342;
	bh=jgfUZ06ulVE3COZh2Ed4hAYgucryeaYDOuWuTpm7/iw=;
	h=To:Subject:From:Date:From;
	b=B5juKTb7BKEWkdh8C6RmELQN7RS5xOKk0Cf7oB15R8rK6J1Yoh4GXT2USCAWsYq8k
	 6DztS9NBI40mmy8Ahxq/uOBXLwbIuv0sppyCvMGCbLtly0HLDIvtq/lRu3x2S7GaFP
	 mGq8ETWS3HndiUh5MW2wctcZcQJAtbmbjpDDhpnybx+Xl8WhbA/+b60jnmHqUDBu/2
	 Ph6j61RDZRbYw+R+MbzecAwZYxn4WKpvbz9YycLpCXBhy/O/2KPZ84VJ6T0MzGPzP4
	 Uw6PglaMaXKHKnGCFw50N0JNJcoIkHzWlkYcfzuKyJZO4zGUEHwfJsNyrSFCFqftll
	 KitLhQXs/vzcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC14FC2D0D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910934276.29685.15395997259776394077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cf8304aa622d24f3dd8d337d1fe0390dd45c61623e9ec219730f3bbe5c7f91
Date: Sun, 23 Jun 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719109342
