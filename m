Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD2331986F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771497293; cv=none; b=p2S66SpOJnO/Bs3FVdEa0wtk2/SudPXoV8tM8SI6icXRmRX8byd2p/LOvYkURzy4oZgcUY6LgDu4HNGOC8XKmdgYwvi/Ob1XLRFdt9tSFDV8Xql0NbHA6BfP4x9Kng+cT1+Lk/65FBjy005E7O2cCZHUcSfx4Jf6giyikM1mxRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771497293; c=relaxed/simple;
	bh=C5B/ACHyTu6moSZdrTOJSRvwlfQ2P0J8athy17Yq26E=;
	h=To:Subject:From:Message-Id:Date; b=sF+1g1KTZmIehFMAZ7dACv1X2O0P0K9JhgsxdFi2IQ/ziKNm2vgPg3NJjAUJDo6jhVPVy8oMFV4Oo7sR1E4YjdIV/EHemAXhblPbPH/j5X+IS4vQtFvlKNA0rlqW5aF4GM8KCDFbIrAednKJvi8UKPdTMfhmJI8A58PHfQGquZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do7tpcVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do7tpcVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF10FC19423
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771497293;
	bh=C5B/ACHyTu6moSZdrTOJSRvwlfQ2P0J8athy17Yq26E=;
	h=To:Subject:From:Date:From;
	b=do7tpcVtN2GxLtc9bssGKV+3sQ+tB8M/Cem4pqkhtQOnr+5M1NDFy7SbplrT2zuib
	 Bhjx/+U3A+vWIRZPv7PJ1uwO7RxHFa8L1R23M+lqG20v5Y7Bw4v5iUe8Nb49cE0nQ7
	 ZjJrPTSEGtPGK+UgKqrr5tAS7+RVSHLj2dl6GvSVhgYltg4b3Kh4MKIe6OIs87kT/z
	 KEBQw41XStJrAuad13lgAYFFaRWaEfcXuWoPtU1Oh3XFfR7IJWzylHOJlHjyyRC8GA
	 cfSIQ069DItrSsrda1azUEmUHVJHYU0KuCClVWmwSJZuzUFceLYAo0qB7g30KJVEFb
	 JLKgJtkGYrR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CDDE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149729361.9808.13962217879766375314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc5e033fd932ffc3f24b958c32f358b843c8561e4e66a0e002a2d65e853ba12
Date: Thu, 19 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771497293
