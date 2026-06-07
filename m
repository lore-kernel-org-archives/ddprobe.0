Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B081DE8BB
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780793074; cv=none; b=jhDJLB36STZP/2oCZ12rjI/e5q3/XaL4y67i4aUHJES1yfUptXGosAbcx+5iJ1SOwLcUBepmypc+CA5wh5tF6Qdx7ZBIong3VMg3DH0qKoFvBbKyCddqro6s1c0VFdDo8YqJMcQEziOVm8WGkO41Zcfzi9WT12yiDBSe7ajoRVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780793074; c=relaxed/simple;
	bh=TnCqaGg3karKoHyc4EgBYJGyV58N0jtt8RqHHZGFJBU=;
	h=To:Subject:From:Message-Id:Date; b=gYBHL9M3rLX37gQt0T1u5q4DcpVgT7CJ6oLWznWpukCrz667cAdQhlNEkZOdrZwBs6Q2rc4wN+LQH6L8DRTj9w1a5GhpTaGyyYLEAzDAGAE4WrDBS51ClzqAHwYLFT2xUgZQvIETNCuAi0dAqQ1PgRDjRp8oNbaYi/4sPEXPNt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ainQIkaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ainQIkaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADFFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780793073;
	bh=TnCqaGg3karKoHyc4EgBYJGyV58N0jtt8RqHHZGFJBU=;
	h=To:Subject:From:Date:From;
	b=ainQIkaJw+U8rTs7iRfK8QZgtGkx6hlTdikZKgDWlikRH7yfixeYhH6ZPb5JmGq97
	 yv/TKsXNfhWf1aP2NZOy96gwTvE6FZH8RUc/xnUw+XI4Y9/1z24D8OW0siy6qP/YYN
	 umUUU+dvl2i8+1zWEAUVw8ldVQ2asjrUEbL+Iu1o2ahAnNh/06EEMcYCYOZY8qLBRk
	 ZiV3fiVq6SY/8T5NLiBKB6KPyNl/64ysUghNbe83XG7yhLGmpvWZJ1ZKBM5ULvIWhr
	 VxuYhSeKzzIMP5fTKTnfN5+wumGpQZi39RkKs7rKgl8wHaupVztL1cLOlLJjqF+FY3
	 3bmJp5XXFk6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC129CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079307368.5813.4659823735351487055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acbd94e935431ef7e700511b500291fff3bfc056cd46a11359b6527be22fd23
Date: Sun, 07 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780793073
