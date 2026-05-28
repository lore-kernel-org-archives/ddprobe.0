Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965626ED33
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779976354; cv=none; b=LQjzds//gz2Ff0kUQn8AQEdGi4/4oSS7VPPlQcY4RD+kiNQS3PFN8x+7c8DNYlKtkD8WQxloErQ4eD0YYIblcbMRKJFPL33Nf+OHl0DCfEqf/equEurbCqAkg38zpkhEjOYuC5Bs0TzYurPcodMpMaAK+FTE98j9mlRSCb93f3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779976354; c=relaxed/simple;
	bh=K1MZW2DVNM17JrPA4o5Slzpi4qldlkVSR3B2YgaTn4M=;
	h=To:Subject:From:Message-Id:Date; b=YWyycpx6MZ/Kui3bnP3NNMB87Ey3mLN6VuGBSyV6dRBKSI4zzFz6Va4PGI/ck31FdX60i/ELwRsyIHqQXcfTMDMfukXxFX249fSZ7YtVDBMZxqef3FwQjyP42yqpK5kCi2MkawZNY+HO5NiHkFETJ9AuHlezidDJE9CgdQ9Fz5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbw6hoLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbw6hoLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A84C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779976353;
	bh=K1MZW2DVNM17JrPA4o5Slzpi4qldlkVSR3B2YgaTn4M=;
	h=To:Subject:From:Date:From;
	b=bbw6hoLF30OK4OLgK4JoI79gtgaOSqto4twwpgrF4YhwH2UIozf+i8IlF/yicdWhh
	 JCZF2cJksnRjsXPDLLiByQOOwEc3KL/INpgtzNE5EXhzhMjeEgUrdQygY6eSZItAxL
	 3BIdgeU0gEnlaXq0MvjHWUu7xNsuh71OW428YRLKAWvTnfm9rWdbVqzUDJMDFEKv4R
	 61EL4JC74ZGsEicJaXqNbskRA3EdpaFedJQtG51TBdP77XPvxI08QKesxwzSXAPH8Z
	 zCH+ExBrmNp0dQrwrQSVTI73WRl6/fEsZua5zu7ixrjA7E9PJEwtEbFbUKd7dnLoKq
	 dpvPZLoc3cTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD983CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997635370.19681.15676106540864721337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88ce36a72e9b488af046578dec3a64bbcb8185dcfb202a8b39c929a35125eeb
Date: Thu, 28 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779976353
