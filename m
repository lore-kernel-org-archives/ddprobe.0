Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FA81B87C0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758155394; cv=none; b=dKXAXld5+M1j0+h/cXIk8UwRa6TSuaI40JsPXuceH/vjza0k6VcLDL5SmQtY9tTCPfOr107KGbPbL1j+2y08chRzLtCbgQIEUIufVxRo8Csm66apUglvblyRKs5Tgg/NgZrTzzKWac4bbXS2EEYeaogQzaT1s0wHOro9h0P21OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758155394; c=relaxed/simple;
	bh=qxHhiAs+/P2z/Ie1JNENQN5ycRsz6PP1GR/ezsjiHv8=;
	h=To:Subject:From:Message-Id:Date; b=cu5fJ3PPUKg0lsVHuQ1O5ZR2gDxPpMavTBnUSx1Yg+0LX1yUWKt+RQvavggy6XJEDYKI5bY2CykS+ED+snGsRR9FiRN7SVuIPBNzZrq2Ea4Lz9/DNxEPojbwetiA5XdeKzT7RWcGTvonA9tpk3oEGdNSu+L1HQbzpRptvtpeM3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chqAImXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chqAImXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758155393;
	bh=qxHhiAs+/P2z/Ie1JNENQN5ycRsz6PP1GR/ezsjiHv8=;
	h=To:Subject:From:Date:From;
	b=chqAImXq+Ohpk19yd0L/XY5L6E+MiO4gvXUQNAmbrJoOoiy86s+3MZzuAyCEi5r8T
	 mHFZ7owO+DpOdMFsZBuwS43e4+UL+eKR52vYPtwsWZAaFmPypjrPgKFz2I6Dd+aFQ1
	 AbGh4Jopxck18PDtMubSVI6DNYxXz8hcaKcTuXLVnqB7nPxKXhgErBYXvpG0E+kNZu
	 Sb1na8c/Ob+fbGyi9foEsACCQhKla2cpH0UbVYLLFrxdTQ05C85mcze/xgqtwxqA84
	 LY4u2+WFeQuFv8FEUjWo4tirt3UMAtZVLGd5Tkod+fKGs9e7strNCqhCwS3BczELsF
	 nvHzPxDBNGF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCACAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815539358.11276.1459947776550632782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7b05d02b2e258d5fcadb694b825de5226dc7aa07d71010912be697b3e926ff
Date: Thu, 18 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758155393
