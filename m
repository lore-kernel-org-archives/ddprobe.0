Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B503E3F329C
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791152434; cv=none; b=fZKowu3uquhU+kRh0MwBdMeFY8olNJugthFRIoCXtSWEvh46fyqv9d25QMASmFy9LfaV+EDdTiWyvZjHv4m8HQN0mDiBTumzs7NTp3QSBbekiwHAcCKAYK6qa8LiRTnWyOQydIl3x7Yf210x7pkEwGWdb6PMuI0CiXZNoY0TzkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791152434; c=relaxed/simple;
	bh=Obs4pUunNs+XRaasb1e14hUq9XJQVbtI1JDGKH/Z4Yw=;
	h=To:Subject:From:Message-Id:Date; b=OXtqAyvUiYA+ABiLKKViw7FgeghMwhWMOKEsrsc4wtuHFvbdVrAIPMAvmy23vYLSS3BSBC2WyYEkx9aD4u+k+H10kZd2xHjqHzhJq6FEgWkc3WCD9VdnV8sRG0JjdVUDhKz5qCNs6CMbGo63PLhci32WKd6U9aICgtEczYI5P04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLpMrZpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLpMrZpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7E1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791152433;
	bh=Obs4pUunNs+XRaasb1e14hUq9XJQVbtI1JDGKH/Z4Yw=;
	h=To:Subject:From:Date:From;
	b=HLpMrZpzBHCLm78ODfYuesNdFKz9TKMLZgwxzbeh+uTwAADk3ZTEyYR5fx/oxoJhn
	 NYsYg3mIqsQgPtx3HSt7Xni0PZM+VznOAxxRcU8v65SCMkb0BfvuDWpBM2ilMmOxCs
	 /Pnf4czTS2H+TDCHiA4VmAf4bOjdvjikaN1FDEI5Kvoe3T9kbvMiUA4jOadeG4y8/K
	 E0RLSuSAwWMXiJe8Y5wz6xi0t9XUSxnqZzuTtNTPyA5rxPx5nabJtvTvBfJErH4mkE
	 Gv8z3ffdUw63aySgvkWYMl6xlHnHTQM3rZs5iDl8pe3dXOuVDalyJLGvHm+GTv13pg
	 VSCtqLOQMb1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05C0CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115243369.6257.2807953140394869314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beefb4ef6dde04e9b9be0ed21c53f8df324c85db07e9c3d73c077fc93a64d6f6
Date: Sun, 04 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791152433
