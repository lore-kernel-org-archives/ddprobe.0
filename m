Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5910D35C6B5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788367834; cv=none; b=GrBgUpW2SYE3k2wet1tNYZbLO41Rpb8nggxL4A9LPpQ94VTAyRhv+mCv0ZLZrx+bg1sDd5r4GSJiUmFpCjEN2g9TKs726W5DflI6Q1uDgLiDMddoYS9glXX6uy/WJA45PGDAcLV9tZySpErZpKi5OTl98nFzUUIqKZJ53d/kw4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788367834; c=relaxed/simple;
	bh=89pDZUflN1VSviIXX4cWReRkCuNwM6YNcfJ51LyqcnY=;
	h=To:Subject:From:Message-Id:Date; b=EVdVxvFcbQ9VFQlQIwBxygdYyIw230WqNEDRSaRjcpaDd6dsoAKYhpFnOPbMbV6u06mzfjUYnlVzrIPaN988NFskPUAPJlxa1ca1WAarXsDJRkFq5MazteRbsha7v8HDJ0BRdRrkboi5LnhOEqBWQEJLvDt7LM6Ur9mg5TWknNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B49+JvYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B49+JvYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1D9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788367833;
	bh=89pDZUflN1VSviIXX4cWReRkCuNwM6YNcfJ51LyqcnY=;
	h=To:Subject:From:Date:From;
	b=B49+JvYkHp/ks2EItWR7h0va89WeP03M5r+dvSmGCXcFjNsYfJSEJNGeo2FUEXe+K
	 M5gGC+ZsAxMCQztVUIlEM8szrntrXkx15hPJdE5K0xgt1bre1JSi0syTgFFd+DS6zI
	 b2yQ2KF52N/+jQACvUa4dpwsxLcBwiE0Mr/445iPQA3Lx+3M9/sHXQwOKSEpHZR6Jg
	 VCmjB0GM08eKF4q2Xis5TQ6Y2pYDXQXGZcSQU9cDnwhixt3gr6Qtw+JE1G7z83U22K
	 jIlOjZvdGAzaxVIuTbNOwSDUzmvtO4LvcK3sznu4/cENVGOlBRhH2gQNo1oi+EAsdv
	 M7TGH3jtqIlDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA564C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836783368.8966.13197736638548803540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b3a47926ac0d701a6689964b8c072698fd0d97dadb004bb3d62c758a8b49b5
Date: Wed, 02 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788367833
