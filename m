Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D503EAE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759074594; cv=none; b=In83upX+68g97NE8aqNxN/PMHf604avbJeVDeFhuHWDGo3qW4lQjeiK1gxS6KchlQqhOE1FUHuL7m7YdZ/gcTTm9CXm4TwZAyHlo6EY3xl2dsOAIfESU8BEzULEQaXb3P6YxkaepzptmRFbeRwQvoS+6r0yqPKMS0RXxAtOztS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759074594; c=relaxed/simple;
	bh=8nECWLhsaDmjpf+VPOa4ScmiT62tyVtZV2/N3ArQep4=;
	h=To:Subject:From:Message-Id:Date; b=iLJ73fmhe3cTs5eXM2n8vSighDovXmyeFfI6R8ENRlfrp7yVn+Akau6eprsDdxbCNpUlv6ElfSxCHpuY1xKl6H9cqrsZNHmYceLZRqw6yELOteCMd+70OBhV+Rwqo2vh2naBwb1DItZ4PZgck87XzNQXV5meCO79wEioMbB/CSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkGsAd2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkGsAd2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FDC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759074593;
	bh=8nECWLhsaDmjpf+VPOa4ScmiT62tyVtZV2/N3ArQep4=;
	h=To:Subject:From:Date:From;
	b=SkGsAd2bfNDlv3wYVCPbI4XDX6nHUSUzPYkW5v+N7kAJUDBdLv9aVeTKiEJuUXwBa
	 SbAAK3qj14ookiF51t5Uyw70b6qKoZBn9B6ZZAsg0esu1lEVa2A6cfOpd/AtEIJTSt
	 BbyQs4eXzvywxQjBckYLIvzdHQPx4maCPkEtCXRwgXO4SRMfAVqLWCcX7VDL3KL7zd
	 BzILsG2LJReZt3x461rU6JItyUGXZJW1xB1XvwaOr6CFbAKLjrfu1cGY+pqAakCeor
	 MHj2dEhRF9PmK3zYebmCzey70UVplcPc9Z63dYc6i8pEIqkdayKj0LBG4HyLZoqC1W
	 WzuG9XX2k770Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251ECAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907459357.26474.11234471588251198870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d988643c4e64e4a5677e1777c7e36c5cd113865ac7925e5b6b1f07c906d20221
Date: Sun, 28 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759074593
