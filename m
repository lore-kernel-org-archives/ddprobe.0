Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1131A17A30F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751179194; cv=none; b=gYSzLRTeEQ3UVXcGfEnl5sWovIc2uh5DT26um6lBN5bjuD9CO+QR72mNXY2qzfI1oLynURR4InfRbdahGg5RQlb3cZ9WgU3ajD/5uDHGj+UsoUFZNFxIcnAi2EGp1vqkAOBusJbqsPv2xhECimCKISLy+q6ya1I7kBruH1xcRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751179194; c=relaxed/simple;
	bh=x9X8dUop2EgweGL2veSFKFlhJqxmLxm2hDCIqLkqzl0=;
	h=To:Subject:From:Message-Id:Date; b=nOP7Qwp0zh5r1YueUnRM/yIyedncNVPjZvBtWV23aadO+gU3dO8o8Y02CnpOJGjp1oA/oVfgq4/ycyA4bc2RGrOrTi3oxAFsdb7BSY7H9ODPqXba1Guv5t7r2cOpoUSZQbzE5Ej1OFqA2vSCGB4MLwPyafHsgqro3TgNneH44XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN2Eg6zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN2Eg6zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1335C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751179193;
	bh=x9X8dUop2EgweGL2veSFKFlhJqxmLxm2hDCIqLkqzl0=;
	h=To:Subject:From:Date:From;
	b=jN2Eg6zEvAIj8DGJlBqR49DYPkdw/F39gGp5YQ1L/UvoRUYo422gGwdT8lLnZGQGg
	 o9tn5F3o7b9DVLGINJ2pQ1E5Ecx169mB3opH0fypc1CIHmOuV8e+BBNaiIZVGQGKjs
	 tofuclfSTQvxEhaRgjWImbvrIfxuU+lXbRE+GX12YVxP2YgLXibtdMwr8sxtXgX8iR
	 2GXBs4MYdeLxRUjjZSU/fP/XQc31RZEeAXqBLohsZxnEDkDr1UW1pi+jVzyBSGcxsl
	 pJuag3BGF4fUIMoVJb/75kWwCjTyq0Ga2PKX/Q9Mu9ejB2bZ4mtQJgZRhMWeRkR5qJ
	 YM5f6Qdf+tfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B1C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117919357.1809.15853759641158346148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a172286da5143435db66c3020b6fa9bdb6bf3ebd257d2abebcaa3fe67932690
Date: Sun, 29 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751179193
