Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675E61392
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743814194; cv=none; b=Z15gNOFOQwacTYUE+mEr9MBvP9V/4BLPe0Fo2BZW846dqzBpObSwbaRv87wEX8HepWcNEFHXIUssn+0qHzGHv15uzD9KUz6+CwcOUlcXOqzZpMuqp2MHVKIKE5+gPHP7cWBxZkDSErj3V2eEYFzK2A4XFXZcGwe1kqFDDvYNY9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743814194; c=relaxed/simple;
	bh=Fv2gmhGQs6wOHx5qwr6mMxTZw68mNEliJL03gydap8U=;
	h=To:Subject:From:Message-Id:Date; b=hNHYbOJMtqSIft9jvs6bEaBQgv2OYCrhUyOQYXeYBUXl0vxyOfkEqZOcjOGHC6vtGHOwmp6Dx1w0cOZktoOSktD8vge537AFXgeV1aoPIrE12KDMwtGoyHTc+QXFy0pl4M2NWIvZ6PdtvVgvvU37JyUdw6r24R0dGh3rnGBwfJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcbTNg7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcbTNg7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8962C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743814193;
	bh=Fv2gmhGQs6wOHx5qwr6mMxTZw68mNEliJL03gydap8U=;
	h=To:Subject:From:Date:From;
	b=YcbTNg7xFpC4G2vK96CQXbBRNLCpKjjevEOtZIetAA0rHdoFRNh+Ord2ZJ2Qm9f/Y
	 TGgHbZdi25/QSHk3uMlaP2PZmBsq1Ge4+Gye2FjXsh27SPRJOdINyNPIzfRKHMI3zC
	 WPFmKntGoRpGLIcqGZEB/1j7Z3U+fqHMi0ShVpP+ANRP8x7OMUBwf0HDP6Jqp/pwvL
	 hsjnd9pVPaCmVaSySldHtd6M6sciiyVdLFN2ndd4J2BQPsJs1iIPhCgMUIJqlf0ohq
	 N93nP53Ny99XVxoQVdEMZr/MU5ddniXZBhsoPI1B4IRsBQhBLE17qP6KpssX8Q+8O4
	 mhlJm9Lc/c+2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E275C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381419363.30279.9130549694758786045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d48f07fe82de921e5d1a8a412211e096b22e89397d62b2c63da0c2b19003fb4
Date: Sat, 05 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743814193
