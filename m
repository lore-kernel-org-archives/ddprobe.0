Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DCF189F20
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743110394; cv=none; b=RWw3byqIWwbhN3cm0T0JmCNiL+R2sIWjS2zjNUpFIE8BqlMDDnr2t/4YWCC+S11nfKxjBMZt4qJbkA0lpGrtvxu0wreBdH3baISzZ5RIZrpKGKuZ8oeEbDw3L0PcL2GoGXS9QnemkJhzJhv8ooM5AUKG0Lc16mRLhwYEYGpL4RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743110394; c=relaxed/simple;
	bh=aWx3Ek6r/OUzVe9yREgwzq/yrN4O4fDMhbxrDJzoM5o=;
	h=To:Subject:From:Message-Id:Date; b=LEqw9iCP9pdNKBLlv3HjSSI8kF+N4WbSQ3vMx+2WTyTIZp6LlqAPKpOJklnKP9EEWmaX8l1x4zLM6bjL+wyVW7Tgtn/FiDkDc18qNOk4/6Ld32WcEGyJA+PtdPtjfakPVzzTpIYSV+/PiHskHkWAOE81jTOtWw8zrAIcwI9xrtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMkPj1SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMkPj1SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37EFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743110393;
	bh=aWx3Ek6r/OUzVe9yREgwzq/yrN4O4fDMhbxrDJzoM5o=;
	h=To:Subject:From:Date:From;
	b=NMkPj1SBY7k2lXJhXBvxrVG+/jQiwf1usSUivW832xmmENr7ldtvVjwXZI4k1Gqsp
	 ymFShp3rr2f8nCD2l7wqFFwRzvENfJvAXY6TjcX/mUn9MZFxyg86h79GBZNckg0Qk0
	 4iDJhzSqb9+DurULhYoCLsR57Vpu2MHfD57aeaYeXmbKvqM6j5WceC+WdyP9waPEPA
	 v7fouY35afb3GQ0D0ycqiXUH91myqIucLOSEtzR12LdhJj4meQ5QSLZ4DQy6MIM8JU
	 6f35RjR6tDseJoR2YcXlfOn5HHYktBiTdWB79uT8s3ENQC8XWpsPZR/SoAjkRzGu1u
	 MPb+igkn3aNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3088C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311039362.4518.1562235331710291795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b220531b2fffcb6c3f552e0990175e45453d590d632105b18c145be08c4cb3f
Date: Thu, 27 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743110393
