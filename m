Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A25C132
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712792897; cv=none; b=Rhla7G2Hu1ijXgkGUbihcdqPoXLBZX6fmKFZuOMGDMgfooYKo3krCmlwAgNJeCDaVZfUJL9Pvsmw9AM/TbfqYlxE50luGHVzKmrEXynxQ9Bi+85ffMfEOoTjKGL54NQxwKQf8ZDrnog9TG0j7oCIT3VGmLsK9lyI3KzeRRJVlnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712792897; c=relaxed/simple;
	bh=LsKzP2edJ4SFEj1tKL31IWlfvFaowBFYcgKMIEB53EM=;
	h=To:Subject:From:Message-Id:Date; b=LjPpTehrhRlCTyAFrJTujjj/Bz887PPipNJSbFAVixBthWzs7PucttyvFoCkDsOapn6Y2EVMNGVkZO9XHEUXHBoesoC/eqmWFHAacmkTlhfaitJml5V7pDayctQ0gunYib4XseCB3IlvqSPfPfl3PQVN8HFZFQfgRZRwKu8IPGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXn7IrEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXn7IrEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4E8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712792896;
	bh=LsKzP2edJ4SFEj1tKL31IWlfvFaowBFYcgKMIEB53EM=;
	h=To:Subject:From:Date:From;
	b=NXn7IrEbrFgiYPuMLlSvWrX96zFKICJWn0RCEbNDanhTNfI1f4CyjcKUsNmUNQvrz
	 6Zp6R6HKbxQSX0TpwquiZpVM5/D0tR5qcdizSkHlTiF6dOI2P+jPUv1/RKnLvypNJM
	 wXBg1+g3+3lVakekw9y83VsErW/SSKpqdcxkn6KvlLIOwV8+uTFGLy6YZFQSxmgoKJ
	 vtk+oV+JHILZ1BQr+UjyKxTFxTy/GZ289/fj1v4UUJdTNdZBQzjLt0Io1scCWZmYDp
	 uvZC70tVJQ2jq/OPFlgvZRw8V/fEYujihQD9WfzbU73CvQs/pGP7EuGBkRefO44egx
	 uq2P4ypoAoSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E53CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279289640.17840.14047748367377335105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826419a75ea283f41618cbe13f2704a5ee274e8b6152c8c8441b599fd3826b34
Date: Wed, 10 Apr 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712792896
