Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A70E4C6D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721008343; cv=none; b=kUCwIBGdoIfJcLQMfqbMMdsZzfmSzgrou5r/LjRUPkz6tT90MwfmCBDLaGrCwSzHKi35E/mkzPcDzGnYYbdjch+rHOJ8Gfu9Cw8tu1D3cFPAKvaNSFgYe9DqgNRGCbgkxB/RB3Rt/jarkBBUcL6E8+TcRmwjaHNhfEvZ5xqnT18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721008343; c=relaxed/simple;
	bh=d0so+ALfo0wKh/uwOYM4o7DEvJA4JQ8LMi0iSnAEwVk=;
	h=To:Subject:From:Message-Id:Date; b=GItTU2bOolQn45+TACcMoDQF+IV1z1HsR3KiuBGFrk80AVPrschNk4mvCe3CE0Tm0RKl+wvGrx8CBwF4oDCTrflmGr6jEtA3FIkoqih+JZMbXqPx4dFFV9yEpifr/hCmTlMvs64H5VS+G4cF+mIppiJG9/LsKcXmENySzor5Vf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3Ofp/Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3Ofp/Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5564C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721008342;
	bh=d0so+ALfo0wKh/uwOYM4o7DEvJA4JQ8LMi0iSnAEwVk=;
	h=To:Subject:From:Date:From;
	b=L3Ofp/QmO2FEH2FAnGJhcRDbQyR2vgKidCu9RfB+sgBUAMd2gQqf+r8btNVVBpA60
	 8cM3hjyfZ+ZAR0HzhVnUoKWTyli6S5CdClVJKZyzo7XH3DO3ERVCjbqt1Y+ZqULW1k
	 FmrdlfTzntSpD04cBzYqoV3ryusSZH18sN87CxqFcaTmnpF+SQHTDyoVjCTgWy2/pJ
	 kzC880u4sgL5RFESJ0EO3DVol5xTDReQlcs2ZShhQfed4VrE6sqF29sCKyvLg7kf/l
	 yO57fW103HZ0QZWsKLItWP3caMR7yU+aThX0yji4BsAlvSnxYO3T5F4pltueeh06s/
	 lR4bik6FgDUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C24C3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100834275.32196.12616707219891579792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d34c1e380c474deef3f9dd767603cf4178bfb29cda4175f021a530c7899527c
Date: Mon, 15 Jul 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721008342
