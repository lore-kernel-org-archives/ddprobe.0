Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087792E9ED5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757320194; cv=none; b=G3AM2g3BN0THOS6t7IxjdN+8nszZ5rnbIqmxccrjGWi5WHz/4HDk+i2zxv5zlIha210gVdO9EN4AQz4CtooMm8ZpnUcvRFWP+cZ6AetsvOa6uBGKfTax/AeSdlZeTJlKvEaFgcmX8/hHHEFzrUWhf6pPTpGEIp80p7aLCI6HcXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757320194; c=relaxed/simple;
	bh=Y+Hck3uL0UzVVqDcNu9lduG/BZzzezuZa7o4/yFmOrw=;
	h=To:Subject:From:Message-Id:Date; b=gom7EA2tkh2R4Qg00JK88Jhetsy2aA2epBx6+rq0EeN4tH7meU0QvcBONrQwkoIYqZAqmria6sBX5QfQHn5BlItKCg+eC8n9ROcAJqGhYuCHooMYrtn7kNLfbcEU+y8X6IUdKYYWI0EqBJ5I97DLmsUoooArbqXDB6DSx8s6YGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KySDAamg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KySDAamg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FBC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757320193;
	bh=Y+Hck3uL0UzVVqDcNu9lduG/BZzzezuZa7o4/yFmOrw=;
	h=To:Subject:From:Date:From;
	b=KySDAamgiszyudQzQzXoPWLVEMuTkcGCUH/t67BhA0Rc4MU9lT0uu60oP4bbDsifv
	 V0da5sQrB038zJqpcAaNW0rxMyM0/6VB5gxXcanCb++nFaEZm8xu8UUUaWxA+k6t3n
	 tr4FauXgDGwwkWquvT6+zKHiGRLrm+qRvYfWXRcmt+Vvz2A9J39y6R15S74bTA6EXT
	 I9nJ2s73Xo0JcKRVaUpnvAzvnXDVZ9KYINT/BnQJ363mLWKwgT5n2mhDPb4BNQi2gg
	 tcnG2LNxh+MfM8M6ngqpXcH6361wO9fwQBGs3zbveTh0bMnQrsPH+bsv/7n5fEEXX9
	 9DaR7GPBNZUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91010CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732019358.21718.8047713085123853864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0bab030655975e8767787c831ba5fb60fac1ce91468a8b278a1ad143479c2a
Date: Mon, 08 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757320193
