Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E72904
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748670594; cv=none; b=Omg8JIvhfkFebm+cY7BWDqXbMZuxULB8HWWdigGk5O8Qjsuif/v9uMuVufcJa5MnPHLg+eaw4KhRF5jFZ5/U45vrEV/DvWXGuQ+MV4XU1JWOOzaz1hAjzztK7LJ9gQ10uuyFFMsuQ2YV25T1LUdg3cAdkMOb3BVYOr93feCTLnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748670594; c=relaxed/simple;
	bh=hpULDkhzvYeAWQyHjXUGHNU6F2vSP655ssmKceTZXfo=;
	h=To:Subject:From:Message-Id:Date; b=W8aYLNF+nj33s5FzjvIn9/XqHReV7UFJKIQNGtmGAcmGzcIW97AmLwNRsiXKSV65A3c86VsXQocaLg+prPnlX7Q6AnaWnxkkLUfNJkzgyLlG4u9n7YJNlqD/leDvCTrV8Hc9TYplpBT0+YWNihaNyFKp3kDibbNLBxkzUtuFuBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMKmHVSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMKmHVSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26AFC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748670593;
	bh=hpULDkhzvYeAWQyHjXUGHNU6F2vSP655ssmKceTZXfo=;
	h=To:Subject:From:Date:From;
	b=fMKmHVSbJvawZ9QIycPLP2KoDD8u4HJMQGYAv/prIw43/g1SAJn23/y4sQJIM/JVE
	 Z7HF9ManKZL6HKZRKNww85/RExaru4rdxCF52l1oIOBX28ZpFQRiNfJM5Wja8zLe79
	 vMH8SpIMDc+2spQirbyU9ey1lGu/11CJ4N1KrCDmSmQPWwG9Sdh5jevrKPvZUUJ5Q4
	 9ikm4ZjUNfMJ7nWOE3IEhuPxvTwrXRsVtLVoh6SQOZDK3eK8V86LKzGuIG/N6J2Lgr
	 Clu+ElhoumVmdK86zs44KdQSQQFKo+svM+DcygKHfBeIfffvxaaTh0PIlmrTCtw6BX
	 /KO+FxpnpzbYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D79C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867059357.528.4272131247099003210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744427429e45c0ce991c69180834802195d93724dc329248a9b918878323645e
Date: Sat, 31 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748670593
