Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08FAD24
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758599394; cv=none; b=CLQgryxILWOlQPsekQunJoBllfZ40xDmy4f2iiy7BS9Ee9hdcP5+0Wfohg3QV4q43k7XcbexctWoW5mpW5dQBws2MoOsRfiGiBoRRFw4nJhSTXK/bfTI+5RJwvlBeTwrpuPIARU8IiOutvMaJOI3e2IzFXNwNEmatjxyV2P8Wpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758599394; c=relaxed/simple;
	bh=EL1OvCBfrCYCGxwNS90st3NhD9yUTLT+a7mvPZExLGU=;
	h=To:Subject:From:Message-Id:Date; b=N0USJbKmVuzSL3bkggc6vTc2NPyykHyeR5eNpJ1KJNCXh4GgI/sULDndoc8CPc6jACEd+H+Xyu8rBgK5XLmpT8emqphZrM/7fI/jedL9Nz4dGlZooy1mn7+3r8gx15EsmKLzYPM6dVJZ5EG9izQBfJe4MEtgYrlYpqu+4r1DVkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYTqP+vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYTqP+vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A8C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758599393;
	bh=EL1OvCBfrCYCGxwNS90st3NhD9yUTLT+a7mvPZExLGU=;
	h=To:Subject:From:Date:From;
	b=aYTqP+vMe6yMkxVfLVaE2Jk2mXjHLE1tZWgMwsYA/rAmuD7oxGUM6p5mBlRTs/o58
	 neWRlhThF0VnSIflRc+fS2ZF77lNmfP/mKpAyRZB/GYZpZbfhVsIBgRtq+efuZKDnU
	 qINFS28iKx12GnvoQ0lfkGanDvn+RAtZ+Ceh9NZjAe7u2PIgENKlEM9FzlHLUnWV9O
	 MTelgM+Q0Hr1bJ8gCUn56hU3/rcrAW7gQ76EFqZ1FaBK2jftGq6fdTSnhDdW9wXTmi
	 UEQbkeaSvm8tS2U3g1mqhEfPIdZEMH8h+JHddlPv6eqo1XCrD2Xu/fyRTyFyhLmuyU
	 SLSVCVdhiBEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F199CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859939357.17905.3641376504921358269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39b70acd5b0680e65ade9c4b399598dd05f780bd1264d44b6d2235a3b897ea5
Date: Tue, 23 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758599393
