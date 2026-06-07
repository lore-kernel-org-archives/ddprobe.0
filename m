Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBFB33262B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780874074; cv=none; b=d5n0aWOuODi04xZmpA3U0rLcCTUg5XBsUT17XclDTEAcUpS6wUIM1d+hGXPNHS15qJiW6mtmVYTgSoOGKnDsebUHwhOkkuFlK3aDVhCO1Wux1ZslCvvsUEP32T0IZwUHN5LrWBQKunK3E4Rwai0XnFPWms7amLu2x65/bEUttic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780874074; c=relaxed/simple;
	bh=30Pk2Z/5fO2zRG/DXCoeKntB1mY87fa0n2cp31CnGIk=;
	h=To:Subject:From:Message-Id:Date; b=eIx8+XM8QGCocZBuAdbalzJli1ypK6CWubbaP+/r8urbz4CTDrhX7XwwQqQndWSXq1szhk467yWWI0W8Ntga/8gHEI/JugVsvWFRDTWlJkEJlERyrmehjhr6BFqc6Ec6KUB4n80qZEI0VeqIchWt34mFM3UYCqPjv7rw42Su7qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8Nd82Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8Nd82Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7843C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780874073;
	bh=30Pk2Z/5fO2zRG/DXCoeKntB1mY87fa0n2cp31CnGIk=;
	h=To:Subject:From:Date:From;
	b=O8Nd82Qio5aRB87IlJxjZMYvAm5w/zHEb22qhHaHweMeZQ+cOLASh9nsWS70m7HeH
	 tbD24FQ//y0tKXuLxpIjmpDbFKooJ37cidjXi8nSiOHltZlQQvPJIUnHiUr3SzOeVl
	 kB23hZrdyCMpgg2HaCxlRe7LQngqQWOvcp5Zd9T76MXzzUBq8tDla9V0s5Bl45LO/l
	 HbLy/mqXQjwBXJa3FR082P1zwF6QHGdepY1mmwY6XvqgR+LtSrn7cArjXy23M/qY5u
	 VWJvBzV8LvkIOv9h1bwjfXvwZ3jhpxj3slKj2B39BpqMJDkNJzum/06xWASaeM04X4
	 5eRMH61+lDr5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A6CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087407368.26672.16056836749497553606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bb7c8e9030d65dec1932aefd87fac0262023dc435a00f2be02b03fbb82d19e
Date: Sun, 07 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780874073
