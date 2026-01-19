Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CBA32E130
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768844634; cv=none; b=i1Vi+5n6YJYdXxW9qaiMjjZg9cauDEarcbLrUL0Lyzopo+d+2KIvfYlqi+9HWYZFMmrXUr6ijIo86B6iHTtYbL6Oc43xAuwqsEpYkaiAj/qV6rELFbq5XkkdqLFhnb7JUhq3iuVuZlhJ39viKC4a6kDXFjeFvEiYs8FR34SHuBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768844634; c=relaxed/simple;
	bh=4vgyUad4XmvOE++s8sled3ADDSfE3t4nvrXkpTJBVbE=;
	h=To:Subject:From:Message-Id:Date; b=ijxkJ0NXDGaAdKD8kmuFBVOFdv8I5qS1jd4P/7v05wCLO+6A68bfGWNt1rYbHQKsNb4xKEiRcn80Fj4Zmp319B5vZ4U4WJMLTrxGX+wyrY2EIQ0c743c2YTN4h0V7uhDeINsJbyHYiiFQ4Ujex7MvkppMYAeFH+9fGgVLEwyI24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gjhe8b85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gjhe8b85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE770C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768844633;
	bh=4vgyUad4XmvOE++s8sled3ADDSfE3t4nvrXkpTJBVbE=;
	h=To:Subject:From:Date:From;
	b=Gjhe8b85rBA0wzXsj+UCfBqxHQoNI+ZQBcEg2gkCOLd7Mpyakb/cohOmHgY4UhQej
	 sPCLYA/rQ6tQW5YHlCbodOJ/HXjsToW0PUQLGSRKthZ+cLh+8/eHvjw3sI3t/hCfP3
	 933onnyCeYn+1wEEu+eqK/DfsSNtgXeDohZ/KrXrXBo/8QXHQKOnrIbn3O9YwcY0iI
	 BHaQQ6UTAnXHQRvcgMnEmJx4YwxShdexuFYRlP6gC/euvuk2SxLy2Sv5NbLNEYAYkX
	 UJw9Li3lIKbDSXXrH/q5S2T0sPINn5BpEJpzDu1/nQntAT2F7SAozohNNxc3LD8wmd
	 WHq/elPjasa8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E36CD29C32
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884463363.29802.17175392082733200054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb279617525612c3c48659d60d1fc90fecac9add765003077f59e91ff087fa0
Date: Mon, 19 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768844633
