Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3337080E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769496234; cv=none; b=Tc+GCOOksgoIqV6LvA1fTmfl2ar5MQwco9dhha0/X/nP5lv4kzMPNtzWv7PmtIjfp/86TfohgB7pfJyCF23mPTSYe/NXrAO8z8OVs2yoEl3hnA5+PVUjZ4W5iq5t9GzW32GdYpmbUCd7ufbVczs6GNxnJjcvOuTiDYM57NXN0fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769496234; c=relaxed/simple;
	bh=0JWO7QSYsUpy32LjbhJ68U9rMrZJbrGH5henknBQg0g=;
	h=To:Subject:From:Message-Id:Date; b=bjCVmnsOxo6VXZoYwR44GZtPz2/zyfk+ZvKA11Fy5gemchKNhOORp9D5LbKaKU1lT772cy8/h9GyoaVz5udD/zxmBYUGcn2B/8FYttzVXS9g40Px2B2gFQpEuJOyKKpJ3xA8tIuCdUVdlLhfrN0+udRbsrUeEC9ed+XDVwJNd/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foaTUihp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foaTUihp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4710C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769496233;
	bh=0JWO7QSYsUpy32LjbhJ68U9rMrZJbrGH5henknBQg0g=;
	h=To:Subject:From:Date:From;
	b=foaTUihpO0ZkccBOHDA2c4ggJkZRP5t42DY4kekHzjWvK2g/8LFuBUiczZ7Z32eZC
	 bVyPLi7mb6JtBJsD915g0djFMPDXVVhLUZPsptI6tKhMbJRPTtYupKlSZ3knAhQmah
	 9An3rIQfEfcfxblsdN/HR6SQEmEyLXb9uvZUHSYEuEnd/5hBkEfadc3dFwfXfjWAI+
	 ZAuXVb9dORLUylqaqkat9p62KEusCulY1fvG4DlVtsOAsnTwFHl8r8pvJhejVB/D3d
	 pwr/nHV79c7ZL9m7a9NAWtNVepewAoTC/7+bDKYD6eO0oXedLlqe/DnsBPTBJUEx1q
	 4Z3CsH60UHP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E23D2594E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949623359.15457.3781475661363277779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ec68a39a0bf15c50d3a89badc566735f8435e1c433199c248fb42eb800a10
Date: Tue, 27 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769496233
