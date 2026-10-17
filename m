Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6525B4CF462
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792276234; cv=none; b=it2UbIJEHOgq+sfiUjSz3XglLAogSy3rAtQMlb2AbEvtlE79pGy4G/txNj2Y/2FT7eJlHJnI/i09GAUUdnbF9K2KZ7UECFzSUr8tqE27imsuyYIWsLYNC+c7MaWKPPHibmb/T65/SkGGPnf/0bpfvdcAsDpFmKa+dEabky/W2Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792276234; c=relaxed/simple;
	bh=FdBQbIWx/cTFof/8QZYY+PZYEn32a0eizTIPAqA+rmA=;
	h=To:Subject:From:Message-Id:Date; b=XfYV63ZVyGAdKUE7wZHE6sB/CEwxL9T5Zm1iFgwgWRYqbcKRBQPpBL2SftIyW2AcmK3xiNJnbPIsyuNiTvnh2wOlVeDicQKIGTxd6HTn/xFFXKsOFkv5zx0YKTLq1jjnINaDkWhISQPa3DXeMHLyM3URkgjzY9K4HScLLKYwl+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWRzdk7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWRzdk7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC168C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792276233;
	bh=FdBQbIWx/cTFof/8QZYY+PZYEn32a0eizTIPAqA+rmA=;
	h=To:Subject:From:Date:From;
	b=qWRzdk7r6cP/aGKNYE+pbA3oqk2gBlwc2UDAfxbJA45+WwI8ods1DVrJGrFynEYSF
	 LtV046jF+EBF9vwoApLDnVwjuElsv6fFSvuYKSxN+a1BjVPvWlU35xwLBmJO7iYJ43
	 sTX4Pn3u99YM0eAVgMg8HkyUuPXBb2tct/cf/k+zBaG4YC+kFBtZrR7HoWiHQWJP6S
	 KoY/cgPWJSNB/MTaxwfE7A1jyn43KR2D1sB/YrfHgkqZEVOS+zUdu9P2mrftNJ+tt6
	 c+bTf60c8qWigTFjEA7y8GpQXuEXNius6wrWYicn3BGWqeiao0pd1rUl9g7yiDcgyn
	 qK7BbYz4wNbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22CCCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227623369.1243.13491075672881858402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126f7e4b78d40ea7e98a41f30ac85b2f0fbaf813f321461a8622c1d19a2d6029
Date: Sat, 17 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792276233
