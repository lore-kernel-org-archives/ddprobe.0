Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0AFB662
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707088697; cv=none; b=MfFFBhuoRHx95I51CwymW7Ik3J6WFS8psHvoLXUmLvBe4FwZ/92gYHIknkWrpWZTJDRDbiSh9tIv9Wj9AXO8ZEbzQB4KOxpPUBNKxiwUb7zFTRGa0viWDeiE92XLUG5T3gmx9SRaou/ZiKuGtrS17CDywkHiOQ1pIv+CEzzcQoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707088697; c=relaxed/simple;
	bh=kC4uV9QTVxxmEhBLxo9nOXqsR3mkAdvHxdMuDwCj7UU=;
	h=To:Subject:From:Message-Id:Date; b=fsBURiPtktmZvhuOitDjYxi1GmfjT9M43a/0Y1x3H4gTVdHJ9UKcoyPtXUn+CtA8Ijm8c1KvldZvbx7cd02FmiGU8rmcEZ/uZlxlURvvaxo/l9ztv4RSFl/a2Lvl+BUr7I4Q9CIAPlcGLvqU+GQmBr0QWisEQ4BiXCRP8Lr1j/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QODavp7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QODavp7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A98DC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707088696;
	bh=kC4uV9QTVxxmEhBLxo9nOXqsR3mkAdvHxdMuDwCj7UU=;
	h=To:Subject:From:Date:From;
	b=QODavp7YL4upYKIlCsVk/Ns7Y6dpUWasl8UcJRjFRXIPmfXDFbhWYy36jMte/7Kas
	 vb26jyVmo81PDR+iRCQ7Cl34AMKMz1QrZcWMtAv9yZB7Srwe86KzI/qMtoOa3aovQR
	 cmkKZcrbwOuU8kaXmbG9tRKlSbxB7/tRlbUJi2EZ5SKtOQRm+PJOzmIEfcc2Lh8Vji
	 VR5P09W/PIHI5iWUzIqJ0+JMjVRWfDjf/3g115bKq+aeiIZWrneI8ObnaL6760X4nq
	 mIQ7+qBiGMywPRZjOLdfBVmTowL1OsaYrnhgKZ7qAfOLDYuOTFNAobsMRAUjgIwHUV
	 LKAocKTWRz0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61633C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170708869639.1630.1155415332445358627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64ea687d84a6429abfa5ff1538b572439a2a39a05dca78a7ea689cadfb1423a
Date: Sun, 04 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707088696
