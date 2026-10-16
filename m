Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD6938D6BD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792187434; cv=none; b=ofK59Q1snrvcfWkQNUedAK48Y+tCWIY0a7DRPCYbBbCqpvVJa1ZpLKT367ewp+sSYiq3gs6s9IatK55ZHJi9EA2I6tiWBHlW1dEoccjJR1ZEF3dg4RvpDNIfPvQothWHXNFXBGy1F/V7NV4yXA9Dc62Zwv11r91bGIZpKdRWwZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792187434; c=relaxed/simple;
	bh=BCHY3SBo6mDR2Vw5TQKTsk9L269zt6GXZqIf462qF/Y=;
	h=To:Subject:From:Message-Id:Date; b=usgpeA3UzEAH970hx4noKRRaJwBBMGlwB7M55ldfXLOc7oPcmSVQ2x7jjUBuDqjin3guKGdeynNomnhjlDHh0iG4ZZVMCUUBQVBvQXNXhlifIMIQe9YqD4l675ASLEXVYnOC8PJeOTrzq9R6MtgalCKVqkaIlOyqleVCrsyMvTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLXR4KFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLXR4KFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F48C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792187433;
	bh=BCHY3SBo6mDR2Vw5TQKTsk9L269zt6GXZqIf462qF/Y=;
	h=To:Subject:From:Date:From;
	b=SLXR4KFAev4DbdMmnsMWedf0EOZdfRM9RrmYiRlclA2xptf8knTSOjeXEfn2ZGYRA
	 hfW8NYYjqMGhTnxJn3uPN5Pys5+U32AK2k/F63is8aMWFCjWTyTvPRnesPUGFkMjHr
	 kNMVrQXOraRrNOI54N8nemRwK+Za0x4cY33/HkzuL8MguBOaLmNqimJ0Z/gd0IKjyw
	 /4Ccxn8xBKGRj+6fWGkybU+VHK/+QmamO1feniPJftDScz99UOUjH6CYRAEBQNXEZD
	 orReKqCEiAPQYpOqbls81j63DTep5ZgVsMFa4F8emZsVfC6zDaEr1sZg6sbyCemFGv
	 1iFc/QvnffYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E02CCF2C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218743370.8812.3639567894972270121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45da88f4d7ee6cf98bcb05b63fd6fbc8732b7f7f6597598da9ff8bd196545c14
Date: Fri, 16 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792187433
