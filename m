Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2094C313537
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766528034; cv=none; b=spWcMr61nDMcs6KtWbwpBv5WnD7CTuP6WGnlJ6AFEFF+ZGJvdUsjuafe1i9ogy5Pwr2KSDiNbV9w94sSOR4JoaYEbbo6jpU4Za6IzRmOVY1wtN6jOZazIZzTLsAEUMoId/hbcccZkjCHQUWFPnN6BpiGHzTtkpQkpYPXJ0YPmjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766528034; c=relaxed/simple;
	bh=dawscP59xdh8rFK6KtDJ/2nHcDx5n1HRyuNCyvZ6dU0=;
	h=To:Subject:From:Message-Id:Date; b=jXkzLXHV47XRbRF7Ga4acxWXDp2MzLPew9kk5FVcD48u6z31nwh7PMUsdiwenpAQ/ZcgcKbCu429/vjeO0U8XXCKDD9fvcO83ORpkmQYdhzl3bTBX89l3oGSqf8XjHyuAQOYEM1uU11SRi3G/LJYwd7jmnARAdvuESRDk9KGBHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEvPLctq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEvPLctq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C9C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766528033;
	bh=dawscP59xdh8rFK6KtDJ/2nHcDx5n1HRyuNCyvZ6dU0=;
	h=To:Subject:From:Date:From;
	b=WEvPLctqCLQHchoFTxoCFwJpiWWRq2WbN3RRoZmSCcAgiQ5uDQLsDNyIQcesJ057I
	 WricMXBggRU9iXiVmw48Gq5F5w3Uydipg3ah6n8ko1dnSKW5LWgMxT1VPRcEcA8Fn+
	 2ZTmHLxYjt8MfGRApy0XEYdX7zNZ0vj6duba4U5KuursCsLSKj5mduMqtnQYpclxnM
	 bRfR9mJMS6/7E/q1l/M3gmyVnmChJcUR71R61YmHliZXslhixlhwuz3jSffRdzXuMk
	 /Up4jPph2hOS7DkUAuZylPaK4miw5sLc387iaczS6IERzqk5hAZZ2TnntuOXIZlyCJ
	 OKBx+cdDrFWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B7E74900
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652803358.29104.15847858853986131247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c61240263dfd09940c066b7a459ba324bc30d17774dc998b0cfe8ae4b46736
Date: Tue, 23 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766528033
