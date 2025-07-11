Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176A91AF0AF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752254394; cv=none; b=kTp4ieyHJcFH1K4o7GITpYcuLHVjUtqN+NmJdh/cuqxb+AiK4BeIGm1S/A5pEZ1c/womgQXTmAHNe1qyRG5egV+56f36CgFWzNajeYNOOHkcg1vXR/6dln9yI9gydSang6afLv7lkKso/zVcRREU3E/Q20xPt5x9TbNPaxkl0mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752254394; c=relaxed/simple;
	bh=4mPLJluBdw0qr4E8qczX7uS13YOWm7X/be99A94e6dg=;
	h=To:Subject:From:Message-Id:Date; b=HB1RC7jDec0EtvLVRkjiOHU3X+plsNsYfn/xCZhmz234C2fuytwkaZK0cGTync1ShNJFSGsgfRa4mPYIIIItADaPJEgcjLLRTteHEFQ7U27z84LuLaeQuHkmAL5OgtEuvKeFtOTg4EqwRDSIEDp5Uv2mA7iPku06r9Awy5aBe2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLsNjV1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLsNjV1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E005C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752254393;
	bh=4mPLJluBdw0qr4E8qczX7uS13YOWm7X/be99A94e6dg=;
	h=To:Subject:From:Date:From;
	b=cLsNjV1IWOp0aYR9LyDY0NJ9ZvY3ASkY9df7cds9BxJI+q1YL0ALE9QX+wAHN+q5A
	 mgdCs/f9PoFxvXG0OI4Z8Mvlap5PYaewtketnElaQpMptP4BbuVnSll2w3s8GMedM8
	 t4foOJzZbluQQr8K6ja7fBW+qJfx5h6WQjLYk6mdSDKv7LpBF+4EYnZiEW2+B/PfCO
	 kleUDhnygA1+gB0Ja9fkrVoatNAodQWm6DtVJLgAQJNl26u3lUe9rkPDVLhhL70N3R
	 3bASJ9kOTJrmaZtVq8bbQNHcNH61h/SzU8n69Huf8JJJ4WGRUvBm6y/7OeTFwcaaaY
	 nY+VUhIVXqd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85CC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225439358.14259.12560113190781936835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d160bd943b10b8c6ea77064ad2dcb3281c68f244eea761c725d2b0e5a8aeb976
Date: Fri, 11 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752254393
