Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB34CF477
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792359034; cv=none; b=JNq1FoEyB2Xe4hRgFNOajt1Pmz8vqeqVlfYzi1dOxMsWXRzXs+AT2KtXrBCf2+uOOJqDMt9ody3xMsh1x+fIw339NB4YLoB7osgN2+feKesr6zPVwYIEjAyAF3AiBrsNhNspUCzSMrufpHY1owXLeufJt/glE/5Eej9aPN+6tmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792359034; c=relaxed/simple;
	bh=krShrnULxIutV84NQ8OKM8BmsVhBWBa2T953z+/gbig=;
	h=To:Subject:From:Message-Id:Date; b=WTy3vZt4J2s0mT/OQw3ozOQqCzgozKMj7avO7SXfRphPaKB6953SIwNLDQRcxgzkVmlextRh6IlIt4/dPxPx/h9lPwmvQuX04uNh8IsH1SoJfMdJr3YFlaYUUX9P9CroEucKCpD77NyVLnn2hSoxqoccon5PdNVAcwNiso5n3Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptn6/7cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptn6/7cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC21CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792359033;
	bh=krShrnULxIutV84NQ8OKM8BmsVhBWBa2T953z+/gbig=;
	h=To:Subject:From:Date:From;
	b=ptn6/7cQJ9ftdd4az9GKAV3RXcsrla6IcKfpcEptSiZep3tau0LeZr4qJZyZQlgbX
	 2djweHliqRPHaREjhHKKJtNT+ygvyllZb91sGYu+Ww71T7iEm9RzuksGy/vNCNxpan
	 UhZRBTnmGXkKLoJnvxdQU7OHxXxfo+4N4PAOruvsr3lbTR1cj85rsml54NA8TaqQxa
	 aVnevHSVlyIVv6+Y/n0T73YbbgzpG242fRkYktKEfmkyvf+hVjSIZK9UFY1RTjJwVw
	 muf+2oqgvna2nMGHoDxFt0QFKIaPtBd2RBzzlu1TJlJ2untbA7KiA4DCj/Jp4AjPq8
	 dRgKpwo/vgr1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4B2CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235903369.23425.8827374499355025482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02471f105cc234657942553f6017bdb429e0d6e27c04547e5317940a181d0d6f
Date: Sun, 18 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792359033
