Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93F1FE44D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749110394; cv=none; b=jk1pWgm1cuaOHMEjNIfJMbQHA+qlrDz+YDJtxc2zREEsMGjMqyiwlcnbkDRXNAIzVT8+zG7ddvii36oXeixJmy92Io+x/nGhNlEoRw3pSFxkxHL1yCU5IfhK/uoOLd97/KKImzfMsUt1R4iAoc+0hj4zBZCFRBq6yyRhiwlK1Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749110394; c=relaxed/simple;
	bh=fTPG+/AfbwvnePpplDh9tQApEd2UvNlzyZo4TpZBzJo=;
	h=To:Subject:From:Message-Id:Date; b=BhfItOYbfB3Sr7obb6tqHfOm3dlvf3n6XqLhncirSHB0vSmkOlPKCJjFb/lXkXGtjtG71HEyXfgbguxRO4ueLXFLFjNpkyaCBaxN0/u4n01oypwmRst29x7TD0mtFanu72KjG/HdfgCj8s/2qTP5gfQfHXWtJP17PTlrwLNbHSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUDVnfiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUDVnfiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C20C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749110393;
	bh=fTPG+/AfbwvnePpplDh9tQApEd2UvNlzyZo4TpZBzJo=;
	h=To:Subject:From:Date:From;
	b=kUDVnfiIh8FSiGA5RA5LH5TwuortMmCSBfsMj9HJg1Jx6gF67frODwGu3WuFmhTx4
	 pVjeQbYligy6vQ1jXWepbXnoxRomO0QWLg0gKmAsr2rp91GKvj3diPNe9d73nTLb9e
	 NTp81mQFciE6xbHDBtFWKVWea58/EdDfLxA58vD0EN5iDYe/iyxkj1gRxynxFIW4bM
	 gbllLOfrXUuQ9EVwdC0lnVjd09qSohzI0iDhP7Or+3/hVDrzJSzeUprKp44Tnflsbl
	 QcHcVenkdEB/OoVzNQXW08kcw+7uOQaoyrRRNObffLHvGRpglLx27Eoo/pTPlCqIn+
	 7jVKFz2YozdDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA63C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911039358.10122.3661060419943503483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebfde48d625e867e6e78be8131871d2b4cfb877cc1d5b9387c96eb1dcdc466a
Date: Thu, 05 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749110393
