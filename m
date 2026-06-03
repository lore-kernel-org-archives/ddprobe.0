Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1819638757A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780492474; cv=none; b=G1Pn8PsW4dvJ7jpUfgrQF2+SHMZqgu0OrK16pAZOqVkd/RyXJa4C6JrfyrryceWHA083tCv/DlC0QeGqgYmtVaeXz53JvIjOQ44XlNbWFC2vZCwcU1itfndxj1sk8pbF1tSn5iUBqOqTcp1gwN193AMKCst7TUAqaXb4sc/3xic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780492474; c=relaxed/simple;
	bh=6bQfi07d6BvTwNqhwqkadKZZl0/xTqmzFU4Rkxigxm0=;
	h=To:Subject:From:Message-Id:Date; b=YEvRj3Vcx835k57E3KMZZevcq1ej5d74w9SRcLS3laqe4jOrdsDYHhZXrP7tdyjoZHU4TcP24PmV3Dmxkvs3UYy8+vCirOucim8BMhFet4mo1NlKik8+qDZGu8N6YDmbo1JgexBrC7ujPEEeAbytVxj6hfdSJ6YXNlxPGdHeTzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNVyb87F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNVyb87F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42FAC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780492473;
	bh=6bQfi07d6BvTwNqhwqkadKZZl0/xTqmzFU4Rkxigxm0=;
	h=To:Subject:From:Date:From;
	b=tNVyb87FgZX4DIs4AjZGRVy6HFoQGDihrqKBk+XJJiF3E6tC1c1k5PhcTVUtCoS87
	 Rm9jA/TiV/t8UCjmA4uqGjDfR0bJA2X46Ysck+JSnnuaN2DsU+ewLzf/a8z1Gb93f/
	 Su/ARImhnFoE7bKz/Ub00Akf6ala5wOIIhCmnheBC7ma478YXtLHeYoWhQp19tAiFb
	 pTEhYv89WKifJbybirrT+If+6t8ad7GejI8FRRqyl3gp/9CNv5TIv/4TyhsK+XotPx
	 RQ8xftmRTJgInCdNpNsayMfCe4obAxcVfmZ5aX8A5ZjjJfBjHhM+J5Pe7WFkccRajZ
	 bzNrYwfoI19EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D4CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049247368.24509.4551831049478727689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2376e5c16ca56db3ac22e1fc877fe48f0037dceb3fef2507067e40ea824217
Date: Wed, 03 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780492473
