Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64D2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734405954; cv=none; b=tfi6aNtlQn7ox0Y1Dk7V3V/hNqlHpWhI/3zneTkjYeDzj/fVi9UvwZOb3lNQcymspUwbe2PC1+kbSv+BrJpdD5OhEsADAf0rws7/KaavmfLnEycgzhnVX3H+bxaNo0LNxJSiYpo05t/w+xdu5nJdeXk0KfevUNiIhfY1gwYOGnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734405954; c=relaxed/simple;
	bh=x9PomeSCd22SzY1shHL1mUlTj9DfkhVWDpw5cg+ICWw=;
	h=To:Subject:From:Message-Id:Date; b=aec8QbgVXWf2+99v93lznjBc6D6aonD1ceEFFdiLDDZWxUAUjGxJhe+PGkrSKZqfFMIKMB6Iz3IJtXT+HgK0hUprwtpRRm0FGcCDoSJhgEATL/R7Ym1NRuOWS5+ahrpHcwNJ+7BQslo6XorGBY2uQ4UYHxy1RZRtCL/VbWC1tas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoqisMvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoqisMvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353EC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734405953;
	bh=x9PomeSCd22SzY1shHL1mUlTj9DfkhVWDpw5cg+ICWw=;
	h=To:Subject:From:Date:From;
	b=FoqisMvqiSIS5E1MQ2QY3//sUNgJTyjQnk+rIfl0zzYATtajG3EsAMxmzpDBQGFRY
	 NqQS8E0zCqkXjxX2EYwUvD3VpttNbCrEpN1kdlJgSqSJq+YULPuBIzfApm4vBOrHFP
	 TVK1NDx6/LpzzrZDJefMeH+20ICjTLsFBNUb9wPKgPSTCSIrlTdquVkAoTRl+EzMKC
	 wYdShUXC5EOXwz5qgwAg/voQ+zYf89Fhd3228Jy2iO3agsEprlBjLL5oyV693Lzxj2
	 ksU0qW4tnDC0Sy9qNwzMF9TPnVycTEGTPTakn4RDjq+uvETrDopXKCx53TgP/w4KE2
	 ZQAGtbSgStdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D621E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440595363.8273.18330490697386179176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e5ec37b427c521416eeba7edde003ebd9eea88bb9605e3e9d35f63304372b8
Date: Tue, 17 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734405953
