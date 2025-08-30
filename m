Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EF24AEE2
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756559394; cv=none; b=GMqUuSfltc/J6UUzYK+YRI/Kuzg0xhUniuWVji0n/R8/+4f3vRnflB5LpETs2wU3exnsAK275Q/nbqvIvEa07fNaryq57WUpjR8cr/KpBCuFu5AF3fSHLmeNKdx7HmWACu1n0aovQJjinNrTVdqQdRYWinRxg0pQiQe0+QMrJ2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756559394; c=relaxed/simple;
	bh=ahauLHVdQUHOoTS+4K189maRbqy3CZ8GUImwRWT6oEY=;
	h=To:Subject:From:Message-Id:Date; b=X23CZKs2tQwdFLrF/6Bc6dktkXzPh2RztWhFijm7DtKLoYv6j44qm5IG3DdykLmwP7EGKcHnJ8t3L774fkEsmnb4/qAnv/HG+QwCdZLyN4R5aSl0jt+Zb58cGn5Cli3+MBhs2cSy0Hj+qsmsBLdJ80RPZrMj1XgE35FbyZUbeRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZL9Lnf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZL9Lnf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756559393;
	bh=ahauLHVdQUHOoTS+4K189maRbqy3CZ8GUImwRWT6oEY=;
	h=To:Subject:From:Date:From;
	b=NZL9Lnf235ZwTE0oGtM75trMzBGAvKs/AoGrOyTdUsKdICcY+ctZFqCRXmvrOr44q
	 Xem2RYG4f+uprvbLKcuisgFjtMu55KLGuRL4cEoG2l2W1pe97RdXWfZ5wBJyWJLyXm
	 Z/nQIKeiPMVB7xUd6weIAEeeNYyXikfD69pvwiy++Fs2ZLz30gwu8wBOtu3bB3L0kk
	 C7eeu1u6FnuP1DABImFlffz7i6qLuDhXZdtcZ+KKR2oGS1BtjRhHmLxK2GCDO77Mx/
	 6UwVsqjFBVlCP0N/EGBKknQT+1PwF27IqnUnutNMYPZ6HH5Dy+NVJBIsdIVz+bXLTY
	 CZoPrK3hJw/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B8CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655939357.16274.9559682727725157477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e27f1df547c4e17b3ffaf639266c6f2fc285a6fcb66db8981cb942b5db3ea15
Date: Sat, 30 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756559393
