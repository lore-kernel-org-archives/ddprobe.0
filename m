Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DE32C08CD
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771565694; cv=none; b=J1xN/XGIm6SEyy0Y6fA+PE/6r4fIvRB5XiXRYwb8+TKw5YrkmyVE+IPxAczlwR3lddKfWSaf3oL8iONg/RZQSTy5Rzv33mqRlTzKxqq+M9yeWSveUDhLeYr1LwAFYfefPi/4XMDayWO5kkFGJg9HMEOMjo+MO5QTVFTYQ1Azyqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771565694; c=relaxed/simple;
	bh=5yNrdIyRzAtIFH2FrU7wA6TA9wYxqrQYg/gcfXklgl0=;
	h=To:Subject:From:Message-Id:Date; b=PQvFKPc8rsUVt0YzPR1g32a6eb3kIYwQj6bPlBA3gf4k5HNztBB2y0h/R7bT2i8p8n7uOe4FDn/uZ7TunLB48OzZIHTt5i7fxIfRey0Cdy8Sl8tYRe1qxfKwiFvBEtUKHJ4d3E4+4IpXiTFnSKE/Xai6y4Ohpnxg3EWayUCvTkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVVy5qgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVVy5qgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA587C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771565693;
	bh=5yNrdIyRzAtIFH2FrU7wA6TA9wYxqrQYg/gcfXklgl0=;
	h=To:Subject:From:Date:From;
	b=YVVy5qgVFlBNw84vQBka2aM1E5W3fRYHRH+esUadB1JD5vETlLWXfm0/YugtchneQ
	 Flb3nl05Hp0MeSpWWurdB/0V+HAGBWeCzj1llF80RAO/niemtJ0PQA3hru2rzqf7ib
	 AivWLIwi5so6KURLb0Qm47wEgtEDckzxbXe9Sb6euGXKnjxAndROPS3a4RCP6U6G8X
	 tgVQolAVgIecuvvwoPGXeMf5dLH6dkd4qiAHBguq72k7JEdxZUEZ3Rt9zUVDrZUytu
	 lOyJJnRLkWldjWFQ1Ct8hyKRHVqkqn3/mVrl/N3dOVIqp9Cthx5HnAwr0ekrAEXvr3
	 Lpd+E2LC3vkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C180CC54EFC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156569377.1807.15560125218530386926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d045144fa22d5da5a1547c519212e5f76edf28082a3fad9df1ed838992d14fb5
Date: Fri, 20 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771565693
