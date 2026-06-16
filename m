Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C633D6695
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781589394; cv=none; b=fgn6dFAoKMItPoruYwW2h99y+zAphPSrAOWLgDPhsFQVR9GI3zOBvZ8gZCv3Syid37RCtSYiqFNGAgdZDpQrvX+L5kQEzVA/dtxYzZ7+/5r36Ufs81AaYNFnn9LyDYkehGl/gx4XCJnADS4o+98BCbPSQMeOdnPW+RmuV/gCxPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781589394; c=relaxed/simple;
	bh=4ldhDmh4qqKtS8s5EYmJ48SnjIMmO0Lkk5HuMYoDVLc=;
	h=To:Subject:From:Message-Id:Date; b=ik5gCm/ZidpSIP9EIC5QrMRBtCQyODI/xasZLkpktzDckKRVrl8t5MiDSIJGoN+qBULT0SdoDhTjXovw8XF8MBO/YFWoC86pr5QT/lxNHqwWf5N4mZHHnA4aAW+Lp6y9f2F/ncD78KWkHT7vxfZ5a6l/pGEUPwdfJXtbdT1uSy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4TpdPZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4TpdPZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6764C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781589393;
	bh=4ldhDmh4qqKtS8s5EYmJ48SnjIMmO0Lkk5HuMYoDVLc=;
	h=To:Subject:From:Date:From;
	b=u4TpdPZzOaJyfrNGGH3RN4daelTXEgy4ep29YQ0H60XXLxX66MKU5gg5EylS+v6iS
	 WQ9vxtvH+LEU0Q4a2K9vlSH8/sT1wSfj83Ye4SiQhOVtpFRe9h6IsT6oqt+Vt8k4y7
	 M4nZ/0uhlVWcdaho/O6VM4PsaYGT5p4M5ueWGXrp88/4oQd0AQaMvggspvy9YSVnAz
	 YLqsuB6oBDgrh3Y1oAWJt7wLscGUTeGgleiTvbUAkupruEwdxex7JSVmARuVEsjqL4
	 3wUXzNN0MOJqRczWq1RsrHPweGpER90oANZpH6K1gZAm/I6kybr8zmojgXY75RZMEU
	 fx0CW6P6uZlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92FBCD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158939374.1514.11530269175459786952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c49eb954a85b5ed4defdea0100268f7a733b48325ef9718e3c62ea58cb871b2
Date: Tue, 16 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781589393
