Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1190D2D97AA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773809694; cv=none; b=N4V2PL8w3UI6dh4yPxP2mJpeG9tnAszbTj6EuNFHUXXVGjfWsUU5herdWzbRx2pM1ClJhk8M3rnpDD1efwUqj9bxtPH74WezrJy2kDkCKXfH6X7KzxQ0faFzhROiHbMQQ/Xhxb8b5acI0jIUh4YXpvVcd70AM6i+Hr1vXOOPxbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773809694; c=relaxed/simple;
	bh=LwwJol/QmsYeJo0HqXvC2vcCbmCt5H6+z+rAboA3WMw=;
	h=To:Subject:From:Message-Id:Date; b=UxPL2VWkdd9AsD68VKN2m1F3xkKMBEvpAGg0dOTpgbqZlVN/OYtQdRyNTYkwr5bEYEmlcAUnwMqin6W6gjQ60D1QBFj3d2BMp7QADAUVuio9LAnYLhP65WMBFFoj607Lv9dk0PxJtlrpKdh391X05LK/wbYMX6Aa3B2uvvAQfx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqYaUo8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqYaUo8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D34AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773809693;
	bh=LwwJol/QmsYeJo0HqXvC2vcCbmCt5H6+z+rAboA3WMw=;
	h=To:Subject:From:Date:From;
	b=GqYaUo8yZH6TtpPm5HMTsmSXSBi58d4sSG9ysm0QNca2jwqSdDLiDvBM+w9MVvQOh
	 Ql+9kelIyv5/Ki5PPd96SmVld5vZba/zB1iZPs/jNkHbvIRxN7EkTIrrDSWztHuCND
	 o/8f3716OaMddIyOU0c77EBegBEyN/xWeK0ztfbfDKB2p7ge9ngH5FU26NjmLg2nw/
	 mJZtH/6aSzcY/x3LWflHuc3cu2frndDq3XObg+ktlsIpu1Ob576Al7qVFscna3OCbC
	 k3mTDufAfHuzYB9PS8mM+zvKN+TvyUunQng6UyPsbfLk3VS/ByBX+dzsK8z2FHWpsr
	 9kGbVFcNhOzkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D1FCD0A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380969358.21974.6608270143990832495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95283556398f36450d192c2728f72dbc693eb69a9ec5411f37b45d2c5df92dca
Date: Wed, 18 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773809693
