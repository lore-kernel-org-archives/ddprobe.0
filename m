Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465E727F4C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399794; cv=none; b=qmKrVxI96EBo342K8RFz+1uUkWzKnsCpN0qbU8bcWaXQ7PnjMR0kcNySFVZ2bVLmGw4Woyw2v7gjkGIqrHOmKSXkdAssj6s4rNeTjaIFmdwk9IWaHGzegU07V0oXzYUK7QizbUYV3lwm1+bR7glXpB2/ZdHNDUq5GTC/R7ecov0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399794; c=relaxed/simple;
	bh=gaQN8+DX6lQfQtw25SBFGZ8Yd4YFRCyiouAj8gouLZY=;
	h=To:Subject:From:Message-Id:Date; b=ImN9Oh2g9ggZRyzhDjnnJQ2gINhNVu96d57Kz9Z+YSpwuNPc9l4FYhRxxUaVc8q1QQPtNnAiVSdgasKJZT3W1XEg98uG8/bt8ZbWknn3STogbMzSEl+B0rnAn+ZtADzNdBFD0o7Xn7FB1EyEa4OmReRm6Bs6eJ/LX5IvVfgWvdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdmU9065; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdmU9065"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2438C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744399793;
	bh=gaQN8+DX6lQfQtw25SBFGZ8Yd4YFRCyiouAj8gouLZY=;
	h=To:Subject:From:Date:From;
	b=SdmU9065sfBeoeIgOFVITSIHWO8IBFKcRjiEs7RJ1vwcZeS37c8WfcIRRq9k0V+mA
	 Vbv22CcmpiyEAYUITw0LxiVYGQvrm59xPgN5L0N6D2ddrKy+VuIh/7HN+me6wMzevI
	 6G3JZZAwcNBEeEIPht8GY3ELP5tp837tGm73It8RJy9aF/pFyH8MQ0fqIJrYrAKE4o
	 0Da/dUiWfI5y1g0if+x+26byCdH9Ib2cdlfttAKE7dgOVRQu5xrfIkSIzjUB5M5GgW
	 JU4XXGu0u3siwoQNssQb5hPcPyjaCiafcBTpXCX7bsddq65iO69TaH3TBG1KOiGwvN
	 u0wGNWvD/tW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB36C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439979359.17620.16364017315961956238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7506a64abd565ecffcd3615d8d9cc94c7cbb3d7c9dbd837cc4d5e99f7a44c5
Date: Fri, 11 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744399793
