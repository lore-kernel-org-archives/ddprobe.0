Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFE7190672
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717762643; cv=none; b=WcZzjG92/WpiEe9tqM7eqVCtzx+VbSDzLtRXBGp2ouVnd9T4yZ3GxcLyoUWhWrYEYoVJDr9KBIDUyoUGTYCVwHEoHvIDiGO6x4oCYb19Bt64kuoRMH9/6jhIbjFmkbU6NSdH94cstb6zuzxv0bFVLPyO4siCtfj8VV+3ovLSTes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717762643; c=relaxed/simple;
	bh=sLDQjlEmdoR8O+lMywngpnS7UhFfc3xUvpPHBb4SfTw=;
	h=To:Subject:From:Message-Id:Date; b=qgS1L2aPQJHS/G7TODPDHFfCX6JQS1TNPKSo6wkz+zh1YWVpFThz48uy6kTK5gAvmJ15YbqQtva/r4KPPCfmHPc1A5/kQhJojx5YIIAIpfyNJS7wS9ssWw2XJ1Z/z76gtaC8wXSSl2ALq/hetsI+NkE0OIgy5PoWI9dVx0gQyrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mddp7/Qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mddp7/Qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2340C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717762642;
	bh=sLDQjlEmdoR8O+lMywngpnS7UhFfc3xUvpPHBb4SfTw=;
	h=To:Subject:From:Date:From;
	b=mddp7/Qpr8a8EzSTNsqw2ty+tTq03/GcsWVJKi4CMiaFeSVnBf2ZY614wQk6bLw4L
	 5u8dyFC/2BaMYZjdNErNBR2YMMEfFmY4a4pGfwlbDE827TlYglxtWy/0H4KioQ0feK
	 FWKhyyxTF0avIpg1iXGqrFOsUriMN4O2YVw3Wq4cgrJBY+NCcepMlgDSmkdGDruuW1
	 2yc9cxdDczulzDnXV2LKjKfc1QFY1bCkv6+AWVnMuLZ1mj2/YKCioBZNSPG+494RHV
	 PP962aq8bV67Em41YdnZwyasjOPfciZgSGXq0CD8BQPW9T13F2IQQJuyFK7d/4YcWI
	 +lGD3aoPq3+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE5BC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776264276.22066.17758726004641540552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dfaeb87fa2f3b8cf506307759b564b85d5d7c7bfd3ed38a66bfa25caab00a8
Date: Fri, 07 Jun 2024 12:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717762642
