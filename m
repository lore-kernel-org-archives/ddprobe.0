Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844373988F9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788148234; cv=none; b=Sq06BoGHMcz65hR/lBk/sRczXYseM4RyX1b49qrUQj59cqSqRC8IdWDON3Fu450ndx0FJurs6ODF8Jt7LSpn0Yv6n3JvfMx4YhyH24+t5fPFadnIjcZ5DGv9iAP/mR/Hbu5og+TLeZvWYUG89TzK9oXE2UriBp1W1H1cPT9fYgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788148234; c=relaxed/simple;
	bh=WGvjqH9LpbPpKQGGigqkZST/EMn+UN9TfnB9VqPj/PY=;
	h=To:Subject:From:Message-Id:Date; b=E2ZbiYCuv2OoQYujYYEOhqJzNlCsUn9pSJVMHv0Y8jsZgwIPpMPLFZnvBt54Nc5tEoi8Qtg6im3qsTdjzWtxpUXCymhigeup24k4pMyo5FA/pkGmRNT+BcropXUg9/AR+94g8xJovE4fRnBRdnGGNc0f8+kaY3bNVcaWouto6/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A73xad6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A73xad6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D240FC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788148233;
	bh=WGvjqH9LpbPpKQGGigqkZST/EMn+UN9TfnB9VqPj/PY=;
	h=To:Subject:From:Date:From;
	b=A73xad6TAxeCdzjPI1DD07B7KTtTWKOwdX/fF4rzDWEIoEnnPbcNPiTEASS0RwJsv
	 QHQG4zR1weCHqe0W7C2NnmD5c37jD3DKWtZ/j/v34nKyhAp61PZBsaY5Fdo9+JUM8M
	 ++yrEU8t+5wDCwNxnmK0uSNgN/C6U+fivRDWYdx50kwzJjEwmJ6RG9pcjffm+VZjGH
	 gBQ/lYEoE6KQCS/22ylREIgImbz4JhZRwyNKHU6GyaZQLE7XCIlykpTJllWQ4WQtoS
	 OkD55npvwHgXYqbNPIFEo2tVlAu6MTakh45uFAluWAVtedWvXb1NfGbGPclddXjQms
	 Qk/PTAEpVvgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0777C61DF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814823368.15653.5257530575409449969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74794f4bb34e0abc73b9d66d7279cccd6b67b9547abfabc13f635be3f7274b3c
Date: Mon, 31 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788148233
