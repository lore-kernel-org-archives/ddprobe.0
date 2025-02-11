Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762035223
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739237154; cv=none; b=bLJhmi0kn1pqp6qxznnmnISLmictu16ZFpPxdZBT72O/d4Bfs8wxsn3/Agq/INqi665jSCY13iVLgUvhlwLXTqod7G+eZQTMHsIfhJuYsa/96EqyOd6tL+N1LiMEFH8bU9mZXJLj8sgnPR0suuVBwrM9XoAfq3mDOOIwkfusqkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739237154; c=relaxed/simple;
	bh=heMCpHArUr+GPuJNBpLrxUyBR9K4YM+9n448NQFEr+8=;
	h=To:Subject:From:Message-Id:Date; b=Hx5HetdIrvC/s/M/RnS1qBYG/BvAsCmqbL3ajLlZh2a4f1oNvME1045e0KHG2C8lUrBQsHibD5ZyHbotxsDUkNYpzcgT7WJw6Ueuw6PCO4MBK3NvTUquN8pGYkigm0X/K4B68fSmEIbc6tuFTI36UENpqZ5mYcthpMu5sd2SoFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVG2HiTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVG2HiTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FBCC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739237153;
	bh=heMCpHArUr+GPuJNBpLrxUyBR9K4YM+9n448NQFEr+8=;
	h=To:Subject:From:Date:From;
	b=RVG2HiTtQ9fmydiMilgAwwp+/AnEqyOJw+blmqol6cEobLlGPHQgNRsCl7j62pgC4
	 MX0u5Fo7bOeinXWYmnEj1G4XbgeQ0oWyvPN1S/fQMs9QUku0WQFrtokkp6aV/ByV8+
	 kmGXW1psuT2xTYDfInjvT49JB9e3wi4QxfqVCTabwnNePh+7wy56fJk7vJPrIYxpK+
	 FqrupHKVYI+QGGmEs6VVGOAcRKIF2nEEK2pY4mtajNTqBaXXmvUTOKpV88Cw/lv0lo
	 MFvylNBLEH5OdR94AdtkE+gYgf8B/IO1Ru8vi/OBmKcSM+1ymjH/R1cLNnV9v9b4is
	 3/zcZrBT5KyTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41C3C02198
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923715367.1088.11971714658627951145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4092c0ea6fb79cd2b9130771bc12e9ea7aaba0a9c2aa36a3a64c2bac5d612a15
Date: Tue, 11 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739237153
