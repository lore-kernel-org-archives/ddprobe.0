Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF051D47B4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767732234; cv=none; b=ralZ9Sm4n9Xnnn/nFc6Q6JDdRkW00XDna0tMPLVHigqAU3KBr0tgpuVpiP45qinIpV3n7XIJsljBnOqIffew+GvhoK98MshmS5Bku5rAX+eaM07tf7MkE3qP1tLzGnq67+F00szmn/xX1ZRPRC3+0721vW/Rl6/vmOr3b7TWiec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767732234; c=relaxed/simple;
	bh=2iSFAnMmGd54PHYgEkuR8XOCrkgvKRCT0VD8/XyazCo=;
	h=To:Subject:From:Message-Id:Date; b=trfWbKyYLn7fUEQIRFLC5QLA0o3I6JLPoONQXfRhujWs7Uc/94Vm1JtLguwPuOxdmJxQ6hMsDOQ6y0FrTDZ06f43vY2qP6eHSAMk+5AlsTHCMHM5yjpOSl7HzzhsW/gV+cqhdJD0xRXToJAuVtmtkkN+wz170yX/fQ4IDazt/cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oprl/XP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oprl/XP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF24C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767732233;
	bh=2iSFAnMmGd54PHYgEkuR8XOCrkgvKRCT0VD8/XyazCo=;
	h=To:Subject:From:Date:From;
	b=oprl/XP4eFbDWd7eZLB/ash/SSHwwvGOR35JLeb+0nxM+zQFqNYsTtXmPoTz50jIH
	 ZH0KrxufUmsaoXtfGuTumx6moViwJUpdHdb6Oj64Tc40PatzqRcAfu6rYvjj2F3E75
	 VNNYfEVmjhokVUZfjNObS2RxRRr/HhOrGaLYiL1ycL7JI//DMrFHzPOwxjAG2Ef60q
	 4PvCmlBMTMwKtTsXqZeOF0r8LmnKT9BplJ+peKCGOmhK5IUEjsDKfP0M8K/x2AWNSJ
	 p9KTVicSvbG+NXsUOikjKym6nZLqrfeaUBV2ssSqk/BYVoxlm/nKrESr+GiCw5QByP
	 0WKMznIUtTD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B24CEFD04
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773223358.29913.3294201187385513357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f6ffe2b68c0c1fbbe5e978d82888ec5cddcf17ffb0e13f08b4fcc02c6b4bac
Date: Tue, 06 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767732233
