Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99A27B357
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778077054; cv=none; b=maTwWwm5rbRB9X45FUfSJFdvndSgenYIGpOpNm0FSkdIgOhtvAXhZBNNMo+AeJxR7AlUnWLk/bv9DVwdXkpfWIA56CTPS7GAKdQYmiOsV/Jltv1uSL5MbNYYyajWqh2f9ZEpaFM8NiaTr0TvRXireiQyRZKP7asbz71BVmZlh8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778077054; c=relaxed/simple;
	bh=MmG2c9Hdi7yRb7pnzsjI9EvJqE5jPv6bm1LH/z3aivc=;
	h=To:Subject:From:Message-Id:Date; b=dsH4aAETVN9bNjJnaCdE3bsA+FOcCIwBNnfW5biS1fjI+avfh1uTp0a21Fle9k+iE+/jRrmP+6FE7cl0eM23tUUZ/Qyzr1tSi7NbO01kdoncEteP6OQ6j1+ZUPJ80RSvNXJI3JBaB0Gd5LWgcWxnRdJ1LSgebTSiwWzBZt4B9Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNkRphBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNkRphBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB75C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778077053;
	bh=MmG2c9Hdi7yRb7pnzsjI9EvJqE5jPv6bm1LH/z3aivc=;
	h=To:Subject:From:Date:From;
	b=ZNkRphBdlewiH+uHsojurBuboxb9iEVh3tYfhfD7kDC8iUqnquwnRUkyiT+AUib9k
	 hqiteTUmy0qjuwTNbGvos5X7PE+shQ69aD89JEGDQ+FrN9j7XUDcUKaanVrAySejxl
	 YBCt75dgZdXuUpEslGjXWxz6hu1EGwpj0TpB4kTaRaORDD3RrHIAoavqjcrXEbnnZQ
	 irm5WNSc+Ut+xCfpqsq1RnOc+iN4yx/JuUllxRL2d21YIumNDgIwbVNVnTL6/TnXMk
	 rvVSPZ5ab7SF+nzq2oFf+VOKFljXCItUjd+G/4F+comn+JFELXL4kgaECUhrNkzeCk
	 CPmRywDeA5Ekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01BCD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807705368.15430.6157107417876866495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c06c638eae7630ff2c83845f35f42e31db8b096f757a0429532c14e7557cc41
Date: Wed, 06 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778077053
