Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF7613DBBC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717664843; cv=none; b=mIOSl4bzk/akMo0TRfSaiWBH8c6zs2X6YR3jyRj/NuYpkRIDcb7VY528TBVjGMdLrHz8dzb77bu6IyB+Tymr+QdnNGn8LeodfNADgsGwZtAMFOoIXBGgmlicF/8QbWakMkfUQNRQlGHyjroqITbfZNt8c4Rxa3FMVKstyWYD52Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717664843; c=relaxed/simple;
	bh=u19CFXLlDbXjFTuD+tipSm8zdOOkFkoWnbXeVdMsKqs=;
	h=To:Subject:From:Message-Id:Date; b=YpGuZqY4nIdA3g87utkKZxOXN48AtFqqT6oZdsbDzN7+AxoB4F2WqVR4GLPQd+EBUWKmH56NjFtFDMtbLntEcQ91kmpfziH2uO9150ZlXg3chZnyH/jYx7ihzgow0FAk3ONiQjTDa6gUEqbHZA0DA4LnBSOiqc5JFBOJNiYoFR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cB1CUfH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cB1CUfH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40C22C4AF0C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717664843;
	bh=u19CFXLlDbXjFTuD+tipSm8zdOOkFkoWnbXeVdMsKqs=;
	h=To:Subject:From:Date:From;
	b=cB1CUfH6WzZ2OyZFsuGGtafz+HwTJdi9Ng//RWlbXwPo+9u+HaoKPSwI/j35s7nqv
	 9Mg4wTsfmTFaEY6iiA9wOxryVIwcwR2F5OCrff3S4HdvP7tfsjCybHxmLsXXI3334m
	 sBiwuip1miIGF7Afu+hLWJ76mHkiHv2h5Taky2SkNFfza0HIvZBGsWbymQ1dckFiQG
	 vC5wqf5haLD1FYLNoa/Vz9uCPSaV+T1M9n22sdiJnikPeW5WjKlV2OXxqaZO+tUyky
	 2b4EV3xRF71w22LTQYonCz+CKDa6Zn7Pi/H1bQ/ACL6y2q45YGGnydoPbQJ+XeDuf1
	 dIlhXR/Q471Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF2B3C27C5E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766484293.10634.3528644299110863360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a0defb78a54e3e7b10641b6b3645ae4170d334c726c5973eda0ff24374330e
Date: Thu, 06 Jun 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717664842
