Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118003D544
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770494034; cv=none; b=grYLc5+NIfDc72hPhqoHZCxWA0soNgcevIfRQAVaioYmypVCl9byrh6x4xkT4c6hg+MJHjzCLsNwRogdd3ASnYHPkth/xNrM33zVCvaQZ/YwX9j4VhiUFRO7eg1MO7CmmNVfxwPoWPCfBwnHfi5Wdh5FGwN3/W78hPgsmF640OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770494034; c=relaxed/simple;
	bh=uu7B2Fcai9d3G/AnRzsdYSvc8wuNxPpPBv7vcj+cKLs=;
	h=To:Subject:From:Message-Id:Date; b=BBFxlbg++i9Sp5vIOK+IbMrn7Dw/NOaA7VqRX2wY4dOD7cjKrAQOTm57Fdyn+geOtTO8oWhgna3vmXSyw5KYcwbOmxZMTZdsP72DfvjgnsYw2MrDQjfxyjouYggca+gM1FJBOIUbewx6q2U+fWJjrV2+wxLEDeh1iYz20Z6D7F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGXkVuyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGXkVuyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C50C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770494033;
	bh=uu7B2Fcai9d3G/AnRzsdYSvc8wuNxPpPBv7vcj+cKLs=;
	h=To:Subject:From:Date:From;
	b=YGXkVuyItE0n0bTM5wnRdQZnmaaUkmDi7LMiUkNwWGUGLSDPt1fMxq6KHIwwDkxBB
	 4zD6n5lELkUQHCU/TAfQc8tj+Oc9XrC2W9qXFexdrbpqbEbuibdUKsqGnIEHkmUKeO
	 byN/RJx/nRk622RQmPiULrhhV0efaoypyjPIHsduJw01eTT9MPpHv/p8GTzafjY/EO
	 LiR2e3byg6tqzSDM/3R+HPMkonxqyttdPC+KXid6u9BRKAfl2sbOS85IbUsHEymTyM
	 4gKTAV38xXdqcZCVeGW2ndXXVXGlpWTOGSsMgmqd1Ym+Ae1nk7cHUM1JY2dXyHU+4b
	 6/DUM8LJTn/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174FEE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049403358.22610.18188681485668409405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0df241850d5eb9e196f194d4842abda7244e8cff32e577274a6e563ebb4709
Date: Sat, 07 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770494033
