Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BE018C008
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727439953; cv=none; b=ICiQHw3pRhvuOVLVj4Gj/LNkCVrY3fzUaQdHC2Ie2Ldoahpu+REOYnd1BnQ7vK6dwo558SohZHtGctgaH34oT7dte43C+fRs+v0j9b+VKrcXFmoIDXLYXyHiOlxfWMv54IuApTSmM0wjQ82bDpa+bA1owO60SS6cOy28e+9sE0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727439953; c=relaxed/simple;
	bh=eZHy6mk6u1gWSUHFMEOhOfMM871U/xC5OJDSnlBebeM=;
	h=To:Subject:From:Message-Id:Date; b=OrTC+wdCIm0gCUr8NzQMQLDcb1nhofR1BKcfCTUfW3g+gpPOAOwYQJCDxkUHfnQ8akkYGnWjP3HJRD2zWYG2UiWpBm+wwohlbAJxgO3fN5Q/Jsy4FUPx6D3cRxINAa0XAw4EGTMRSQoObD45XynnI5fPZBfrroE2klbTpdz2Y70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fToHc0i6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fToHc0i6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9335C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727439953;
	bh=eZHy6mk6u1gWSUHFMEOhOfMM871U/xC5OJDSnlBebeM=;
	h=To:Subject:From:Date:From;
	b=fToHc0i6FFEpzssr5L8SCVx4GHds0re/M0VMKiNcsNRRytKmrjnqHk7h91NmxONlc
	 Pk13Hbe420gnAoTULL3P5PFNSiAayglG5sDl81M9DLEzQ1IVENQf3d8SNxinsHmgO9
	 PmsHLqGslLA3fdiuTonyRSFwwj/2HwdVqAcN6QJXx/DIIUjPI212v7vQFr6MHl0jbt
	 oqxVAgcHIsnuYxePsoyMdKL7Q1T4XMVRVN8c0Fmppm7GOxAyxzlYRCp6dvQt29ibZq
	 5TYOOSdf5XHHDIWjmL/mSk38a2S1PqVAVwzdpP72hqMlrTo8KDGlh6zUCXvs4SCWno
	 4aE22U2wAAjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E54CEBF9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743995361.12796.3621963229796691019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adff3d40994449da0ac50189a9b5200b7c94073adf79babb7957d155f4b9488c
Date: Fri, 27 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727439953
