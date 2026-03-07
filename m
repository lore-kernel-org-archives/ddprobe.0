Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577672C11E8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772886894; cv=none; b=M7FhtQwtBD9tS2T84p570yvyhRIpvhonj8hFNGXssoIeP9/Z7tOhrZjmFQWAPoHSe2bulVeZMy1cjbUeJyD10Gz/KynmE63tFj4oIpyO90cQ4TkX6CzkXdN3enk26gLYvSkElkyxWIn7mVlOso4UCFJDBK+IQqo2RbHW6YNpriQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772886894; c=relaxed/simple;
	bh=SuJ8CEvPQrwS6/ARhcnuVlXrhnLLX5h8aVTUuxVz7wk=;
	h=To:Subject:From:Message-Id:Date; b=W/uLuujeJowa4d1QYct5iuvbbh59T5o/6VT7BCP7ItTheoYo1oOwfASibkB30PoSbru++voS7yUry3cJhljs9xPK2rCnU4Ed79Yl/mZpjGV3Tp9HpQzcVKGaYhlgXHdz9F8NDdgcEIUEePoWRlUHRLJjgy6T3P5YVH4x4fdUiso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5D8bZXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5D8bZXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2175C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772886893;
	bh=SuJ8CEvPQrwS6/ARhcnuVlXrhnLLX5h8aVTUuxVz7wk=;
	h=To:Subject:From:Date:From;
	b=t5D8bZXSWYJC2H/DFygq8kXDKCFtDbdNQEDUwh9KOwZJMk9371+JgtwU+DbzSjawA
	 48jeISY1dGmRxGqAU9/fYIf4X6PWHoci7WSP7fE95ZHuUjyJdOsuF2sj/E+o2vfnZ+
	 k5Z0pcW0epzN71NSsQ4VKGRVFrZEfzN7Ksp0lVq6r5BqSa8c0sM+OuLnb/r0XFJ8+3
	 d02tOGjCPBWlM436SuliOjnAUJhvH0BcdblJ2MOH2yyKS1biWqd4v0IWuysoPsgSSx
	 4tN3cMFjZ0bgsHYT4V+vt8IocxHaXfWX/WR4jVqtTUa/K9PoA4VsRnlktKeDAgQkr0
	 dqQTaqBG6n7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8587FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288689361.19137.11907075447978793156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5c7667065072865ee7c8b8718f8c4e6b52b1254be26f9ff6fc064e4c46adaa
Date: Sat, 07 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772886893
