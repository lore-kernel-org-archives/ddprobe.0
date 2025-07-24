Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5932737EF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753389594; cv=none; b=lM/7ptlx1YwVDjuQQqzPmwTITKeaP1qMZPmrtPkKAA+Y5H/aSrl0vv18DmaH9YjsPx1UzhoQ1FjakwCavX+s9ofyM765S+SVXJn2zZpj274EwzbNI7nYITqQKYZEZBCejQx0c3OhMoCoeMgXUGzL2IoeJ/rDs9rsWKgb1lQVw1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753389594; c=relaxed/simple;
	bh=URjWG/ecDPqhlr9OIV8keh+YKRUXdqM11RPGAFcSOls=;
	h=To:Subject:From:Message-Id:Date; b=EJUb67cha5eG4TM/UmreQRkNxh5A+mYww2R6eh3UC8BBYhWezU2yGkNARg0KQnx8cho8PIv6BCkRWzUGSExh3zom8xxYC9ac9L1Nh022TNbaTS92F9AKWx2FWt4qowwUMiGFDPAGSqIqCeMtJZozUjA1flfGJVWF201k5lJJ5+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm/paQ0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm/paQ0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2643C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753389593;
	bh=URjWG/ecDPqhlr9OIV8keh+YKRUXdqM11RPGAFcSOls=;
	h=To:Subject:From:Date:From;
	b=Fm/paQ0ebR5Pa/dc9LAsokdoO/FNHksKshXOqUWsKBKs1Tln2sEjq6UdQ2ColJDHu
	 vWxbdCZiAFMhhjRHPmtGNa8/N9RbX3twIpPdAMBHmidmG7GFhus1lBV6KyHzbOGdZ+
	 LteYMFqG0iQj0olrXzg2m9n/VdTduNBhpJ7WLe3pmoajGlXKGNKnlZXhMB/8NTYny+
	 5Y257t9WxdYFL4hgEO0vFKyqS0Vd8JIzdLKD1CHq5jQVVyjsceBfKOwbYAwkG6+Urv
	 jeZgJIe7lzQo8iMjwGe3LzmRlRhhJA0j61Nwg/TcoQQyEJQD063cdiBY8MJZlhx1fr
	 dcgApZFMcP30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBCC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338959359.530.5387849661723599419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e65e2f9df0ee10cf35eda6179503b50412e050f832ee7ba7bc148d40cf2927f
Date: Thu, 24 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753389593
