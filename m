Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BE9325483
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782826714; cv=none; b=UPhuHzWqSd/BK1WBY5ifmR5eHpEt5HJFJa8r/FchPGR51VDcYihrm6gzMLHnyVs3sG6mGT+bml4l3Q5eRcc0Ka9W9zZBtiHtKkged1GQvcrLeFau4paYj689V9Wh91B35riy05NxC9ofvtfILfZTrParWjDOuZCH36y0a1LgvIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782826714; c=relaxed/simple;
	bh=iYeDPmuauYu4/vpuO/of+KgtvCA3Cj0iULfWjyWqCS8=;
	h=To:Subject:From:Message-Id:Date; b=I4lbrfnH7/0dDU6D9vjDdGlEwdzE6uBoutthoiYU12raBD/A7VdWejCcDGgLSTM05oo8T6xtRfDuFOgl22A7hkXfpMrf/2zQtMod8E1bFmUqqNBM4LWc07MqUwVhHPsFR89FCDMvXxZhUpsyT50HVI5EK8H+dAgHJIDGs/Hwu20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoRnSXE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoRnSXE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C236AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782826713;
	bh=iYeDPmuauYu4/vpuO/of+KgtvCA3Cj0iULfWjyWqCS8=;
	h=To:Subject:From:Date:From;
	b=PoRnSXE851z+NAhZQiEbXZoMm73GAsLT/WDufisdna8ulSudOqHshW4RBHycWpFdH
	 hCsuUZKEcwMLGUn/P6LZwCya72ILsESfVegltqt4ySJTBaXCyf6XFWVnu+03cZeSuH
	 ZRrmQgytpqDADSY6k2qUKDSNE4n11IF6ld+Ch7S2PgSLH21ifCbqzmZALHRdP4+Eyl
	 YsbiEvw3/KrsOUcWUIOBVs8DuoslhQTtMOF7svqFLGy2qbQJiCV3kEJORKk5i3S8wK
	 SNdORAtRqXN3YJNaVaqY6haS00cFWV0ybku1gEIJL+T4G91uYPr554/fU7/n4UK6Sm
	 nX01U2nTlvB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282671368.21523.18344108445604370848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638e20db3cd29ea0306f84a1dd78d51f5e608203ee7856ebf605d66027be1e9f
Date: Tue, 30 Jun 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782826713
