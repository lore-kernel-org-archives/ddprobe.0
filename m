Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF100332623
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988293; cv=none; b=hIefNB9Dl7NXMNMvyN3z5vCzcKxQUvqv2oUFg/N4yOrcGuE8caoB5SYty3TsNZWMM7lF6hh9mrm284NFKSXeYoYm1zvfmRJU4X9wkn2usApYz09DCLR1ohINVIu0lIGhbbee6X/kNjGu6WTyTury5n2Semtldn8ZtErTjsdgBbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988293; c=relaxed/simple;
	bh=rm2KOCEcCPUBtkRqgGKQDxpotTfUeV34wReYK4CflW0=;
	h=To:Subject:From:Message-Id:Date; b=HsMzAaXk26C1nn9AkIzx5d2DtSQ6ITpP4TrCYvBnNrQN1Ldi3GKwbumTngnf16QSxdF86NjQ7DXtcQ4f5bO7M/bPzgE3uWD8IO13kr+KYdZvGMw0b7ainIlslFAdj5rEhP7T8QgrCq2MizgrqNjDNu8GFjo4jWyOdAqoA154x2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6eeHt4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6eeHt4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4BC19423
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772988293;
	bh=rm2KOCEcCPUBtkRqgGKQDxpotTfUeV34wReYK4CflW0=;
	h=To:Subject:From:Date:From;
	b=u6eeHt4EudknUZJ8yB5ZlL0L3y/entS2dvEdB/RoYrhNEQKehk5wLoXuPxChfosTH
	 oKHS/kgGnXUN+6iNw1c+RvIK0I5K2kgEeM7BePGsNw9GIbhqvBb4utN0oUrsVDGWtK
	 MeTRe1wcn21e2SwbRxHVV/KCZ/zBzjwrAhCAZ5n99gXc6Yvel2jOsTb4GlVLDXkx5/
	 Wk2eSnCTEbjXHlU3VHJlTAxZyNNu9hDDv4Zb7008puKEQG+L1A4M6SKmg2QelcJFJD
	 Nb9Wy1DBCv9fIrRoJptE4x/T+YBGer4CCri0atpnWEJ0733zo0FxBtrNhlWjiNXBSP
	 +04a9XwGwBPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939EDEA8537
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298829359.9998.6639493822039755607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473f6300d874d36cfd2cca8b2510e9b05e766dfaaeebc771f2ee02fa35f1818f
Date: Sun, 08 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772988293
