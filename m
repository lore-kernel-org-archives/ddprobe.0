Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194CD2C0287
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766268234; cv=none; b=eVnF/iBDPUf2v3PadyHbAJFSoBtq2pU8V5DD/dM+Zk+KI3MbMOCobjZjaDmgt81C2Tw+zppXKqzSweHfqWQRYzDxSyNWr203smO4gPbXj4zlUqeHoFxMFFT4gJetMS0PY/5RizzpLJCT/oFhgnridgUIJML7KMNm9VPALd4cW4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766268234; c=relaxed/simple;
	bh=bIWv9CuXNGespeNpsuTEaYz3LKUIc/jKZQ1YE6wnldQ=;
	h=To:Subject:From:Message-Id:Date; b=Y0boqM+yb09d9DTd6u9ZSSCb4EmbDXsw9WZWFXhp5CTVrhIQdjeaPX7hqSMl7pD4is50bRgkNNnXS3IUmrIQAS+IP/lYqYktzbQImGtGAhwtQ8uoWm0PgohRUrVVEZ9EU84NKhowJQs3SDrXg5xVtNz0U6h8R+9EQil3ABvXw2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QE4NkgaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QE4NkgaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6059C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766268233;
	bh=bIWv9CuXNGespeNpsuTEaYz3LKUIc/jKZQ1YE6wnldQ=;
	h=To:Subject:From:Date:From;
	b=QE4NkgaFKX3nWwGH9la7jQOJjoLJX0uhzJc2kXwgjHPINagOpswBW8jbLIGtItm1C
	 R/fuazWxfl8ExaLPmjbV1iw3uaqQamJw365an+M9kDT6aYNcfqCT7r+U/26cBykcPj
	 cSr0Qu/DU+W+EUT36U2R1jm5F2jKxBK6cy80Ng0obaB/dE+UfpBj0KJL37eeWNvuDf
	 XmXACh0YgORBLEE/cJTg6/N0L07XWo0gqL1w7vWJDMWslMmBzj6dup2zU44hc9uHB3
	 cKBiX9dmQ7ejmPwxuSjFIQEc6JCw5o64Cwfg46nqy5PNLLRvFxsGWVHY2w7fjJs4V0
	 dosEtdkR4iMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93196E6748B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626823359.1496.6047448699053629773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ab597a149fc598b53725a7b048ee22221e5ac6263d65f8391738a8dbae3cd5
Date: Sat, 20 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766268233
