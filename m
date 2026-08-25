Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2223EFFAF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787650834; cv=none; b=K1o7EeBvYQ4qM5wfE4CAdeYQmRjYg5WdoiU8YGMHKLXu0Zti4EPPyw4cqlIsSs3BULFLdVizuEmPFW3omyhopq2Ga0dC8vrU/i6qem2I1GO2VDwfVL0nPBFw3u5zEpsop0xy+Xc1r8zKWIyQedjpTE4fA9u9aspyP85mn7JQ8wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787650834; c=relaxed/simple;
	bh=R817irF6PKkXfqfZzVpdImqv78X4FBs5NGCTHrpszMI=;
	h=To:Subject:From:Message-Id:Date; b=psNiUz5fQBZFX4IbnkpiznmCrDQxcAggalcv81uxAz7fSxuHmeafZjf01UYSf+zJgjEQwwFY+mJCc28A11FWO9vtt3FRLz6zHl45AhJP/jkPMQf8XsKqljh8pGjrRe7/SqX1kIoTwOVq9D3jnzSFkMmHIb2XJR8yY6qWpDnbR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6EGbX3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6EGbX3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC7CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787650833;
	bh=R817irF6PKkXfqfZzVpdImqv78X4FBs5NGCTHrpszMI=;
	h=To:Subject:From:Date:From;
	b=A6EGbX3c70lXIdEbcK9QuTSb9NldUBvKcaDS/HTO62RUuqiW7xX9apcJwPnlLI3cu
	 KBPS0FpyVKR1PgdC6BtJ6ltHZOjXzcmcNHTx3RmcEZj00qT1uiXEuOI5GnF27gQLFT
	 hwPHZiXvT1UUC22r4Kp3ZgpJOlYr083FIcYdqLUd3pBDwEiLjYYmakYT2qjbr2cKi0
	 zbmO8gV0MQoFK553YHOIjSlxwgF+ELmCQ1LnH7HcAkGr0UL6+H/ZFvDFJ+S4Wt7Oqe
	 VC2Kok6H3tEI71M91soN7mXuwjVi1pCTWrh36Ug5Iw937OE337o0Yvy1IrAH+0tBVD
	 jY78chjk0kfkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC31C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765083369.7675.15338217524482924335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa09426512c2c76d04dfd099dd4473f2c6ed1998c2ff1dbf5dced9ff3fda87e1
Date: Tue, 25 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787650833
