Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C87C17D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788637834; cv=none; b=hrHfNFoJkZM4F0T1a6U9hFiyhG0TLlwS1sQTEmCLfuIdbY1DELErjNG5qKUFTZJ5nkobeLecTtRsMz159Z0zCjCpyFH+PVHSYLT4n+qi00l9ga1LK2Y2uKaxK6Q7Ho26TiPsNFhoK8WWRZBStxM6gbeu8U/Mo0wSHssXCOjB4r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788637834; c=relaxed/simple;
	bh=7TbnlKw+um4hkLDTI4TEEMAe4cHrZEkZk/nDpW9KSbs=;
	h=To:Subject:From:Message-Id:Date; b=E7625s3KB02z/hfJXrQmiqRdy/0aPcH1PJMaKRo7AOiZjYTCfTbOAc0wR6yrUbJb5MURwc5tyA3ni03A87lUqmZoJkwuZt1fIEvtdtjL+6bTYBkEFVGh6ZQ0z3FJXB6694VzudAcyo3IcWE27uP+ZhhiGqFvRD+lMGw/JYP1Vb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkdM96P7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkdM96P7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9FFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788637833;
	bh=7TbnlKw+um4hkLDTI4TEEMAe4cHrZEkZk/nDpW9KSbs=;
	h=To:Subject:From:Date:From;
	b=HkdM96P7MtkxQjS4px13D7L0XOohO0sVcaTmvD1FpWY6rLhpPZIOr0+RIphJfZwJs
	 B+kZGBSJs5WuC0H6HLWPrHDGRyuHmGvEfwH9t6ArT5wbejeWhtcO9Qs6LWj2Je6bjX
	 HQ7+/rjhCaODO4eaFNo3GvUIhR0+BE85h6fhmyBvUWIxJK9hhjqDclDReoSh04lpPK
	 o6oPN4iRbnaBqu2eWScZRXNrmIdWMfQEShXNXhuGW24bzcAuztGlWQ2hl83543WwYW
	 1dCLeRFLfcyecTh3Unjo614AIbk74NVP3fdqiPqWAq0U3ntT0GxcS+396sk8WS1fH+
	 wG4uZvp2Lxm3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA841C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863783368.20355.3354089052356811059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef2e3b05a103f732c5a1e7e1a12aff9321f4a522d58e3571d572b902fed400b
Date: Sat, 05 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788637833
