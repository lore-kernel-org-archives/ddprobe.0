Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274331885A5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767048834; cv=none; b=TJVhXV8ls5FOeI0fUBzsZw1GGKVuxx1UWJigpR+rVuji4dqzFY/4uw1VheJGdBgL5ziCXtj52Phx/6CcRaY6uOBjdyjKfLnBGdnHXg69Ja0unxBazmef4xTpWYqtix4YTQ4RxDLv4VvTmdH9G2yTVOhaTT/7wRwR/oJRkuY4NVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767048834; c=relaxed/simple;
	bh=YLHiYPTj76pwj3w2h60I5LDxgTMF1+PxqP5C45UEQo8=;
	h=To:Subject:From:Message-Id:Date; b=u0nTBs/3giR4Ob/Jnh9OJXw3e3pQA+tirywR/XXoa3/ebkKGfp4Qx9J9B8QCU9Fzivp2I2n24q9w8vBy4xoQ7/OHXwxoTZbOcWrQ4182BDMq/MMK8EASddSzfYzAqwfx5cPvAS6TcNRK9GRpDv7f0PyNxewrA2MV8D3bT29l9DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhnRZzHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhnRZzHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A761FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767048833;
	bh=YLHiYPTj76pwj3w2h60I5LDxgTMF1+PxqP5C45UEQo8=;
	h=To:Subject:From:Date:From;
	b=RhnRZzHbzonH6U7YJtVIt8FbPMfK4xI80ILcqxD+YogzQ5ByRatWABmmACkBo3Sj2
	 sphmOQAiq/zpQCbHmg9ha2PQOPV+laMn5ip/xTxLo0qFgNZQcx1/RaimJonk+CAcB8
	 pBtqm4kKjYnpwo4PA/sUJxUhZP29F7B2pQSmS6kol3DBgJ59Bkd702nFt+g2CsrneQ
	 HNnV797X2p194u31mlvKYPF4PANGAdzbdBDr0kIK6f5gtDnCcvoWjLPjxlZV104C1e
	 nFz3EPdP3in7Ey2uV1IVp++yDyYX6H3nOWc5GHj2tuLpaxRqEA4T+nj4lkhxQx8Dkn
	 c1b0C3mNt44RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1DE92FE3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704883357.28930.15066338562538769080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed9a64208dcab0f9c40bcc83513b903c86b7a538e2407b9d600e0a2f841d49e
Date: Mon, 29 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767048833
