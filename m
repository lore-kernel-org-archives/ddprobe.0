Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2FB139D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769482434; cv=none; b=JQAojlbP4HyW1AviR9tCX5qmohxfkIVKdd71aK7u66qilfYHPrv7TSZ7T7v2XI1fqPr9BHx6/l8s5T8BbalIcgfy0TJuY40lwurosMBclecvWTI0b8ppsE1u7d1yRb32/ZCIO2oqC781UKWaklagsSKyEGN/teTDB5X9DilkIrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769482434; c=relaxed/simple;
	bh=gwGxoxoOfoyCoMk9WgH/V8h5mp1qgUCYKqyjsIBY1kw=;
	h=To:Subject:From:Message-Id:Date; b=GKCAtIbUPLniAgsXbH9h/UFyPUZdbBtyLTJPlG44dyQTzi29aT3sTtmddu6j+ZMoHCZeNvLxJrzKfJ9LplKgAi7kvLShVEIBGI2hEhoA+zLnFtMhD/9ktqvw6EcnhFbuGEVdJy6VDFdtMmY6ooe6vvvFpEzlvdcDk+hmwOzZH9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjMGcsOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjMGcsOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769482433;
	bh=gwGxoxoOfoyCoMk9WgH/V8h5mp1qgUCYKqyjsIBY1kw=;
	h=To:Subject:From:Date:From;
	b=PjMGcsOEWpBVVGaxB6/BsYvCFKNKp05rBoZSs3nD26EPgHKbcgAxV4iVl3MIGTGkA
	 mapjOtMS+Lv2gJaSaVrHl0sKw0bNdChFrakYbMUhgAMqjFXK39GD6nbi8CrGaaQFPt
	 /RVsMZGhoulSqvkS5Ilo1UAe33FxmwLk1I4vsQR9i8rSdTzJR7kouzAO2Bpl/o7+GV
	 RGwLfMAM/QYn6E/xs9w7gMtZ8yA3VI0zXgZD3IrG4qIMTQdAdMBiUw4uLuX4T+BdQr
	 wghTT1rdNyWsn3CJSz4EshNstAkdddQAjM7UAj0WOXa+UtWHzEjVjxE9C4nfUwUspw
	 E0SRb86pxXplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90070D25920
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948243358.20120.14660218053462736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c80543e3b760158076052bd2f886c210dbe0533b57b293e7ba6151eaa4b40cd
Date: Tue, 27 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769482433
