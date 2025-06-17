Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306DE21348
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750136394; cv=none; b=PqnzdKIseHAZcWQWGEqtlMzjoOyR1kG27sgltgPCru2KR4i5Gzm4jkSreyd/5ALAfS3qcz4cCffpb+7OyjsmtU3z8Txw+cOl85avrRB0v335GS7pXp2yYoaOD1ZH0Z05nlQHlVwes/k3wO60mSH61d3gtoA8srXTYkQcpTk1Jj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750136394; c=relaxed/simple;
	bh=ydBiG8Nd5rVKEytyeeHsQp7JgDK3WDxctdBII6NlLfg=;
	h=To:Subject:From:Message-Id:Date; b=RIG+1vzCFpmSkWFKb/OIIu5NEPLqbz7xEqIBB2FCyH+0gS/6o3PvYLbPz90BBKwix+3QwuG+XcT2AmAH7yLe9+4mfCngXqEk50ysuclPjBxoEWvLZnK/cCpQrzzQQVcPvm49V8oqbiDddsftH+nAw4CB3jtUpMHzEKLVF50XaFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUomSh9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUomSh9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A595BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750136393;
	bh=ydBiG8Nd5rVKEytyeeHsQp7JgDK3WDxctdBII6NlLfg=;
	h=To:Subject:From:Date:From;
	b=ZUomSh9zjjMrQDqSp/TMzw/0m8e5psNva/7pRvoF3bP9Hg8g1aAmys7ssRa2y6pmp
	 nqDHy1MUmCCnStDIu6HBIxMvdYYh6f3fVDFXDSmatutCnMMWt2lB/MyPI0QSw64ky2
	 sjIteZeNRu6j4ndvm79BE0gJBmM+GMAHOYHNvsDjIYqk7GKYxavR/MzV4wNMUu8CfP
	 i7YoIDdRmAFwXwhvwB2WPhn58S2Quj2ol3LGloSDgg/FZbVEljllmJCq1p+7we0b7Q
	 PLA/E1oMyXXsTekerUeWNtQqRZZPMmdKoUNLJayv+dIoI0Jk54vuLuaZ8/KGV0ePDE
	 W1te7ea8bywGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F338C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013639357.12195.5172984350077031551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc839c65193fcefdab13e1cddfb8e42a7711448e56ada8dea86c3dbf1b2e87af
Date: Tue, 17 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750136393
