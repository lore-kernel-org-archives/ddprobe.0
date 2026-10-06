Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5461330C159
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791325834; cv=none; b=GObQbp/b4BXBub9AhgxUx0pZLsxyAPdNqPu4rKUWcLNqlioWvFFfpyvJJRsuor3MN0p6WivhhZfd9VgwNvySIpFqjXqQlwFagfsjYG2QM35Jy2E9cQGxfekGnbWbdNdIiVOKn3opfocN2caGG5WkPxa51pHa+kxy20i76+tGSH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791325834; c=relaxed/simple;
	bh=VsmxrlRmto5g4Ug6k2RzDDBcwupJAz4rOG3kJ7Lis7o=;
	h=To:Subject:From:Message-Id:Date; b=RflIR7Mw70qyDwdFLoFOoCUMFpsEI35linRvqF/XJNiPiS/LP44tyU+9Qe0Oqh5dpazodc5z82ZTwQF2TDFXSXJBzYBk6+EIXTtSWbcRaB3Iq6quxihbVgPyTejrq2Vwiu9uF+1lzw/QGOGAZVt2a3ed6nV0CnAEfpSVPZVzcGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKn2z5mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKn2z5mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D1BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791325833;
	bh=VsmxrlRmto5g4Ug6k2RzDDBcwupJAz4rOG3kJ7Lis7o=;
	h=To:Subject:From:Date:From;
	b=nKn2z5mCr+w2sI/yWCP89OpHHB/WLyP+iB2NL0Pugu/PzCVnkpfL1obdim5oDknpg
	 LS3nGku9ZW7OykaP2QLLI1b4ZsOrbYngoHGnDuuLlMcKjufL4i6eZOb0mryCJ/EeLZ
	 rRlT8UHV64CEiMXY+px486NdgWkOfoUifKBzHjcfVpSSoMwC0f+d/8lCdz7jQGbR8r
	 5j74yeXBdpHfkjepTd/1QCBE4xFcSEqOnSlNjEUkfWKqvFw7M8G7YF3syDQNXTypFo
	 LoFx7lO01SjQsuOmnx838amhI4BFxfSTsZSudmmJjpz08rFvwh+f9d68KP2OyhFRwO
	 /VpksOVLjvJfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD96BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132583368.4823.8690151579621264262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47345cb47cd82d193e3b88aca31f82093f1c7160314d180d7c1dcf78f7599078
Date: Tue, 06 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791325833
