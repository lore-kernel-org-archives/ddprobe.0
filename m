Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B95A247DE1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773728694; cv=none; b=gC/yFabZUuI0EVTwRSKuI0YG1ICxM0CASf4sOVCNzbecSovP2RR+1s6NUIU9254MupPtknJqzwDPZAuJAQFw/hzM00k2Zl+6JY7uNpzpiiJWRLzi3fEy1ONFvwrpk1xPsnY65k2LU6AwF95Xpu0L3rhMpattouvSzbLjhgKtzBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773728694; c=relaxed/simple;
	bh=Ak5tMkRBRcF/d0DRPntA2HD7RwLIdrjMWejeF1RuwYM=;
	h=To:Subject:From:Message-Id:Date; b=QHzxOJgIhxd4pvScAIqXqEtynJaKr28UdzB/ewjgrv1jvBBnYz2blFWgF01Aj/zxDhw4pKHeaxGpsgXXinwXdyZ7i9ClDyYoKi2jWcJam5PKFKR3e0k65h0UkyYHLOxa70Vlw81Nj+PLeFi3xXf+kboyXIgwIqhj167zADn9jI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHMLiMAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHMLiMAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1CAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773728693;
	bh=Ak5tMkRBRcF/d0DRPntA2HD7RwLIdrjMWejeF1RuwYM=;
	h=To:Subject:From:Date:From;
	b=lHMLiMArTPRlIg+jLV5C4EevBTtQHkU/Ii6OV/UCLKSxThv9kUbJolHP5QPRmwQ8h
	 XiI43IhqpHOQwtS4KAtvrJ0697Jx5HtkON3cfqs0F1qoPQDSzParbJ8vEhh4mS4zXd
	 4d70Q01cnFtIPEIKbzeQNIFP6RQQZsKbztgS09gya444YV3IOInqRM+1Cnj+6QCyHm
	 q+IH3hfOP3W8iTxI2VwYCOlnaFJdfm2fmbAyT1Qlnj685ZE8TpSDKu9EufgTCu7K2I
	 /RFf/HeeU6gcC1pVbP3sgkrZ+/HjgMr6CmUgGJwRWPfmVZYIPaxhH9+W4xOq9WRTqj
	 y4weSy4EE96Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC40F33802
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372869357.1946.1180762644864691308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e02bbf6992dab0ccc7a95fced79c1b3632c233810f98680d087e7a59b3d440
Date: Tue, 17 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773728693
