Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE9A1E878
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716216743; cv=none; b=W1lq2LRwJRbO58Gtn6Bpc3OabXM4OnImaYsbxTNEaI9U6tgH4kaKXgIZMrG2sW9FxVC5ebOGYYGRul7Jm5pgQP6Asd6tLNFTfYznjxcKutho9WZmLNaZR5fh+b4YC6f2tDrvrNw2xWbK96rb0pKpmK9qtMi0+6w4JeR9ouujMXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716216743; c=relaxed/simple;
	bh=jAlqqBFMro6ikfPced2+AZ+cnywdFqLEVZwYeXnxryU=;
	h=To:Subject:From:Message-Id:Date; b=mU8425+2cTe1jH+dcmOMvscIVHzWS34nifBUVCIxkfoB883uI0M9SIETI1dqPMB5XyXAAmAYufwPhkDpAGarPj7pSesxYCivDwT01BSV0TpAQv6jtZE1SVeHayhoNxDeHZI1K1N8XpwVKV+t7HRy9NG7LPzw7QhG5wc24zr4tFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj2NWsAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj2NWsAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0329C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716216742;
	bh=jAlqqBFMro6ikfPced2+AZ+cnywdFqLEVZwYeXnxryU=;
	h=To:Subject:From:Date:From;
	b=Nj2NWsAiRsSsGuvPOiQbO9upK8UFojQHtD1fQjjcveIcHYauTo7zvXP5B5snWLRFh
	 gmEDOGK3Q4KhUhlhgklf83fdjmLwHlYSCOlNzVsIUN9P2X1vu+Px/FUo7HsL4tzx5K
	 3tfku61H3X24gdneFNaBTAiBLZqqIjDpDnoIS3U6Bal3zl7zkRkCH5PN4+jvj68r1H
	 zxp8MdXBrGLbNTH3VLN7hR12rxZRPTuorPnjcPQ79dMK/4+DbBDeYWb7cH+md6vKDS
	 1pDy0/TDq0NKbpy1cTmNoxIKqPAJn9zHLnF/SIdxWpGgbfpU7dzzGGrTe8aRkPK4IR
	 wUvJcA6uTGAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01D0C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621674277.11241.14064939287206337247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a84dba3c7a1534deab47823ad93abacaab9aa906c93187e5725a3715c3d465
Date: Mon, 20 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716216742
