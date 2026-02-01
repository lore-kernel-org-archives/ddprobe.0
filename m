Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2023D28CF5F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769970834; cv=none; b=THFWQKmRGQ7QDu/OUQiGGI+tXB0ADVyqOubh8G6O2sz51HJAscTmeqadvHYgg7kmHc3JArGsc3NWx/wHjDyxW3t+I9+UnnzEOYnGKqI85ccwTbbbBa4TliyjMUkJ4ZAi5Lx0VrghVYVn5Hb3ZWt0JZ7MfxQU9o3THNnKQxH3Pug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769970834; c=relaxed/simple;
	bh=xZPMAnRwqx6CyN3rziclBI88apjFkURDodXK8Pnj9is=;
	h=To:Subject:From:Message-Id:Date; b=u3NNjiLctmeQuZxCQh3CRGmryklHMboO+8yRbE8eyh4zC6VzTgHg/890pu2Z/p2D16xfxF+I7/R2P1QtACambXKsNFVGCERkGKBbTaAkL13TISRuqZxEY4QEQ39w9GihaHb5Xa0yVQrxMqer3JEUxI3mh1xTJkhf9b+HWZwrHsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvfsvAt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvfsvAt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC100C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769970833;
	bh=xZPMAnRwqx6CyN3rziclBI88apjFkURDodXK8Pnj9is=;
	h=To:Subject:From:Date:From;
	b=RvfsvAt9WbeLDhqBCGUSIS4vL1H440pGUf8pg8yHBlcprSpu5HQ9ZgcCzKpmiHrOW
	 YgzslD+2ltTdcpq9jsE+D3osAJ3BgqpV4lCTarVS+3cGY86fZufQ/g58JGbCJdW7mW
	 1RjL2m0TjGJfrY0ki1CDCOv+LLULQaYAo6CQ+KcHpiuz2r/WbC2apIDI7yYwMogBJY
	 PQd20+pty9oMC8nm5trB5s7Twjy8sU7kR1y+W3B2PALFixuRDUH8/OPphBV92cZDLQ
	 YQ2QAQfNwQ4WY1VFGxqcNZHRWzkYbuxr0cKrpNDgeCYzYs2eimn6nGmJe/h5rF+ofd
	 dZz8kuRXiZkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A54E65296
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997083358.346.11835577607641781738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93278801e9c8a2b549053b6a9a8082bf25f02213d2fd30be1e19beeb3e4afbbf
Date: Sun, 01 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769970833
