Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC80270EC1
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770145434; cv=none; b=K35yGPH44mlm25ODgwYRTdN5HypxxaGNP/DW/6jVImVlklakFJBu9hiwG44R9WKxNCgnh+7Ks26w1Xs5sgkjidGAJ4eDNZ40nmcbvQpuSNJEp+XLUULJhyOsr/NO9vQpUcEZqPUxgIIqQQ297ZAXrj2M7rNPDoJJQYuPFT8wOOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770145434; c=relaxed/simple;
	bh=j3I3SIxg/6mcIg6M8tbiLmyS7/Zgl+bWsvmetkDYInw=;
	h=To:Subject:From:Message-Id:Date; b=pqWG9DljOROfCuSIQvWAWsDKXSOkNSkJ4sUaVu8Ya5vtVVjkLDyz02Yj+K5SCdnDJx8/rNfOimxxtN6yEyULC9KpdITRIeplCSt3GzWslzPx6Li/lFqXrkgf5OlV6KfeSBZt/2SCQoEOdHvNva5S8DwHU8jv8cb8FWXrUftXIaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMmHVwUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMmHVwUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6645C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770145433;
	bh=j3I3SIxg/6mcIg6M8tbiLmyS7/Zgl+bWsvmetkDYInw=;
	h=To:Subject:From:Date:From;
	b=XMmHVwUWxpNa6v2vbyMniobAB7GLGHCGE9PttE3PtwzCmtsMrq15GsEbsP7+aMm76
	 EVeNtQqKZvtkaySPGJnqIm2CLUlVRchp99wrQBylm1bVaJBCaZBFLgH6cNxEKiWZu3
	 Fe4MQvexzQqdV4Zg90mqrQGwTBM/X14Iu5jhyDUI05g9GOHFQ/6Hqbd67/aVzQDPmf
	 HTADVPy1NFs2gqGF8/Y3MYh9PdluEEGIT8RZ/m5cEAMX3c170eNrZUcB4VMzZmk9mb
	 kO6sg3BH6Vc2N/6wO26+xVRznWI5d1gywnNr4QKEWTNONAo5v79sslGEgEXWaZ/8dC
	 95rtffc3u92EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E8E8785A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014543360.8174.8521338297815183224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac45d15874be02b85a73832e0d5a63d6fc0f922c523de5b6d68c529801bd3fa
Date: Tue, 03 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770145433
