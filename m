Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357F722F744
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747363795; cv=none; b=V2uZhZkj852SGTmIXF1JwBhR1nDPM9F1aPBcDmLqyJyYiwmeLf+59fYO0guLDESfGaebu0sA3tK86LmeQqiEJf2AolloSg7rCDiWoyozl1DselG/GwNt/crE2cIaZR1gRP1j+cFwaPolyFaExTUssYJwZJaWC45PaGdiXJs4JqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747363795; c=relaxed/simple;
	bh=GzkwtqAQOP/yyBtlrWFblYEeHUhzoubDW0Xq2sS4aRs=;
	h=To:Subject:From:Message-Id:Date; b=oUKbeA34rev8Zs7sczDJ+yv9HgQP2MpWSSn7gRgey/NFKFV3TgHE6YDRJbF/hpase3CJQ9pT6Q2+IqTQwcsX3oWN3gtYaYEXcanAl3mT71LCkuTsHIP96viqcG8pknBWgtxe4gFlBeFJJ/h5W6JN0r80/k0Sq5hmjBzLMmc30x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6JGSrb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6JGSrb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747363793;
	bh=GzkwtqAQOP/yyBtlrWFblYEeHUhzoubDW0Xq2sS4aRs=;
	h=To:Subject:From:Date:From;
	b=t6JGSrb0BcBGrIvMmEUBzyOzZxTAbYju6J5Yl/qllXv0+GHs73Ms0ZQWGNclrpXpm
	 Y9NyyiF8YJ/8WB8LLGaiIOasMl/4RGceYlaLWYWpPwvxNaUiH5YbJFKm2f5Mdh6L2s
	 LE9n4fPyRL4rZlglLQLEBHC4UXC7wF1lXficv4b/Pg9HX1ZOaq1HTawxgApX0oFHAZ
	 AnvqjD8VIiomHPiN2PkK1/PSAGAcRexM4NFTA8WGPi4KHSK4mXAgEssmJIrJ/PjLH5
	 7Ts/J+YGpr31KTpSh1xKWfPx5nJ8PGS0ZUM7kyVeJH46c52YvRTPfmsLVmyLshZGE0
	 HljbT8cq6MixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92063C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736379357.22855.13386872976248711878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04b493bbe0daf32d7d6be0d53497aa011a477e4d7658a59a4db6de69683ad3c
Date: Fri, 16 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747363793
