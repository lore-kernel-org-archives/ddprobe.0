Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2557083C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763281854; cv=none; b=ou4e513OceO7MAi0TPs/iXBkujaHuU8kny+Jnd/UIBDbaaKmvCmi4Y1CUx1isAz1iK1v6sP3TVuUxoMng2pF9T0EDk+lzWhQfCZj24bBIs5jOJttsUr6IyOAVjwvbHrlBqDaTxIH/VUwcb5ZBgmgCEK868oQLAPDTXpL7cTl7VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763281854; c=relaxed/simple;
	bh=jLmYk62sxgD1gDV+ecZLEh38xKn4NeUJ00j38kJdxSw=;
	h=To:Subject:From:Message-Id:Date; b=tFgjHZyM6M1BpGVZxnZ4IfTui1yhShARSVTpwVHaLID4QAZsiZcvRdy6Lvi/46L0EOELARNJaZlM+Naourd/MHgHgmc5h4nhE7X4xM5X7t7xf5vM65Y6JIZYM7s/KX+pIMt+gI79h+gr6rQnldMiAplVzNFS7iBNpcxKHQnVSSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHEuuqpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHEuuqpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1166C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763281853;
	bh=jLmYk62sxgD1gDV+ecZLEh38xKn4NeUJ00j38kJdxSw=;
	h=To:Subject:From:Date:From;
	b=hHEuuqpTqOZezWU4QKWvisUTZzVjorXK/ZesJNdsVsdqZVDU6kGxZwbuZWOPzqTu9
	 5ZI2KHsDo6LKyxvdxYGaUNQ3aKvLkHJ+LdL7ijGDWo1pYQWBa8d9x457O/OcB13hbr
	 Bt2Ak8PjucT8vDUTugO5r+69k/cPE2mO1HdhYE+6PyWu4/kCWkypvzUsK/cJEqsusG
	 eRlcDouGWjggkUIw8aB8L8Syb2ju3Xd1kuE/PAb31ZGnen9wenGUIHeN2x5TywtHbe
	 cLHF3TRAGP4ysidLtlZWl7xoxDaoRcJmSy9LDQQYRtzwM10QvsinP/isJi0BVdF3fL
	 tIqYWA+8oacNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92744CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328185358.3543.14876395055666610921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718acc34d2fe26a51c6fa00a7d065491734580539712fb52fed6dd5a6714a606
Date: Sun, 16 Nov 2025 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763281853
