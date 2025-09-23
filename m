Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1948325F7A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758592194; cv=none; b=TcVgR95nOunzAu+M/V+qaLNyaoeF6hE5DAdc0lwPFMevEoE2oF8XyCE6/WDReZkHs1W44SDEuFJ42Jty+fza2kSt5uUId89pKqsV8kYgOiPlKisCquS81T9eEPFRqAKVb1VEmrXe+kIRyNhXC4KFcsSs/QFCGmklhEUIMeYEMxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758592194; c=relaxed/simple;
	bh=lg9ZpzycF+f4zCgl7v7KuCKRVk9hzpu0kRxuPugZsKY=;
	h=To:Subject:From:Message-Id:Date; b=WQyG7NcKZiu+BtOn2qJrtcRjeOmeXl2Yiv6bBRKsXHbWw16X7Lx0fishw9gZhKBBkWBvNUhHnjJ/iVF0YCLmCnnfKla2fZopKAOlu7YxN2/smDY+6sBQBuaV70/6GHp+xkY31aEPu/x7/Y7GcdFrK5/B4LlUTt31aCgTh+JXrTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opqciY4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opqciY4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4565C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758592193;
	bh=lg9ZpzycF+f4zCgl7v7KuCKRVk9hzpu0kRxuPugZsKY=;
	h=To:Subject:From:Date:From;
	b=opqciY4UiOQEZa0e8BSk+ga1t0xwD88TSX0nlgpRc31vCx25Voz7aafBfKi0ub1Kt
	 44CYLL9YSrBjlwZlXAIEC/1fTQBASHaPrAgD6MCERFMjl+s1oGeLcYtaWtOuIo8+O/
	 9yVnn+suK6T+d8GSsFELJZRSyNlT1uhYxcugAJxhcBnTxw1/ip5PqhwgBmQp6rzmlN
	 pzjzzlOQMx0H1t4XhuOpkNs45iLGdSpjmJbsyDAdcnAIRm9vgdzfjlZqp0b1NkzIKQ
	 I4b/XcrLLti7CdfPQ3gbRdic3bfk5ek5o7LUvWJeDgqIpImC1sdhbkf13GdPVwoOfN
	 JzHfS6bZrKbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B1CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859219359.5224.3391154690119319613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de95d60ba4795bfc348879c4faef7814578344a217a58723b1484be3ea09687a
Date: Tue, 23 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758592193
