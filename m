Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D92F60CB
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437794; cv=none; b=l2VNU2sTZUt9r1j+HnmlavTgpa/yZ1W4wIhyk22/rnQNnTP/V8rvNjBM/tkV4EuU5+mNekt/wC6xitpShSyd/5JO7n9BN0hSa2q47LLe2Ci7iYuThcsEOIWSug2sdiW7oC87f99OPfBmORxd0RP0HNJ8+nVZCFnlQxQ0kwV18qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437794; c=relaxed/simple;
	bh=vd9eVJALMpmntMsgzJ9Txbzoy/3OgpY8Tgfynyq2RTA=;
	h=To:Subject:From:Message-Id:Date; b=NVsuHJ2f/eNYyKN75KjrBUkriF6G/sDKaN+aAWM6/aw5/8D+tEGfU9AbLqQABA+o2d/SoKXne0NZ8V987kI3S6ToBi2Qh31RJ7EieybSSGsWYO/7/3pyMSply/82RCLJFXE3x2n1AAAtmd7HR/R9SnXLoHkfrSWTmAAjYMnU60k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR1hBq4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR1hBq4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760437793;
	bh=vd9eVJALMpmntMsgzJ9Txbzoy/3OgpY8Tgfynyq2RTA=;
	h=To:Subject:From:Date:From;
	b=HR1hBq4yZj5y4iS6MubPIEaRS8ZVGyPlcdw18GwgiX31OWoWzlrjLfmu+4INtoorX
	 K/Ymik5eZQgG3ZU0dA3LYHdF1EgegBjFK06sqjCA2r0BvovLtLRF35JTNSODVqbUDB
	 XkwJ4G1Hf97EogBP8Ndk3P3IkfWTZAnz/xHjvA8hpHJONX3rFhT1MbFkOkix3eHe4p
	 BWzMQkUA9agxyBD+JaeCJvljaNJ52Fp/2gO6hyocmkXCWLsL5hPbENocXh0x4OpyOh
	 P1XJ9M4f0kUyCdTy+RibylYavf8JwvNHyhgDTrYd1XuhAE863VYxWvIUK4H5D4bCio
	 jUs5kARSPSRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FABCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043779358.13350.7532751641441025372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ec852be2c4b5e55d4c2ade702e62ef739a84193c56d511abb262e9386ce8bf
Date: Tue, 14 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760437793
