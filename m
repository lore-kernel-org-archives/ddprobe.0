Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153CF1D5ADC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754820594; cv=none; b=ho/qPw+Pjoei/y065UhfR5Gk2IgJv6Yphbz52fD74hRC0YQz8Lld4G3UB7cZySBYZ6ZvAghmyzrA4zSWGa9mAQAUe2oKFaWD6od4MDuWArfujwBhet7If5MsW5xZtN5iD/8eX/JWqS0wvd7o+97GFWlFWjiiasFm+J5mHm3yR6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754820594; c=relaxed/simple;
	bh=yTwhSawkc2tpUQHAEPzXrtXRa6Bpco3BrJFQl1vKry0=;
	h=To:Subject:From:Message-Id:Date; b=k7mGfLeTZbPIW3okpkMr8BbMV4QI1RLO/WorXwKZfy5gqLDjWyvzDOGjeTir9OYzxsl6dYixMFECUeNu77TfMWi5eCuFTzp9UyS/l5lPcK+1Fcja5431fc3GcgoT7T2BN7ZAOWtYyOz7pOrQLJC4labyv6DoPrJhn7oBrETsQGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1EKtEe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1EKtEe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC2BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754820593;
	bh=yTwhSawkc2tpUQHAEPzXrtXRa6Bpco3BrJFQl1vKry0=;
	h=To:Subject:From:Date:From;
	b=l1EKtEe9vXRC0ybQVyjBNAGPJku3+/Rol+dYlE6GK4w/htwNCnnHnmOL3bHfU3aeA
	 NSnTfGUb+mTvlrvVtknsyGBELbTpjIsqVJ37Nd/kduuZXDFuVYYape3NGHT/s52J0J
	 MqD4yrwHzScK1uyaAdNpgV04Lvm+lQfrQTHnhSG+r+U7P4ALwPgFOol4e2pBCSN/6/
	 M+C3GJfgkpn1sIh5fIh9UfeD9EBzSO/Fi0l0p5pG9uuin4LLjROktdvGFvCHXjYTHr
	 f6WCpr6jQfdp3Jf/wutXhjFju9vL9qVyMGUhq3ugmJPYNhzUxyaWpHt/OCKM2RCP1M
	 r73NNYJa6ih0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E500C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482059357.6538.9275352522743571031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a388a85f9a3d835d04e321381eb0de1764e0780d4fae7e3f8573bd1a110a8f5b
Date: Sun, 10 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754820593
