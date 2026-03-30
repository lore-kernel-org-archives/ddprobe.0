Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0FE149C6F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774830894; cv=none; b=Za0ykayBurXi6nLGWD3fb2xnDRbMTYYVTz4F5oejy5hqbuJLX/zSWFWpkHbEIWsQ/7wCzjJknYY9UvOoKhgfAVx90DM57TUsb4jcc0qAK6Ytp88JNBcV4IF6tL9jC5mcBO6oHhi8R3Q3QjbWrMvjUUM4W6bAmpyuL9QAd46qrL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774830894; c=relaxed/simple;
	bh=RFgUk/Yz06LFXGRTWQygi+zrNKRTrDP7o8xSR1EdONE=;
	h=To:Subject:From:Message-Id:Date; b=MZa6RL/FibTqt6hQLHHFPsx+VnApQ8/y77dgWGrcmo8Agi4Lnq6C5gEqP9tX5nZYuziJGrS0Nlv852wp72gofq+3h4KMQXrPfE8KB4r6z8lq9yumfWi6BQUG4qjDpJt9um6mJIVKtFqlil8d/yXkWK2DUF+9egtjEc9aihqHOKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCOF3ijY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCOF3ijY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A520CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774830893;
	bh=RFgUk/Yz06LFXGRTWQygi+zrNKRTrDP7o8xSR1EdONE=;
	h=To:Subject:From:Date:From;
	b=aCOF3ijYxV3tYV8/ZHC6sGIb6iEOQPl8jPtrNBaXZkLkVUU8XIXV6wxxPzHCKAkbv
	 jGCbljtLng+/O2BNK0/zq1hqM4gRGw9mMj69MLrAeUbwolBwySCOOVKeYwlk/ud68h
	 cy3O2OxDjzmHo7Oa3sTcIpKL5M9WnEUPPPoC/wmBeGO0jSQ1u/zV1f3/3OrPFNH1ka
	 hMyA9+7QZ5/VrCKe2FJhyxr5S8EMqSqYU4u3+GmXXHzI017TGCh9bkxYiGN2wbKSQf
	 tzhq5nwEQ+L3TvlmokP8jYwhzuPzVrGqM09a2DrSNOD9XhJvSdujQpM8hDPZYh1qww
	 epRUyGbZZL1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96437FF4923
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483089358.26420.394764098435344742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b34b2650e386023c8a09485d4995c7cbcc1c5eba318f0e3bb02d953931a9944
Date: Mon, 30 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774830893
