Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8069A7E0FF
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782001594; cv=none; b=HP0xBTn4BlzAEx7cAy62oPz0fSOW5sUficjKgP6SJBW9S8nYTy5hT5QVnV+NVLOX2WmQgJtU16rHxOHcNeGQjBLIJiiZUpHFrIHlMrQeISagEqsSP1yK0/X/EnSr0A4stPGKToKfMefEnfcezxtSezBEGqH4YI7gUxasR6n5JcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782001594; c=relaxed/simple;
	bh=3yqx6NRnt+ZDvcU5jDmVOGXg+GNUPWWtBNhw6MyhjJA=;
	h=To:Subject:From:Message-Id:Date; b=qlyjNi0hhSL3JBwUxOZEbDLP5CSTyco0DNVpaBqyUw8H37tvImgLisV9IPnKEF6UnmQH9axxKZZBUp7bh0yOwWcSkdys1dCZQ9fz4CvNGVxtQp8wBFm7iULCof4vUJbgZNgrTT6pixPpQ6FEUIqV+V65ZDXh01TnZe9fXDN3gX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkIv/mDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkIv/mDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F4ABC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782001594;
	bh=3yqx6NRnt+ZDvcU5jDmVOGXg+GNUPWWtBNhw6MyhjJA=;
	h=To:Subject:From:Date:From;
	b=tkIv/mDtZOzo6Fi0Vp8JhuOykhIzt3eE01ADWzvXMC7jWNU9n8BkfUR7TlCAJYPOS
	 flWWMRUN5+8mv7mSv3RaLfLo/cVCJp+/TAi477+YUZAZTplWvr2hmWU/mZDiQsfAIQ
	 iXbwUFkJGlZzHkO3yTViZFQApXLNQv3h3rdOtMrnzPYCORXy4/iavyeI0LjDBrSs0L
	 OA2y0ZNL+0iPzf3Qg6lTk1q0CguvAt5qVea5wAS5NPMZWmtSn/1HRpnRuM548w9HJJ
	 KL7cn0NjeaoB0t7Q4yJuu/JqBieBuzIFbH55P/M2KlYvgHBxeL+vz7TB8Srs7ZfplB
	 1V35PPCmn3yMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5CDECD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200159378.7900.8567750766071100476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d65421fd2bee8fa3e93042fbe4dcc13eb2bd75deb270418905a820b2ab81292
Date: Sun, 21 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782001593
