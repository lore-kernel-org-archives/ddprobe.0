Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190311514F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764753774; cv=none; b=SbopZhTS4BPv3zRKS5FKepmflnMr4EGIUskB78A263nqz3vwrKG3AUDTV8qp5mdoVVM2Qc1VnHuad9sC3JTg9bO9aRw6ZEHsaOOY/ch94D7vI7qZQWGABuMHedYihCP1QvbcR1ByhUZqq3piMZSNFcCa7gW06caEbB3ZYeq5Rl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764753774; c=relaxed/simple;
	bh=cyZbqpdqcTaLOHs4Jk9o4agRsjoapBKNNChehRIx5l0=;
	h=To:Subject:From:Message-Id:Date; b=l9qgMqAZ+YHrhdsr2vsFBt2hZAXBnKcl8myDvJV9ppjDHmQDEIWw/jgpHXJx3Fyv5Ooqzx16DU3Yr4oRRG0bJjYAcug4VlCi02M8xRHajGX6Rnk8amv1G91OIvdgtuxOuibsybe8v5grk0Jpm6LJRtBZ/wvWTRBqmqM951QvwIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thxBm318; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thxBm318"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F9AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764753773;
	bh=cyZbqpdqcTaLOHs4Jk9o4agRsjoapBKNNChehRIx5l0=;
	h=To:Subject:From:Date:From;
	b=thxBm318oiXvdJg4Wv+qtRpVESQl7dKJD1NehPJrvhrIVQqqC0A1MpJ2Vqu46ldeB
	 ldao7J7w42DTCitg1MiuvhEW7oFbdttGh/SvTaDxAu+poE4/MyuLoqsNhtE66FLsuw
	 m4gTfMMIOgNmBYTtdVUYkpVGNHnvZ/p8+rOspUYEHYU1D7hsVuIjwZ06vyQkbozdD/
	 UfFEJ5StpU+PXv7kBcx5PIWrmVvsAtcf9uFL2C0UPdQnMaxnTZ+gvU4nCgkvpXdwfT
	 A5Gf2zzVkpz7AtuV8NoopxLsGC6KwpYtRfULY+FguK4J5Qruwc9XPURvYuIwanxCap
	 e2JF2FIoahcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97167D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475377358.23543.12542316719590969306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a665de4c60b72ff911f69d22d9e415836c9c797260c459189123a25c942ecf8a
Date: Wed, 03 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764753773
