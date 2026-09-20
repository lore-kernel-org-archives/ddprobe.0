Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586B42D9ECB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789924834; cv=none; b=RM1V2cKUTNR75jO/oNua3M6NhKlbevvCZojnKDPFP//6xdGGRBwRqK+5qs2BnAZ8301qYS7GbAHucJgOQLYQjzIm286MUy1JqIb5I6FrYlC050vWzd1yCPqAOGG6DQGYP1Tc7kiDwCRi/87XDt2MoTkU8QB9mbjkBXJ+agygKUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789924834; c=relaxed/simple;
	bh=9br6xZinHvfQVlGgnjcGL0H12eHPzxs3T7rR40PS6MM=;
	h=To:Subject:From:Message-Id:Date; b=HkisUBHM0m0VdierroD7IBJh+HbjK/st/Xg1obk11NXOCHrZHCMn7PIUXKM/Sv3v2Ftoj4DboU6/d5GVRuycf/m76TX9OAielyujGhDoAENVSjwBgasuFjQXRjrG0pezCYSJOqxlkruDOXq09KuGCoquhi1LjYVRUgl/jhKLWQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3kTXmJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3kTXmJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF749C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789924833;
	bh=9br6xZinHvfQVlGgnjcGL0H12eHPzxs3T7rR40PS6MM=;
	h=To:Subject:From:Date:From;
	b=S3kTXmJOCetIXaoFyCMdQ42vscobD21/NWJ8v090rQZcPPkghjSmuOYAH2iEgKu7q
	 AMpsb07D9P8Iq/cqYboBZAlYKHwvak4Dj+mSwj6EpIvNB9YrU08b5dEsa2kY66nE4i
	 0bu71dXPsHVDr7tgi9VjFWSbVSf++omlBQhP+8CaIMLwSx8An7g7dg3mnaJgaNqg91
	 u/Flmft8BrPAvc3FybmVyUUw8828naU0maXKzJ4kYtH49Z+qBsUN9V07PFcP+cw/bb
	 tcoMgk+SrqL7lX8qycIeRPus2PCco4jVoTN2QRn2pHtTBLLI9167THK1VTKqsFbbrh
	 sQQSEmUaAhrmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA09C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992483369.16848.5422963629799351335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469622cc4ce9f5d95eba7610aa49b2f43f491ccb4d877b67f61148da87184159
Date: Sun, 20 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789924833
