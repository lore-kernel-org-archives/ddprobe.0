Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2674613635C
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755914394; cv=none; b=YnBRuUUvwNdz5JYXmg1Ul+nPwx+OpRr/dm1L+uwFgtkuw6ajphX4rYm6PHc7+YTi3KowmQVjo92CQlBwxsyU19N5HsfMAZBInclAcumGsFtzK4YYs5aU3mPq6DsCO4ed+bUy//cMCQE9npKBwlsgpxw6eO20kl6YVoX5Z5ETrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755914394; c=relaxed/simple;
	bh=YVqojK0CJovt4GvWpmc3otDHTYWSNyKhVIdu6PyI+18=;
	h=To:Subject:From:Message-Id:Date; b=DI1OYiZe1kqh6kaPNoH+yWCW+NsZ5sdJBYqSjsLoL7YK3bDmH+vJW/ajL1WmPjN8Oq8jsohycmgSqlPK+2rO3SX/sG77aEmabwHbunrKGtw/wPU0kmQf89GYjFcPc7zvtZoWsNZSgDNLqNYwTLTm+Wnmi4SJv9tQUzRbC3djSY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag8rzHsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag8rzHsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7EBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755914393;
	bh=YVqojK0CJovt4GvWpmc3otDHTYWSNyKhVIdu6PyI+18=;
	h=To:Subject:From:Date:From;
	b=ag8rzHsEvRETFhAkbrPiSkQ6Y9xgsKZzg+O0i2fVT9CVcAuXDpc6CQMS3xmI1ebJW
	 Xe6Cy1cz84Ny+eho9BsIypbVM1qOYVtprSL960jxJ2h2ROqjRAqYk/pmsBtlS6v/At
	 ldF5m/qqAc9UFMYoZdVMhJ1EZg36VTdsxeMXeKu/Iw2H87Fg4SVc1iHwSXBYaX1EAa
	 GuhcCvKGqcDmyud6qw+/5rrNkDw/iHwQm/HlObRxQtdiSlgIXpa91hweCrbvr7WA3L
	 YBbNN2SLb0L8NTIuDjNX+tcEVQ5qMT/RMWIta8jIMhNHNH9Amewq/TbLQyV4kPI2Lr
	 XF4yB2PVTm/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A2CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591439357.28616.20033254735463721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03d282b0736a7011b47cda101ec8677d53ae4eef6abb824cdfcf6d8c0042f23
Date: Sat, 23 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755914393
