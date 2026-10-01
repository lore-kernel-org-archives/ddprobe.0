Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B3651B161
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790874635; cv=none; b=AnxvpkQG3y2qKgvAkXJjU3VHXtO/Fm/NKcN3fNIkxuWhaF9krVWvRRg2rkHEwA8dm2zHz82cPlE7AQKgUX+2tTS/+t7JYRghU+HPYuL4fQqGTtyznvlPzL23HyGQiD5WpjOEyUnVAPD0LuRafv76YTUEv90reB4RK1SUb/zBT58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790874635; c=relaxed/simple;
	bh=G2paRCqleb8BHJLMCOp7aZWj0400hlc7IPno+A4RgWk=;
	h=To:Subject:From:Message-Id:Date; b=ilsmJHNFCw37B6J7+d1YhLdXlP+N6fHjcA/vFgWivhNazyo1uLjFbECF7BfRVLXwjm4M5BlzrZcd8esOwpYBd6bSRvL+DHR70XI3gXR6Mt8Kql7g/yUeLXjiX27KJ1fkq6q8Guh+Aq93H0lAL2CD0AUvD6cFZQc0hkNXYvhvJLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqhB5dMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqhB5dMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68D6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790874633;
	bh=G2paRCqleb8BHJLMCOp7aZWj0400hlc7IPno+A4RgWk=;
	h=To:Subject:From:Date:From;
	b=TqhB5dMHbOKFL9Z36n2aGxc/cVQWMitzr/vcXCXcQNsGu5HTuHG5ar4GxQ+rq2CoJ
	 WhyedGKdyo5Adu270LCBubrAm9hI+YuYIuQIlXu7953H3pZUVkmL8Scu99YvMnK2vT
	 r74PfxDv5oB22qbU9yM/LDg8lXK/bw1y+5JtYUOz+XaixlH4jcaakKVuccUIrJRfWw
	 XIK2mVDcp6uQxMwmR7vbSmJeri3R/1aUQKRZuhpgdeFpDH91BfnyiOuDpK/KlZle08
	 v2BcGg0DZ/ZmTquH4MHAuVETvF/YXeSbMb7dnCipAKbmKg9Ers7fdt+6nLkT/XvE8y
	 rSxy2SyOtHiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC988CA5FCF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087463368.17156.11660562670332336133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e17e30d3352db8bddfddee8709d1ee4d8093254961a0c5919f56beed7d91a2
Date: Thu, 01 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790874633
