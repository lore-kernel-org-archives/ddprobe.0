Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504051A267
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787974234; cv=none; b=eN3Z2eqFGb+NvzOZbbWcm9DWEUYEfcmljxrvHcg+WKtC3bI7rJyZCV0GMdph3LG8dD4uTxuMIYxeKQlmdfTcr4L9Hv9ss1GC7/sbkE68W0fTdiitrEOg9x5FjmjPEc6G/erINHhw/yc7NWIu3DvzOrBZLZEDOkDNkL/YcYFSEUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787974234; c=relaxed/simple;
	bh=0CT8NK23SzdGjI6LXfTjyMdHr14rbl3Qnzl1LDGIdVw=;
	h=To:Subject:From:Message-Id:Date; b=Zf7YaS4vEvUSyY7Mvl93wyCo/KC51OxtSRUyN1FDCsUCdZIUIMK3NReljIIyknUYBMzKqy93VulvRx/ebUCzdhtqwW29hyZ3RXoEijAX8GsonPeBXRNCFhSQqbo5+/e4tZZT+2JMgL/3u2bAn3XGn+atn3OJLUuSrAr2X5VlV74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQLyotNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQLyotNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BE3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787974233;
	bh=0CT8NK23SzdGjI6LXfTjyMdHr14rbl3Qnzl1LDGIdVw=;
	h=To:Subject:From:Date:From;
	b=VQLyotNRtaoy2UoZQBer2kYhNsIDHd/PDzBp8EAqRerNGbDwhcqYBJzKD8+pD1iAa
	 O3FcCHb1slpu455KOiT5cn75tBNgiv/v0AA6WX5QbDx2p6gwNGYr0NqZDJMy1iAIkR
	 vkuo5DBO/pNlkawnrhyotBy0uog6Jomhh/H8PxTZU1vTkHAm0i8mf1L043Q8VQEij3
	 J2donLJjQ7Qj9+zM8vd1JBbqCGD61PaXlVWjXsCewd7VMhWj84g0oJPAbk6w4OkLdv
	 cCSFJZ4OwiR0dSbsymoVl4gD1hee3FbDVkW9pveJZU65Uqa9deQL1P4fA6eNeDgLB4
	 qbdr7FlsIFrEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E82C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797423369.11278.10420654064485133886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fc6be97aad1bca63fb5ca5d0d7478ab717cdf0f58bad62026a28b49230487a
Date: Sat, 29 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787974233
