Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF34223DC6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753741194; cv=none; b=RDQvfGP7vz0e6j1smQT449pGZBLyrfHBmPaEh8DBdfCIlaIjDTTjWhX4TrdvATa1OWHKwv8qpOhuetxCisgjnMKxPyXDU1kEtTwkoggGkQiSNwuNF/KzEb4Hg1l7xHvgaYh/wSACF4okig5erkPEECHRm3iPOdAw1mYvxOnlUqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753741194; c=relaxed/simple;
	bh=ghcIzgJvwCoFO5sJ/Dq/288w8FZwme7rwr3LkM4jsik=;
	h=To:Subject:From:Message-Id:Date; b=BGQvplwaNnHUygLrZC17r5EfNDjGxzBSAsBwn9FPh3z9q9WLdkAiPx5JuM0LJc09SKKcNm/yl0B9gmBSFWCpPONkeUMVlVJoQyq+LCcNZGd4ViTUtEpS3+6Qj/Cb2pmy7wwCC3DRsLoVfXPjVZ9q3DrqWRKMOKouB1ulZOOyg98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRY2GiAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRY2GiAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753741193;
	bh=ghcIzgJvwCoFO5sJ/Dq/288w8FZwme7rwr3LkM4jsik=;
	h=To:Subject:From:Date:From;
	b=jRY2GiAzgcQM6dgCDEk38pKSrfWW7d1zRI8ZvW9fek0HjR9mODTxS/TlNvOGh8Wsf
	 s1f+bnNkpX3jQout1Ctq3pZzJU7a2SwcJaGsolDh/op6SfaOBvqvDx1Pm+sb62220U
	 EcyVvjIBqTL7v1DDpiLKcTFVVEniU5MTTomVLwPvM5HuvrR/qP5qmnW4X6VqY7wQQv
	 lI8C9Gza7GfTAUxszVujK9VQqwBXSlvRCN7bkv6s0O349z6pfIAgx1yynD2w9Nzrjg
	 /n5T+504zwMTxKuda4/nS//wECkaqb9GOqqla+ejD87gBWIPVpBEn+AB9GJjZqvj+d
	 cr945AYKapvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FBC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374119357.18614.8434839510367712913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5bc7c444c37e4a858be1a762af5e4b3d19ecf57c75ac95c45496f8e1eb2b15
Date: Mon, 28 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753741193
