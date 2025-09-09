Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139EA1D63F7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757395795; cv=none; b=JUobOOky5zmhsZmvLSuku/Ef9PEaQKLPkHyT0envHmCq5I+gPrZHYKR9+b4fJYiG6rsI+gQ0H3v1QyWI2G2l+DLge8Eph0XRYL/zdz77DnqHtvvA6o2Z+zZXc9k5i/1IrlrXhOBfGl9UJjgdLA5oGUB1po1NDsNei6Fel5Il/aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757395795; c=relaxed/simple;
	bh=1aZ3kg9KAQPGlyFJcvjGw0IwDav25LY5Zdpjh8ImQSY=;
	h=To:Subject:From:Message-Id:Date; b=nlCMEM3icykjv11/SzdZbzX+YU2btAZJSxd/y29MYkMu94u90FhxXkyAWYl9C8MgA+AIXJ06AlKZWImsqKQ1NnvmUPLHJyFHdx8HzY4P+wEarJJzSjTdPODasgPdxn770uRkaCEdZ65C+4efnJyHjCZEVZtTq0TXeVb8+HzrTS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT+u8aVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT+u8aVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757395793;
	bh=1aZ3kg9KAQPGlyFJcvjGw0IwDav25LY5Zdpjh8ImQSY=;
	h=To:Subject:From:Date:From;
	b=MT+u8aVA+t1DrrcF5Qk7BveTVktYOMexNdNQAjI5OXKX3dFsDE8Jmp0PO0JtMzZy0
	 Dbrp3wZdLh2KMsLlI24GSUA+gmZbeI17AURwCF5hkPObltknl8DvMg4tOL82jGw6l+
	 zYR2/fiZHi6TiIP2iuTAPd49RqYGs2XCkogIqRUdU4a5J+H8KNx4ms9+kBk9BEmUhA
	 cEBQNEMzCznyDPMOC/w/l/FUiFljF+6/ejyoEQtZaIYFT+/AF39i2DXTRYE+HTJP9r
	 9WPnkp6UJCYnGlYs60iOLV8JgyR9GXDNjNQp0KMEIsVjyLya6eK06w2wkpK80kNouC
	 +C00qsfBdQTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADCCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739579358.24018.6415291125940672571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10b3d6075de587341a3c4b40bd06c6fe61690a91dc147323db517d23ee6de71
Date: Tue, 09 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757395793
