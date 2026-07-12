Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7E229ACCD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783880314; cv=none; b=rzE+o8yVL5DLOPVjprhvfisbOO0Su77IRNDmj5gDYiXctQax9aDS0b8TgD5FBRD1HBE36rVovR8ql4JLgv44twTFCwP2nSSh3t9s+EBVqpHYxODVDkcsrKY61eUz/8nDeE/D8zuLfqCR+Q+9PAMFFOWBIPsvNSyJXh6bk5Bi5yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783880314; c=relaxed/simple;
	bh=MJ+/dvdVKVwYwngHvLdyvjWCMypd9LdGWRpV8r1pB0A=;
	h=To:Subject:From:Message-Id:Date; b=qDND4zLT1pBcaOJQCV1kOriO2IQ7CGnKPcOKB5i3r3RNV3TILqjNF0oKkwtHye+oXGfUd73G5e3NpvGTdXNuzr2HNuhQaVvzAyij4jAq6xRSa6GNCV6c7/Mf8yv7lvk6SPBN7pqZZud1atSFvdznCFAbpANR7W+KrBpxju2bTto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEIp0rLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEIp0rLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03D9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783880313;
	bh=MJ+/dvdVKVwYwngHvLdyvjWCMypd9LdGWRpV8r1pB0A=;
	h=To:Subject:From:Date:From;
	b=dEIp0rLXuZ2dakNyQzvBpjyYjBuDRZct0aw/iMpr8m7Um4KH22TCNKkbKKogCeMZ8
	 olDbP41eaiBd0OukJfbRBPwiVNyWQtZmoIGUlBhcgtFNStkoExg9GiJzAm9VqLxgxU
	 ultdP2Mlnui/QAEzOHFVOYbv3lSX0ZvdFaxxLovPbiz4GohXWLeeXLK50AyAO0kvCX
	 Ps4gL7PwD8r/m8Hyj1iZ2rHxs7CfjbpXnzlWagBSLvG6VK6JDBPA9rB3VpNngRuTF5
	 t07rsYPGlHOIXDwOIVM8FXAw4sJaXso0NL4dpgyJfFEKEEAqiP+hm6/LcC52W7vcRh
	 c8tKtiHLDohmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6CAC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388031368.22939.3207202515381597824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7204b82a3c3127673ca2d3ceeec3ef187fba6f4a73230569add62ec59b15207
Date: Sun, 12 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783880313
