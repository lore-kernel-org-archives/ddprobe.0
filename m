Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E7E3233
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714522343; cv=none; b=ZLBC6EiCTmNYXjECeiTVQDKLDHgXkknjqZTucFnto8Pp82n50s5Mrd7mufY4nXWxCJfo1jNkAdelly1JyYQ+f+X6ynmqZo2Sf1/HGJqwTnEBzW7q3XGxATR5n2xXrGG2elTHmtkQlzjF1h+rXCCwIaHucWzUF97pvIvPalEyqS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714522343; c=relaxed/simple;
	bh=xv+cTFqdf3SBzH3Rk7zO74MyUWGPyRsNZTVx41fM07k=;
	h=To:Subject:From:Message-Id:Date; b=lz+oWUESJKZeY+Hc8ff+/FNU8wKhQhLyWtDJ70UnKTERcYrJiRICNhBhTksS9Ufm+2fsZXXmgd1XGBMrHOC63ZePJSiQcyP7IFKkkXnp3R2N3CYDB6k6uatUx6oDoEstddvrLIZYBOLcl3zhWIfZ5uTso1xZin7Ob4I8GfBJx5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqIw36C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqIw36C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CD6C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714522342;
	bh=xv+cTFqdf3SBzH3Rk7zO74MyUWGPyRsNZTVx41fM07k=;
	h=To:Subject:From:Date:From;
	b=JqIw36C3bzGvcP/ynzvYaDlllhD2Ycg9lIrAuyVDzikdRLdQFWh8hlpc5FHsmgcNH
	 J8KhMhZMK1og4kmAM8XVqjxy+XTuavj28UEFzYGGIpkvPgPlll2hS7O12TZlw/TWqA
	 E0OsoCiY7jn6Uixf8NFVKSbmbsu8XlgqujhvpIlHpOh2Q21g6/cnUiG3+Jryc4EneY
	 aAAoVLb109QILDdoGUJHx8eE/ljS2amCdAJhtDokHLoMCHcedP4v1KdlasXb0fVWv5
	 Y3x2XfwYuoaVrfxluefKtcp0NjTZnyDqV/Ndt9d5vfqGdkW/e1AvsaxYNVNqsxZsZ3
	 CngHoZz0HAcjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3766C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452234276.25678.919951143619404106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ab381ccfa92636118f8b2c6a5f3072ed5ed09ef700f7a11fe8db2cb4646ada
Date: Wed, 01 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714522342
