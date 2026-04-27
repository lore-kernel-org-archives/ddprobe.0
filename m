Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D572750FB
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777285054; cv=none; b=GFrbtoz02gUMgQHLYXo5HFgfGJUETNPgXiyB/fVTUn7bX0EmZgHCTLLHu+LYLXEoWT9zzeelsISMXjFpcHrdIA2zZJ60hRrnwKWMxKOWhpibILeJjQfa3RPeWRYTue2VlB9Os4FA5qFor3hBd87Cnb1nCBMxpDOuwNS5bjJLIbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777285054; c=relaxed/simple;
	bh=1dftGgUUIpTpweJZHI8ffKEsbmYVHXytXK4S/d/BVHs=;
	h=To:Subject:From:Message-Id:Date; b=FFEF3PQN7LGo92WBWQnu+ckzbzaFgjI2FC0MqznqX2qv2BC3dGygstdLYquSw2ct/Vwf7fcFzS2ZMTpDpXDW1GWTuJWmtXQZr/nKslEtCzxQY2ayU+hXAALy/eilq05kcGIap3vVuevaOSyqtbQ9jndoCKoiKtJPd7of6PiMris=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at6xHG6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at6xHG6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAC4C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777285053;
	bh=1dftGgUUIpTpweJZHI8ffKEsbmYVHXytXK4S/d/BVHs=;
	h=To:Subject:From:Date:From;
	b=at6xHG6b2Au6v1vH2QnDgSIGAfCi7YsuIUXfPnJVI6hdGus4xLps0V0LYFsh0DHuT
	 5pU7im9vu9LcU9/KSq0tOBtMP/ATxTb9HWbMV6L1lXLkshFjcikV4Qs2Cb5n6hR/+v
	 dx10BCrsjnmvKu+iIH5tMhwcvBS/yeUyL9rLqrM0BzkuobBCyiTzBW4u8t8KFS/8BC
	 J1s8nIgdSXJZx9Uu39/sU5WwJlVZQ8AZrTUsL1ViMVR6mkJBbX+fpQXU+b4LPoPkav
	 eqgj9oPMCbi9PFXNUlxdwll/okzgkdIYKsumQsiflnifCecr6VLz5InJfQLCP7ruiA
	 V6gENt9fBUjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56BFF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728505368.28024.15155265643248444133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e278f5757d9d8bf0aa9b7a8a00f74f3ad276ef2a2a77ce56b73cc8c7dc43a30
Date: Mon, 27 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777285053
