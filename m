Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B40740D598
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781846194; cv=none; b=ei6kXzdkB/jSgDQbdFN1wxZvop41gnuLSC53BYMpBztNd+R3DIkrotNXZqVRVnpgbdMEXLU5ZkdpsUDkoo1hO2o5SVhD45v5hY8nBXF89OQ0WDkST+xYOEEshz8dvusOVMziGacECaGIkqm31zITrwxEmM8CvFrRTZLp+m+eEh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781846194; c=relaxed/simple;
	bh=slfCobDZRzFMc43CN8YzHqwOLmzTrBM6l8bZ3rPKr/U=;
	h=To:Subject:From:Message-Id:Date; b=hzZlnV7fyatHiyuvQbwMNmcnm2p/QofxKc9PRs7eTyRRRWc87YsBajusWq68gksnrjc2xkmZ7NSOkuguqehKayHAXSfKHWIdvq6eeYQHQGx6KQ4WGyT2DJduJJo7eQjbfcxTdlxyHyG1q5S7fuqqwaj3lHKiBf8D/UIOlEM+gpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmAY8dbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmAY8dbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBDEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781846193;
	bh=slfCobDZRzFMc43CN8YzHqwOLmzTrBM6l8bZ3rPKr/U=;
	h=To:Subject:From:Date:From;
	b=HmAY8dbkdIHlR0gcp6v6jfhxqfgRXXZier3tGsg5LGQb0mNWlMCFOpTMzhYHxG3e8
	 7zr8cNZ641PMU00hYONFiTMH2AoNOQojvDvnwuDbxPLKJVNpDCQ+3j3guB8zmaWsVd
	 LmL6u8C1/G8jOq5wJxkiUPxZrhqItH/1jkNjCUoW9eEPmNkSjB0l6zmY2t4LQtEkMe
	 MHIHhyjwlebD+HCYoGIO6ibiUfFGhAwuPk//yQHhidxSnkvEZHK6xettQs6zg3T3ia
	 lm08vm6jvTLO5Zm+kliRiiejcpb382A41JUqW7n7YxTjORqnAmNZJC30JFd6un1B2Y
	 nDJJb2S1Pqsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC3CD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184619369.20204.1351246836573996037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2c3c9f638f821e47e574ba775e4ae5b5765df379ea8f59a3386f9e75c891b4
Date: Fri, 19 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781846193
