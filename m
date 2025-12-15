Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2879631B10D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765790574; cv=none; b=QNBO/SXNfkOM1wpSzVYABGxWe150D9fxeFxwyEvvajDl2P1rtmYa5n4K+e26Xzjgypgg8a6j4JHODryagZNSp9Kk3O8+NrhrPKj4h6DaD5vybSWKZx1cSVgoea17DVERdYNQ/0vh1I2WzOCkyz7NDa9CX0dTUcBD5K44Cg8Eu4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765790574; c=relaxed/simple;
	bh=gSvUA+wUoO73EqG4BUGR4hPGUIT3hAlFVU0Exjmvhuo=;
	h=To:Subject:From:Message-Id:Date; b=Yt0iLyWxLYAvN5YRU0bfgoQkmiqAFUbj6TB/lfuBZR2V1ty78QeboMae+TXOezUZGmaL2+olIH1a8LbLPfFAaperfyf8gq7apMiv/xp7ys63+aV4f9rBBiZnSAlJnaEEt3a+SCp67Si5cAZN5xXnSf85S9iXH2nqomm/fubcMxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYn9B7m0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYn9B7m0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65ADC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765790573;
	bh=gSvUA+wUoO73EqG4BUGR4hPGUIT3hAlFVU0Exjmvhuo=;
	h=To:Subject:From:Date:From;
	b=lYn9B7m0YqB37rMQN/4fFEBkggpILr/NAiEN+wB3voW5++gvZe4U0HPCTeDGVtNOd
	 LdUq2lLbnN1DB5Vh1QGQvd4lBs3QK/7121apR9yOmAxBarFFkA423y+7PGLKPoFeXl
	 UPXWuTin/pHU7ti6Rm6+/26pqj9OQ7EZUBXR5j69K+KqX6l/l/0lsXKauIH6Ph69bg
	 gtY5tUEDqEoNxg4Og/PtX+EjmsaAJDsFPdBtsTmkbeun3oKXTQjMV7gwEBkLHlpmjZ
	 nfLy/mWkUrrs3bktmlOMVXslEIM65Hjh4yXLR09S/C6M0lYSFSU+s9MiIpBE3IQOp2
	 RRxfDe9FMyN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0DD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579057360.11731.756345327641727634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d75d1b41ee362f54a0fa6852c6ee637724ba1d889d92faeed8f24a9454b8966
Date: Mon, 15 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765790573
