Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016378F3E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774746894; cv=none; b=p7akypFS42NmFEQLHmt8D2zu9h/WSCcYsyQhbAQ/bbqqfrOePBxVqFyBnkv6AApTTdZcuuFSFaFaH7SdHyXVlOW72tTslkJ8v9JWXa8ir4+K+Mpzr2rzGha6dpXaAVD2vjNRlSgeFKMg08LwWK6MdxuFJfUTxi6D/wec4P0VwQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774746894; c=relaxed/simple;
	bh=6fIWcQYs6ctT1GFBBzeW0Nu4xfuo6E+/mA/giGWWtpQ=;
	h=To:Subject:From:Message-Id:Date; b=po0esI2c/qRI+QE0R49Js6JGjkJv0QsM6HG9mnMeHwVPS010rK0RD6egEp9+nfCdlCzE58hHx+uwqK0cxE3uGtvXGnA7QHK0vsOlVTskEjJ34ejhGhareagA3i2P5QPTO3KV2Z0JhqW5+FdNGG41Qe4Zj+JAb983N9QUs5Pk5nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZy5ekm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZy5ekm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774746893;
	bh=6fIWcQYs6ctT1GFBBzeW0Nu4xfuo6E+/mA/giGWWtpQ=;
	h=To:Subject:From:Date:From;
	b=QZy5ekm2NEID1rXzwOIr9mRobV3abpwF2nt4oJRJRRgcdcw4dVvjTD3C51psOtU4Y
	 iAdKH2jhdL7/o5PbcKcZO0+W7VWFml/nZSJRh6BH9Qmsoit7LJw/Yb79KjszAhD5JN
	 9Sphi3T+tsPBaVg+9e65sSIJJ+2aQu85XXH4beTrcbTLBKm5eBGzxjdirjbLCXK9Px
	 KJhku6V8g1yZgaUPwRo/gq52TVD/uDlXX77SN66BS2LEoScQGdBFaRtpi1TMYOdBLC
	 LGpnL3wBA1+YnGPBUKZI2XzNnUhenOYcDmQVUNTpbuPpVatpttLWVaFAoGxXwjMBcs
	 2yCDaeau687fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030710D1491
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474689358.21537.3388788250835062317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20f15cd991471a507688b5f1591204250683eef5f5f55eb9d18be3ba669718a
Date: Sun, 29 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774746893
