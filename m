Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15847287518
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756935594; cv=none; b=RyNChRlSQTkH1ex/Y93k9tlp4d3vPy1aN/VSBCTGGuBIBMHBKPL/32w26a2UPBXlnKJqSrYovcU8fVNGoagvMvVmtR5DwiHTTwh+VwesnlNEGSRdfcQ5FnkvSLkaLMi7iaxucevt3mTi2Je3K5e2MH0Dfvpp3099EIdZZtExzVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756935594; c=relaxed/simple;
	bh=CU8+YawB8VZvX/3SsWrxcPZDO+SbDPP7lU4a6MmldPs=;
	h=To:Subject:From:Message-Id:Date; b=OiMX/rzC6fxD0YdntN5V6jtckVIXLwb8VMFdSswx9hzAacYX6kQNQ/qOe5qKHj8RoRzLJsn1QOylMg+IcnbuNs0//zpzSglykZt2hfo29owEf5TV1xiwwUEtcyqMUrz2n10vkAyLm8FcpCP0tP6QBQ37+WJ5Z7bwfY/FY51UDkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6uf1plB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6uf1plB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0720C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756935593;
	bh=CU8+YawB8VZvX/3SsWrxcPZDO+SbDPP7lU4a6MmldPs=;
	h=To:Subject:From:Date:From;
	b=q6uf1plBrUqCUiQkcousN4PfdQ2D21mejvuSOS8qGBcJJqifkka32WMiE6y3yMswb
	 xJa11CVlhnO3RKixICo3aX44Ix0s9wGkM0N2uNBSiTJr8JWZ51u+AQGg4YYIlTrQ3k
	 fROrbtDjD8fk57EMZA28gxuUOS2kaYmGZbqICMHHH4azsOG/l/8Gng2pRnrenLxQ1D
	 lL/Ma3X2BDSt8wWLFramflU9jNfN1+6mhXt6hYXSl5m68y9Qrx0t19tq4r3YCM3iJN
	 5A19QrY/rjEScqH35L/RMOXTeOpUUqoM+RVeS2lxw6QVVVne396xjNQ+6Q1YJ4E7F7
	 Ldb5gDsyuxYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC2CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693559357.32284.3347851468161831059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e63ee7815148aee48b8dfce923f7dbe46de329614d2a245e5d8a76c1564bfcb
Date: Wed, 03 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756935593
