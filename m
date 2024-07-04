Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFDC182D8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720062323; cv=none; b=LQq9G6soeikiAMNgGfxxI+T4R7ApJTiILn/tvOQOtqkn96RhU+AyQrnccxJlPRMX6CUQNe/6Bnuy4kwxg403JdZ0fkGG8V2Q8zs9+zuBuKP+xERhDHKofRwo4RAkD7BLOIrbTkBJ8bvR6uIbI/JzyVqWNVxdfWtKze/Q5diLDfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720062323; c=relaxed/simple;
	bh=8IxRABiM3pG6+cxqlOWFRBKKTGpyVEQz4mFxTAFojEc=;
	h=To:Subject:From:Message-Id:Date; b=dvUVPab/EBQZGtDUBkrkz69yQLLPpCDOkXLO5589ZyxIAHcw9xGHhcgVgiu4TFFA5bMmuZcTbaOaAIUUK/BgAbeNrd5d9gmj7dkmr0uBIEtNMI7koZI38GjuqwpCrjFWDEefAU7QbTsVlww7nIRtZ2RdPwpkxABTH3duGtO9X1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1px7qmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1px7qmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E6C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720062322;
	bh=8IxRABiM3pG6+cxqlOWFRBKKTGpyVEQz4mFxTAFojEc=;
	h=To:Subject:From:Date:From;
	b=G1px7qmprHH28bKctgFuG9LEROLW0xJCaNhmV+9K3BvZNntOjGn3LX2sESHK3rBsi
	 Opny0zitK9I9FHGwT/PgOgM/3PyZW4gyEOhHLuaj/TKuvncLct4BaZ7/ngxblyo68f
	 QkhctabQ5VGH0oqmhgZnKX++5remruG7CS3S9Bm0PJixHJ5EvKIf8F8KM4URM8whPM
	 HaAmQoBAYQ8d6/itgiPgOBn38xYhN2NxNfjbZPKktxKwUdcYT2cmUMHoyAPhN1/Q2v
	 mZj78kmQkHRFIkOQNoN2mfSOpIX4k9yzijM9NCk1pdok1XV1rtTakAVD+sTLgIGpGQ
	 Syy4tN6M6I4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF68FC31D97
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006232277.6726.12838070589124275704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df73330d13aa94c2f617c7a3651a2ebb18a3729820c72068129aa8046d369601
Date: Thu, 04 Jul 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720062322
