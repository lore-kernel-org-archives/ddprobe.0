Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C544C77
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748929194; cv=none; b=qL3WHjWQgAeT/vMuSUTYh3n/oZgDMhwFGkIx7iqot+BCqX2lXGzM6P8JwT3k7hD3a5CUHUX6TvivOGjxLRG7eLmAjGfPrdI51MsMMDvHFJ/Va2nOX6Mbxo7XoF2v+U3WxMWy86aTh1+ys+rYluTe2SA+P96aU0YuHG3Q5IFwwkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748929194; c=relaxed/simple;
	bh=equDkexvOZt4fUCzqFeHyhIsY37QaWfcxYUPrfvC6js=;
	h=To:Subject:From:Message-Id:Date; b=HPAuSxrwpl8Y+jhjSGu/G7SVe9tyCk921EnWC2bv+V/xYWBuoOHqiFWtHuVnJ+3jMI8c7RbAWHELMbwJI8T7v/Qzl8IliUl6RFN9X6rXC/4xgD2NMfY4vw8MAqsAfSyBLEojNTBs71EgpgkRyBHS5tAgimWv9GPFoXYA7TN/Nz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWqpop1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWqpop1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B1C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748929193;
	bh=equDkexvOZt4fUCzqFeHyhIsY37QaWfcxYUPrfvC6js=;
	h=To:Subject:From:Date:From;
	b=FWqpop1bIID57O+TnF9eG27RSoJ+ad2PtYbGUXHgFfDLtKiHfGP86/jt0cCHG2AbR
	 IPg4QXObCXSPQnxIhvc6w1gYt09SbcwESA/GIsR/9ctyYc9Phc+zasTO0o5Dr40l+2
	 9vNJzI4o4wq5lF935RArSVW0RivQGmTxuDuIfEPJfygWj8wlGbDNIAd8qD0cXSUyDw
	 EqQTklUOpNhBHBx/QNiNAgmiPZltAdsA3H5flFWjTJeGrKJIZ+TwV2S7zuQS4HOss0
	 QVN/eYW8oaO2szsQAe1wTvSVPAvTeHE1wTSE7OkQG9pB0PYRe2T3ijrKxaVIOoFbGG
	 lIE/K58OeJmhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892919357.16340.145945208191850181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a45f3eb7f679d15896642d428a3a48a94773901b2b22c66b957089d7ae58ce7
Date: Tue, 03 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748929193
