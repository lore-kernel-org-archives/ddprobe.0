Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EFE41DDF0
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790279434; cv=none; b=NZrIA3gP9nL63+3QE6m6rWsyL12NLEjSpICL6G9pJTiecpMDscGtnpPDrYuOSjaHDkwHll/8503hoI3BidsYEHtuawoljnWKwYkHuXY1xXZQsi6i4p+h3d1AyzwimC71tUh0/YLYSosnuyxuVINY+T3aM+FM2GHg8ZoBnsRIacE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790279434; c=relaxed/simple;
	bh=pZJM3cCKQObE6yA+TCWBgoNOqxscw3A/JftjkscJzhY=;
	h=To:Subject:From:Message-Id:Date; b=UCzQdiAJ489qW4prKB0jUZlDbUp/VCdm/W7TgBGaATC1V3qIi/9Bo5GR2BDjaDlIz1Ts+yoH2hY98PSva6FzJclB4nMiR80KZ0kiOXLcm75PrvAHGbdSa0IPZBBmNp1kq3XPjaTvCK1+9oIGVtdMQwkfNih9ZDHbY100SVcj69A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiZSaVRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiZSaVRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63D4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790279433;
	bh=pZJM3cCKQObE6yA+TCWBgoNOqxscw3A/JftjkscJzhY=;
	h=To:Subject:From:Date:From;
	b=qiZSaVRUg6nW0/ZnIqiaCGPDzZ1EmIHkFP0QsGuNOrk4AvCuP1GyuyA0uPPLfg7U9
	 E9b68giVA/jQsSd+6qRu2FCtG0TSigqdQ+8M/fIDzFWT17DGRsIyJll0kIvnODeI1h
	 zAaap+lIYqbE+6tKXxnwHFi9fL5mO6yBvjoI1uUIjcoZ/QoJ/4p7K3xwAbKyArIVG0
	 ofnbYQBkpgy5fRjcxhWvvidWsjPWyNmU8Eb2uQYdZlUTRVSx3tgrs3yI84jgwgwWkv
	 2RjHUNwXgPdWJl6bpo6XJJd5fUQwyMt+duQgTXnymBxo+pFnf5H66oG9ubv4lWGxDX
	 mvRt840XW/h5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14F4C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027943371.6238.291447405160623287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfd760f7e5250baa298c61fed51055931dde45b5d04a28c98075758d997f969
Date: Thu, 24 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790279433
