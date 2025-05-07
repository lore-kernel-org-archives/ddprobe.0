Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B622068F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604794; cv=none; b=iafPhTSTm1vBROJl36h8QsTK3fPofkILcmZ8wrx9tpUrXmm30ayh5c2omBl2crTnesiaR/A53iT32NyKx3fESnY4UwzkeDmZ1v+zciNIjn+G2UguhNwYJFDPHEhoBfFXc2UrmWe2y1L9mKNW2jpj1NgHZa7T6sKYfvO0w+FMBqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604794; c=relaxed/simple;
	bh=I0BuM6jajXc9WFoPscwiYbADHSBkoXxewQnoXuy9pyk=;
	h=To:Subject:From:Message-Id:Date; b=b8QPX7wh8tjXWZEOCdtm8qKadZg7K0P+42KU/PpnmIw9wOQFEXGGnG5GuP5cmNfsSvNfSmx+21aGp3wP/q1vMZUsncgaBVMINDTHIM2iZiWoT72q3rlYbVonZZ2s4ZoqxLlT73q/t0mRANz9Z8RblhPkgbtD6sztbRVWnlt+pjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtRN6S6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtRN6S6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E237C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746604793;
	bh=I0BuM6jajXc9WFoPscwiYbADHSBkoXxewQnoXuy9pyk=;
	h=To:Subject:From:Date:From;
	b=LtRN6S6wGZ4B7e0UF6ML48Ptbu6nqjGcRwyZ5KTSPNYSK2GkGbZEJyH4NB8EN7l/r
	 mDS0kfk+by3F/iBTJbX2aWZqu8O66dEYKdVbZPRQsKpJwQvx+SysHdi4hVs//Q44a2
	 DC6UjrLSlcI3npSOVOOWncu+zwL/juFP0C5zjE1XV89Ufer6E1l4OgJIBCyP019ddl
	 B4d+K49fAjt704fn9tZW9o5XEtK50LBrPhOujRZaLi/KSqycCga3jwbZJi+TwxinAr
	 TbV/9xVUk7z1sJykDTRRqMxFZTD7q0jJBTCNSIfBUHLm+KqHcVabeLG5ry3x9/OYlh
	 JNwIidXVgveaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9E3C3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660479357.24078.7408705625911525435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7a4789b23c128ab546017f2c5a1771f21f6dd7bd6f170a71f12aedcd988646
Date: Wed, 07 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746604793
