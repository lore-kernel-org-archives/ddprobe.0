Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C41D42077
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713781823; cv=none; b=Pi1xa9ptBRpQZFRexJoIbJyJ3NgHbjBnESRjFonElVfZT0zY6qczCSty/kZ7rFclJgojAG3EhoHhI74ZqxsMg6OgqdnPaU8GCikSmP9EhXXSsSkYoUd7/lGUYrKp0JilRBeMNoU54in8zbbCNjYMdz1S0f5zRUDpKaSmfH9nonM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713781823; c=relaxed/simple;
	bh=V9RBNsy/pGn4ZonwMwmKynzbkcUhi1587po5Gb78kUc=;
	h=To:Subject:From:Message-Id:Date; b=BRRlXqV4rdLDuny+r7aoO8f0a9anGfUTVZCvRsP2uefLq3oAbTL/vOzKiKcuZ/7C76PgDAsOYwa3qyy2dpgXVng7wqJ/mYw1P/j2J2MImyZbD+oaH43Fy725KPoCdbJSUPHuS2Zmmtgy5xUcUvXikfMSrSwjzx7+rep6xK3MVbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di/3bAZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di/3bAZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B6FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713781823;
	bh=V9RBNsy/pGn4ZonwMwmKynzbkcUhi1587po5Gb78kUc=;
	h=To:Subject:From:Date:From;
	b=di/3bAZmcc/xV816hWXCOVlJgz5+ibz0mvx+6GERbv4KAoX1e8EFs0cx/J/S0Z6/I
	 ymuo28a+lUflch60PSF+pJIjFkdVtQwZ0FRyJMMzMsSTZewYMpiZYM1+qanmG63S1q
	 FiDi7FJNpXufa7Q016MaqMLGG4m+jvmFevkfXmYSaAl4O9LyJQWpBQRclOSl29gP6q
	 JK9FAnnPY3b8tfbZr3wToHheiEVcU0UYyYKLvaBstbxZ5zZmJm9ktBJxI9ivGnpJq8
	 QUPzfCjOJLzFNd7K0EVq+kG40SiGnFgR/8euC1xamxMyzbId2xWbsMdO3wcteac+MD
	 Fhva5Zv6C57Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D0BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378182285.32076.14115916670986735865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d3c288e07060545c44529ac4229c2bd27db2ce67bec1b885448a21a68f39eb
Date: Mon, 22 Apr 2024 10:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713781822
