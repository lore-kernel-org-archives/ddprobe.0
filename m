Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5138B342523
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791342034; cv=none; b=FC0okpKUI73gomA/BgG5I754jmqp3m0Tvj0HUWJzC60wGdPEeoiTh5O/C55PUHpJ3mPNP+j46wqkCOKghYB9xpGJlzsGSozxOs+lNZdyB2VNskQimbuaNIn0Fu4AvGdiOmBaWFyazT+V7z8EHffxTV7tZiG4EwtgcwQih0JZ/mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791342034; c=relaxed/simple;
	bh=TLE4lUrXxS2OJ3DD7Bm0JhkWwZ9d14QsnBPmNkhBdWs=;
	h=To:Subject:From:Message-Id:Date; b=KS35kKAumAnUnuSR5R9Ersl+2jLRNqRvgUV8lShFNTlXXVQHh4z0xcdJFgRKctqNvazuj/W/iHaRU6xlY0kMqbImRo2aLcNGD3rX+zYuO6vcDrfulOK4sIH/hDWQ1jZ3QifG33I/0kgbA7ty43ugWwESp2j8vtouPtrnP9dqKR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvn6jyDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvn6jyDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5ECC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791342033;
	bh=TLE4lUrXxS2OJ3DD7Bm0JhkWwZ9d14QsnBPmNkhBdWs=;
	h=To:Subject:From:Date:From;
	b=hvn6jyDDWCjNCc+Ne8Fey9cOmd33rMOU68bEAPnz5N4MuKMXo7c46OsACx7VGZJhl
	 24Jhw1EXSQOR3LP3EkApi/WUQ39kslvApRQc9JAgyECVBGEbWzoZ1tzm1wx89lOEFi
	 w0Qzx4hOErYUfGxJvKDBK+C1rhACvkaOTKcm2vEPMX9rKHNWXJXfifol2z9DB1Sqbz
	 hEPVPn076uR7SnS4Ak9mEmylyq16FTuWLZHwFJqGS8RIqadOPSbE7P9ev8PJzFOOy5
	 B9Vu+fdWiVXEqzR48q9Y9tphetQFX5pVxaAw0XrB91ArXioa/+eWRwmw4NP1hiMAv0
	 QrDfI+2Ewn35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF1CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134203368.26759.5488106200980890716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200b492779830b8c2b07572b19d21844bd493024b385b5eb75bddc5ab60fbe4d
Date: Wed, 07 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791342033
