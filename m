Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2840A3B8D4F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764969174; cv=none; b=WvEisqgYNn3oCeB5NS6hJhXHVtXIlAY12o+zdgywGNFJWQYJ5Tw9BenjpJtkRjbFrzghXUX6eAZ7OPrluEYFD8Ivzo3hNTr4ZgEicrdGPSBFXu6igu8Z5YvdtONXyPrR6RrGzn+8a3SDPgeAh61gyAxBW5Es//oGnlolsj3bhnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764969174; c=relaxed/simple;
	bh=ZK2+7IN2GFWZYTXWoGPF512ddIsyGWXJz/a1bCk6OGw=;
	h=To:Subject:From:Message-Id:Date; b=Abtt7QSK99OM1WeiME1YkfuX/ZntiplAoL9te5vCyzQ+oxoC1TJG5Va7DH4g0b/CcY4ylbwy+vK9Ez4eXHlO8RPFMBvkGq9kMhX+S7fhfD4yO6yLj8ClHKBZif2oFtzskHH4foYnR6N/JBB96y083I0pQZDt5oCksXH9UkR+Od4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxUhiRqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxUhiRqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C81C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764969173;
	bh=ZK2+7IN2GFWZYTXWoGPF512ddIsyGWXJz/a1bCk6OGw=;
	h=To:Subject:From:Date:From;
	b=AxUhiRqu8QoFgeFf0eiflBO3/b4RpKYduSvvDKGYQa+bR0amtEIhOdUdAfcAjXT4n
	 j6RSd7pyHj8r2JjfuLwNzGriE2Ln9mtpXmF4x/ZF7ZTiuXbitGWtygpk8Ak2EPk0oq
	 UqTlqav2a79oN3Xt87JXwJK/sVK9U4Ru2oZE5kXSPQ527t09/HgjVsaX891+ixDdbK
	 XamjQ2lq4U9Lv4YNqD2GBl236ZmPiE2loRervZxq2qg247ndY2GOa6OeUY3btbzdpt
	 4RTOrRGXyPdt1i6ptzwwEowqCMcu5twtBfgnjpns+1oLz5eVA1FzDFXr6HT8SUF7mt
	 nP2clnY+uZSZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A70AD374A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496917361.29451.1144194186465018277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f22c602eefe533fbfc90c8e01547b8a1ec1b1b80eed93654cc14a36f4f27ca
Date: Fri, 05 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764969173
