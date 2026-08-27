Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2133D345EC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787855434; cv=none; b=tSHgHP9vaLlnBxSv9ZDRI4f4Kp5wY7yV0mX+mqhOiHOiNSOD0SmUgQfOlEpHLtzWPl5Tn0GNbg5hfvzmQN60s/vXbaqJyVFQmJU3ZDvvM34FkqW0JqwnKNv6szNMEytE3QyvYcyDxTwWR8RgMZSmjCeEE4R4nqP851Q10TJFtCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787855434; c=relaxed/simple;
	bh=ZSiISmXX5yhGBdgwzGdnqk1wzcQeV2dUMNeUmXVOGS8=;
	h=To:Subject:From:Message-Id:Date; b=XSUGSrVCIrB/w+xJVElujQPvdZXg83sM6x2lSWl3kGWmecVm+oQsMOmtyhLGi2sfBP/qGHG1JFxDvWkel/9Zi4kNbrKidGSFbTvLFUN01y4dTJOLuMh/cEXGrJn7SDU8SpSVUVdT/q7sLhxmwX4apc57kbZ4v3rreuXsT+0s1N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFG6kzeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFG6kzeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE13C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787855433;
	bh=ZSiISmXX5yhGBdgwzGdnqk1wzcQeV2dUMNeUmXVOGS8=;
	h=To:Subject:From:Date:From;
	b=jFG6kzeGwmRhy+3ZOyum7oX4U9uashz6MOMMFLNMZW2cQWThxTBPnPtCv6iFIHV/8
	 grVi2LyhzfrgnSb/VprJiYQNTIr6JWbmS4/GLT27bT2HEqYEsVVZuxHksx6CCXBIg+
	 oGk7pROQEHLzAH2FVHpqL3bR0ScX7qL0Ht1lyDMC+pSLvAwwu0xqmwCCVlAT5Wc3ct
	 rB2rz2BBlYukiDOvTQ5cQVbtKDm+OWU9gVyfDpBV3N2Y79u/mSLYJLCNQCJ3/UEJM6
	 SmkUYkTFrbK9uVO6N+6IGxGAi+YKTSLtrzOCNYzBmA6FvbUQTjf4Yw+Jm5Qb7CDBk4
	 ftnOJdd9bbpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE01C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785543369.23600.16669645447522692897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6111192cef540623ff0bde2ef731f32d0ee09761d7a7d9ca7bbdc4ef0d179a
Date: Thu, 27 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787855433
