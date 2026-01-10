Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1E217B50F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007034; cv=none; b=pUWXrRpv72i/LZ5fr9aQgQl0CNz54psITbggsrezUfp3G85s8zt2SlHUhz+8N62s0AX9kuf4qlVEjkf6jNPXhvg3FXx7KdevbhnWNZ6k3e2/SZJRJWYoX6lNOJeodPiIJHQL4xjKTyRP9rxJDddvMzXwigivotcf9RkfpIB7kKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007034; c=relaxed/simple;
	bh=Cn1oaEkRsw3rpIbm33TVjruWb8RSDOpnyuFfEuvUlVE=;
	h=To:Subject:From:Message-Id:Date; b=ChVa/P4gXfdFGbEMsdkiLYVAtIBLiGPrToDeZ+pbABnduMRbqTvRvL18Aob9xj71W8rVmo71mAjjyGirqBU5Ic7MHp70cp8pyvAgGL3MEZPyLGJ5CTywbztwlNyUkSi7rFzfdMplNjpFIamnED6f3NEr8lkkBNMOatwpxlZq3aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/XpJc6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/XpJc6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768007033;
	bh=Cn1oaEkRsw3rpIbm33TVjruWb8RSDOpnyuFfEuvUlVE=;
	h=To:Subject:From:Date:From;
	b=B/XpJc6GwTXV11Zt1bDj3Go2gkDFXdPrepJI5TY7kR4pVEDeE1c3iZ3vjHVRSbiGO
	 vpEfU3S+FJ/hMms6nsP24lT7CTzCqYVGWxP+aOMjsWk+alA785j77U4ePRm0vQ3R19
	 3Lo8zZdeMLeTfKCQfwCyZerNZWGKmyFI0VKp6PyeHV36BnDz5TEmWZZa2UJZt5wFs8
	 wSv+Qe3loTfFrJVs1sAxo8opflfAd/71Z2nzZ40R8CZnMdXcbBvb/NzikcGSNod6kZ
	 LMrOqAp7CWkFTvoQKD+rHLKUI7COBEbWuFh5e513qHZtz3FjE2FTIpIkcOaxyyC6iO
	 wUQbLdIkoOPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E4D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800703358.31913.6821589061015761152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7065f715fca9a122f0feed7278fd28ac8d39ce080d347831c6c4bf6d879448f
Date: Sat, 10 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768007033
