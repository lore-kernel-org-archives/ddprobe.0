Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CBE1E526
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728742555; cv=none; b=K5tnzTuUjHHcenjcHDiAcm1OUhneR5wfkEqFsWt70kKg8GW8G+3m1BsElJfnz6/HmnhqYaVzUkIEPYGLdNMBR1BhoBMCG03Z8PZGkO0MfGzuch1YBqZJEaqmWaocdVUhJAyVogxTGl1NwHheBA7Le2Y7I7qXcuchO/ixhZbrF5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728742555; c=relaxed/simple;
	bh=9RAXivYGkMiYuAgEDI5qr4gr6K72EbpA6MZMx4KS77U=;
	h=To:Subject:From:Message-Id:Date; b=QxrAFTTkr9a9tzSneSre2Mvu2jliLfnl1iuJkrJ+5RbrORTyqnFkHeRYG5cd+j7KO2BUvwfcXyqTe3L35ThMG3MXWvpdE1xurlDMktshOglPbS0PGSjS+xFez0CtJ6UDgtMgp1cZQKs2OecJE6CvBvAKWczp3TX5IXg7I7bhNIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsnK77LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsnK77LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD777C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728742554;
	bh=9RAXivYGkMiYuAgEDI5qr4gr6K72EbpA6MZMx4KS77U=;
	h=To:Subject:From:Date:From;
	b=HsnK77LMADcOR6LrmHYAnjTguCwfY7m0lRfsFw5ggHYOOWURw3j5DNaJo42iSFUQb
	 MbSz+Z58FtSx6XvzMnjXCxRddxjSrpnQdV6Z4Gou5F7jGwjmZvg7e4En5bvdUYJCCZ
	 q4u7vKVlPgUMAmJnttqaZUfj54ISPNxncYqfpB1ABLC3pNERwWiV+IGuHA1m0wu+wS
	 jwqM2BzNJFkbRGbaNUx7TqObMu/aQEqTB8SsgmMwDrYGSJuUsC46yK6eb8bVhzOvr8
	 CGvR8z8ePeaSrtRDyTHEJR/SLIpOebUJdyY+UjP+OfTxW8Ul5B2At7xYsrVpgVLDWv
	 N/ciRf9Zyo02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F8CF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874255359.5078.1881161351192228200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4655281c433455fbff1f5d1cf50fd732861b5aa1d245343359f1967829926427
Date: Sat, 12 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728742553
