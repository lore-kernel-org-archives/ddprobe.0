Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34DE1E4A0
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708089497; cv=none; b=QUBlRgmXgwP/6b8KS4eNunX1s5mbhLauN8DbfpNEXzZec9xLC/yuteJq0Y4mzCO/kLKGJv7Ac9H6tx+kauVOHvwZeXsL7Mt0TGOJ9gYaD9bKyBLEYjv1V+IruJR9thp97S2kaD6w1muFUyLe4cZJSwJf8rrAThL7cCjCkVivnok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708089497; c=relaxed/simple;
	bh=1e4WRgXqluqnhbpl30VjztFgYJqN7MMtjxIjsNKVXvQ=;
	h=To:Subject:From:Message-Id:Date; b=LI8FHmvqfUOQ+hPAvgYJnEMJTxPT7cAiVQ2uaqM74n15BoEZZQ0Vq/QUX8Le5BN1LPIW+4zXNltSkjFLeXVpETisLgz0WuGiXMYStvhxxaSzmZcM2IzSaKJ5yT4TccbGUCzDGsJdzz8XgxNH3hg65LFCqazzDcEXSzRc1IkjaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6IRQ2DA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6IRQ2DA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7C6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708089496;
	bh=1e4WRgXqluqnhbpl30VjztFgYJqN7MMtjxIjsNKVXvQ=;
	h=To:Subject:From:Date:From;
	b=r6IRQ2DAz/L5K2HNcYuaE/TyovYJNXGc79fXBHR7YCZWmpfuqNF5Tw4RS2WRKPDsA
	 SLyNtFbPpQnWKxFsvYHV0mTNw28kn/STMFtAdESHBQQG6vUWTXb5VWPzWmAurmVYqH
	 tgq4+YRT1Jx0ap7fcHMaKaGV+550xCTJW8F+IXTskNpTmEL4JoMOiEuxSt3Opq5zV6
	 tzHgl8yrfR5Rv5uOGK6ndikHgGryhNOHv+7Xpml8U5zV2gmHtDvCL1SJf5NrB37V79
	 wFV7+cthpyl8s4njy/Ou/WGUexkdNIlziTSDEotF1EhDgZrrMb96IxECVzmLsHhjlG
	 duDjaZoUvTUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6619AC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170808949639.18629.4161314808573810656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6322a856d57d479265109e3f4f07812c52ad1ace05154389cbb2c3223b5cd831
Date: Fri, 16 Feb 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708089496
