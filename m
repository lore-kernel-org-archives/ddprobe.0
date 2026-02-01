Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A19E2C11ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769944434; cv=none; b=R6IgBhlw3CXU2g8YogXKX4xmW0lu11bEFOGlUi4iOn5mjXhHNEsv10w2ByLMwFL7O6qnCCGiRINkG0MZEzcEygwvuAb/ox3R3YO7DrNR4gEPP1asOYc3H36JUa7Dzou2fLpTtStwxAsD/uuKGrEt9rK/8W6GekRSjAtoKLdZ0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769944434; c=relaxed/simple;
	bh=+ZwrQ9tmkeGBCbC2aZuKDsniCTvFoOTbuOKKBqjtOeU=;
	h=To:Subject:From:Message-Id:Date; b=PoZchFFeIb3G1P2R7C6mLw/v7ijsptvPdrwWijwBnkvkRjKBPQYJ1IZPt5Ff5CKf4xvR4vvE8AS6vqnQc4fZVe2xfFh3yXU8zCyApo0NUZKhJJ/1EkxoerRN31LvWOeFNgOR+Pf1NfcCFm6QTnskxN6KC+fW8GSCJuxNFVez7jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3UqI5Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3UqI5Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769944433;
	bh=+ZwrQ9tmkeGBCbC2aZuKDsniCTvFoOTbuOKKBqjtOeU=;
	h=To:Subject:From:Date:From;
	b=T3UqI5Ke4bK9pdKJKc3qcBXaezxCdo1l0n3JkAkMDnxRGm//pyorBWGIgULiZE8Kb
	 IqfZWoLZOsZpm0v0TC18DrWiFPKK0STx3RmHW7UOtHVjyUbVPaZDxhW6o9t2R1Hei/
	 80XMzwR6WG3gwPPeGRM/q/7v4f2BVUVj62ShY2HHP+8R7V1Fsz5XSepmPu2FFJGwfI
	 iIr1cAkOgYu2hfshZRGcUGQ5nXI56pMHtNSeM/5ufXA6srMXKY/ycFb8iorvWw+osA
	 2aCzpJOg2RNPKToPZTdZacv8q1ycRdqQkbStFKdHKwuijo7/Bgr22jXGUsWlDJqZf2
	 jbAQe/DcubJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95065E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994443359.31423.2357009217163801235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8c960bddfaa680c79fbeb21770e7a4e5a738cf4bd81ca2695c6cb686ac43c0
Date: Sun, 01 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769944433
