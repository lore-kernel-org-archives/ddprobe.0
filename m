Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C89033EE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712983763; cv=none; b=GQ9HSRnhaHA2bhr0rnpa47JG+FCavtw1cq0J79rjjxsIgi/G7XYflT5JVixl4ex58zH+3DO7VVw1SpUoLCNackC/KXtuW+EBbr5xp2TI5VIhJLa3/g4zj62sDNBysZlYvhEiZNTxwTAnPhB3ZLqMIj/lSvjPln1sqw+iK0ZDE3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712983763; c=relaxed/simple;
	bh=2euhtIMte1leEOW3a1OOtvEETc5kZ+KMII8GiniuxLY=;
	h=To:Subject:From:Message-Id:Date; b=ZqXDHghKjucWeaqTdt59CedeXwBdFFk4sdp+LMz5H37rq8x9xCdsN7BtOnYGtXtdNdIKRZbmzqtnKUOC/OL9xcej3Nc1r+lU4pinxcgNjp05DcKkYfMuEYqvfruS2jwM0Sd2Lc5cfqF0y5c3omi7vZCc3rSG2uVcVVGW0GzK3GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOqit/WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOqit/WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4B0C113CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712983762;
	bh=2euhtIMte1leEOW3a1OOtvEETc5kZ+KMII8GiniuxLY=;
	h=To:Subject:From:Date:From;
	b=oOqit/WSHeosEuz9ueDMXy1ZpfDLRo4RXsnCxj2klBnSDof7lWxtGbyc+RbnBH3mg
	 tEyEgO7eLGwmhLi9WrDpvN5EwbNhGjaOJcX42hHFjouTQOB8Q0pseEcO0xBNwdcgPP
	 YS1qIMK0jWggtrMFkD52gK3GwooIlRIBnlGWotdUTWGO8m/I9lNIz495ZnTOZAHfOf
	 +6nuaOvCBZm5MCnbSZHr4D3MAN7ORrn7Du1nj2iNiBCB5cJdCdCPMYYku92yvWBsHj
	 Cwzzg/j/GHdveIDI/YuusW3PfJ2+bBKZt9sjWS2lB905jh/iI202wCs1JdqJOs0M2p
	 2rtblLOZwmu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB963C04FF0
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298376282.11399.16152199120300558910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db20010c209bfeb30dd6c410024bbbeca2393870f001ee612fe46a12c14fb87d
Date: Sat, 13 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712983762
