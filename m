Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7FD191
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738385754; cv=none; b=LBj7FN6hRUOHuLvrbCa5i4/plAcD1wjBfCVcQCeUr9P67eqhkyYaEcWQC9UWo9iKtPdjbgdX5gAPba5Tr5/K1Cc3/nfdP0RIx+Y4zpcJ3TuI2bEfI3WrREqvZS/48rSKd6diXq9dNOBDFqAxAccLI0qv1LU5fa8uJBRerBHbMmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738385754; c=relaxed/simple;
	bh=VYa6NAGM1XGz/qVd3JeS0Gs420rDz/QSP4kyKptSlN0=;
	h=To:Subject:From:Message-Id:Date; b=FgWdt/GPQiyjYL/GZowcWfJayBgDr4NQxo2PrQ/SaU0mqqPoFLJTBwzq6nRrP9Ikjq1c9/0IMVShbmqs3qqYYebCa3P087+xMJcx41TcJoT4MbhwEmbz7RBDXuciMoQ2b7OIadPY48DAYg5faQ1UYCkiUho+NTe9+i93pk8+NpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM8zkCaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM8zkCaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4257C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738385753;
	bh=VYa6NAGM1XGz/qVd3JeS0Gs420rDz/QSP4kyKptSlN0=;
	h=To:Subject:From:Date:From;
	b=tM8zkCaWYo3ucd3uV5ZrfJVMOM2NCMqUVRvgSvA47dtSW3TONjMUnB5pzbnE6OLap
	 uAWdwd+1IVO+8/agENJ9vZMcDuXVxiOIJLpq2DhWptKBRdMPC9Wgn45LuKJB/n9cy+
	 m64x0eEfCwMQqbjoVKxH8znhleOOUfV1iiXx73iyoUJTkt3hLmtNeAizsf5szQukVx
	 lx567hE8QTiNQCJ8raedTrt6gniK4hMOrI/fnNLmuEMhakaIbhCM4VxMZNGYZzwHnu
	 Tiq57gbQJDNDaRbXqSlSEZKMouXpO62qXk9xzuCDZQqMtPymOehbHLkzHbPxBjGCp1
	 xQBHl9SDt0pYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A7EC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838575359.20354.14084759009674121944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a195c5e4a0574242a96dfc6d6b1472f7032499c3fc8b26944bd6f08d73c66bd0
Date: Sat, 01 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738385753
