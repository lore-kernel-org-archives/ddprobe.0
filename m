Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416BFA55
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754152194; cv=none; b=ePx/GhlcUkdqLHT9k5OojgeoY8slwHafmjbbBf9rzlDpdnN7+vZBsfewW8bvABbI5KqjdkxcTIt5dLK2v8Kcre6OjtoNo4FWNqLpD+/fB5fM0H7theuSC3sX+SW1EkPOJTJzZ2jN/vplWWb2b2ORspIoJKTJR4Hpox3nRFcCZbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754152194; c=relaxed/simple;
	bh=fOaJII77b5ZRDDSbDwTMgOjMInz68kwremw0TaSYfeQ=;
	h=To:Subject:From:Message-Id:Date; b=L0O7YjyWYmx2CW3RnB2PKiKnC123Hk8x5rrVN81p9rwQ/gxJ+ETWxgk9CJP3zEWBxfqxyRsjTU3THK0OZglBlYXcnm/2x0fsF4n/4L7sv/7glIz1hocjmXeCvMnO+9bWW4PUDhfeBboAVdfhyYC7fBvZ0HIhICrrg2b1w0kgG/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYGJcUHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYGJcUHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0693C4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754152193;
	bh=fOaJII77b5ZRDDSbDwTMgOjMInz68kwremw0TaSYfeQ=;
	h=To:Subject:From:Date:From;
	b=jYGJcUHtrNkp1EYs7/czkCrfephXXuy7N6eRF1DwacY/cln4KrEOeaxFQc5YDCdyA
	 aUinlNtA5MmyztJaGrqNF+irTMH3P4RVtIAi4fZJ/uLoRVVc/lo4OepiQwWGKotKYR
	 d5EYWmiglEbahNWZ8ix52lZgNIQqIpVzI5YyZJRHNlusUvXnGNJ31DS6riLFa7rUrx
	 zy6M4Pghl6rLwx5XyKnak/FgoN81jwDokyeTs1wSxBmN7CrvcoQaszDlW6CjYA4Av4
	 zUdYkZmPuJQnChgnEi19K3+LB19sce2gjdjztVujCyZD0MW79UJJ10/ivAjALAjlxD
	 RfkW4ZzafkP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C74DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415219358.5657.321612487374033459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1755a5731efb5183e6d3f833a1a9b96358d6f5e92d088f578b4e425769cbf4
Date: Sat, 02 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754152193
