Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108EF34752A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778794234; cv=none; b=tsMgNyGo1XoE5CJwN0J/N7wtra2ZyFwu7vRazyFnXlvEZ6U33aec3QmR12l22FE9xUuul4Ez3AKsT5Mp8LJO3SHayjUC3uAxoKskNWa4c9HSnzuqEXl0GsFZ09yuRGOWsvnFaXAG7qJvPbWBZBakx62nX4R0jwbHb3tmjxF3Ui0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778794234; c=relaxed/simple;
	bh=T6BK7fmiVwHc9Ge1llka8mGo4XUeZZOiA6SM/GrOxHI=;
	h=To:Subject:From:Message-Id:Date; b=Rhed61/XSt6E1F/tSB2E5XI7I9nALTFbsBdfhgsqH9E24ahY9P+6FI1SfQbq3t4cOmw2vg26aYpacdWBr2u/E+r61mjJXBoHM1/2DApuPT0x8brPA+ijvnEu5sHgn6+O5oKblu8gYRed8xozqkeVVogdfysRfeNvmyFuMJpfLgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2R0mti/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2R0mti/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2035C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778794233;
	bh=T6BK7fmiVwHc9Ge1llka8mGo4XUeZZOiA6SM/GrOxHI=;
	h=To:Subject:From:Date:From;
	b=f2R0mti/iHKOlYBCbpTO5xzKjebw7/W9aVosJrYa44MDVZU7mCO/bH/XBZ3cissX8
	 T4jBSpTSpFd3X+BpCJczBFth3T0A9iSnAqTKnzQdP4PO23OQIPaZyoubXrI84SNHYi
	 BKj/g1NAzT7QfSyTn/plK6ruEuyERyI58d7Y324LwCrkkw0sLhefd/yxNljaG8D1Vy
	 dcOUgSq+GoA8WkcB1VTXAXK50ydTxaNGuZdZn6BOY5hl4vu/8d/Gvcsa55mrzOCIzr
	 GhHxGJZy/ERcSdULaZyUqsIaEzKON+2ZW08sXtAooMB2enL1DboY9KPXG4IV8F101m
	 vrI2IPt0h2Gew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB266CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879423369.7655.17615569118918831648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324e4e64ef5c4b3c34f46fff8ab432e5bdb0245abf262869cbf22f80cd550ae2
Date: Thu, 14 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778794233
