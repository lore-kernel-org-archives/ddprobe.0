Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5340EA930
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743902394; cv=none; b=vAYFnFwOJcHmXBmIBEITJvWvOBbRcwP2gb18qLn/ErSCNNuykbRhjZFHXlFwESTCYIQb5696UfCXcrKrGGVwGoKktRXmxk4jRnDMrlREOIEqQzzQTEnMklKCH+KefoIcevHkijs6K0AKYrEyUKkphOgyxf8PYAg130l1k+ZR9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743902394; c=relaxed/simple;
	bh=5zlfuUQ6aifnDIs3Da6Bhr/QiU2gpv+ae+V3LcLEtjA=;
	h=To:Subject:From:Message-Id:Date; b=WuCRBSwJ9Fx9WwUVUh73AiyclZMXv2vRZTT9uBxEZfMC9yw3dLC53OF80+jjCcqRHZ5539EQnarWETbV7TL9irUzljJwxvlsPgLqhqVruzvfwt1tPiitpn5gPWvXsKYg5tDHex+AxCxEMjYk+/HqHDcONr4/9U0ID0TyFMTF1/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuosWyMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuosWyMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51FDC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743902393;
	bh=5zlfuUQ6aifnDIs3Da6Bhr/QiU2gpv+ae+V3LcLEtjA=;
	h=To:Subject:From:Date:From;
	b=BuosWyMUzHX0QZQy+4BqleoZH2seD/hfHe/SDQZsHQOkpOp2Lv3MHHnPvC8qo/W4y
	 Q9gWNrws2xYZFmdKiRrAiMiKVmfESLcuO3IfPpmtqMykcNHy9avkq8MhoepR6mWzUC
	 tfiX8y+KXcLluzHGWalkUAqpf2JC3NHWKK0fYUNk1JYgtsjgJaNDm3GqsOd/y7LrsL
	 IsAWLsnTEXWjKoRpfq8R7OS5T9lVAIvxevwYO+uzVl3cTms5C+Xr/XQ8t1jizgRlBP
	 Z41Ln/4Vs96eUDmM5+6mZP7SOl/LzvMzWAWrbEMW4XNK+pXYh7cNXl0mgyMutuWnDM
	 2c80NutKsGveQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB8CC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390239358.4281.11090578320350589572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2c7e85c73155a8c7d6cdbe187c21df7ea383696de061234536c1401c52a713
Date: Sun, 06 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743902393
