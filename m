Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEB1199931
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765162974; cv=none; b=LeGqzA8YcvrTgsA8WfZfMSA2tQ05qtFpcQWmSh7qKzMGnN2a6/AJ0k23iRC+2aAjY5wqjFQ0UdJM7YXNn/BNeozSbfHMqhrWKciNGjrEiITi34qXO1aHYJIj/IjOxSJVvvuPFdFhXFdrOpOw9xDeS0dsPVeoby7LutuySfzdeSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765162974; c=relaxed/simple;
	bh=nb1Qs3jr/PPjScof2o7yO/I1YC4F+MaRsr/O8Wa0CRw=;
	h=To:Subject:From:Message-Id:Date; b=Uhijf5lm3n359TVOkDAShobjGr2gxaiF8YL5ZinWlvrkhQVcAqR8TonrTu3txP0kVGo+SiAeJshqp05U/0JTsLfENGJo7v02QJUi+guXdoZ9P19I8bXj8w8kPRoOgHJprPh6JQB7uNfJXkq38KVkqK/bc6eijf5gCFgEsYDmoWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuyUJVp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuyUJVp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EFC113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765162973;
	bh=nb1Qs3jr/PPjScof2o7yO/I1YC4F+MaRsr/O8Wa0CRw=;
	h=To:Subject:From:Date:From;
	b=EuyUJVp/3sh0GTmTyMZnYQCG7kh10YiRCLO8Zbs3iD0860mtW6x11cYCRcGMmx6wa
	 DnGbBWXQV/mvxIYPe4LfQ6TXLuOdPypwD1OaEDGl1Wq0pqBJV9AFX927lRaUgDTedv
	 QPAy9RDbwkOQQ7IwuhsHRwzZWX9ySbzKYxq97XErxub/LOErmc3DaRzcMUOgnK5p2O
	 JN0giFtFf/sySCm/C0iQfuJd7eYgq5pe8eC8VyriWXSlx8bXbQOKosCAPmSnkwcj3A
	 rlsYN5nnmzD3an77adM7HhTeTR1WJFxigS4c5ZJ+KaD6yRUszAcD9tBHCfXqkJOQj2
	 zlyZS6q/uDzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168CD2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516297358.12080.3303222167506948469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7fa47056ea2d2860dc64f18a342bce222375ad8f68c347257e4fdfcf1edd5a
Date: Mon, 08 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765162973
