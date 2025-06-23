Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169B1DA23
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750673394; cv=none; b=CMCLxDHLCxgpxuuf2t++tEO2m/AXIUlNHWDxsKqleaqnCzNmZ5rl6QHdp7HScA1uI9q+4zDLAnPrBWPtg9pO8xJZ1q7kOXezkaM27OP6o4lAoSJVjqsGpJJauZM+iCQnVhdOiyVTxYtfvXNolY/05w2AY/br1UmRwA07giThBjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750673394; c=relaxed/simple;
	bh=bzmMU8D9TOxSY5gD+r/cKQ56FWz5JgjfeS432b5hwK4=;
	h=To:Subject:From:Message-Id:Date; b=Pesxut/D2KCTUWo1A+Rnu7/iqa0ID9hG3OQnfV+lLhS3Emps/JoyzHyeS/72rXm9FXgQu2/ckIKkpn5ysCaN1YrOmCP3mnLfAZiWyY5ppSTgRs/sXjowtvrAFWMNMUpZz1ht9gcn5kCID1hC5YC7m/b0JdzwDIn6RJ9ly+hrlwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk65IHoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk65IHoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750673393;
	bh=bzmMU8D9TOxSY5gD+r/cKQ56FWz5JgjfeS432b5hwK4=;
	h=To:Subject:From:Date:From;
	b=Kk65IHoP5IfPxPRJtBDhZ3SJ1QrFG7GvJaRKiF8mJPo2hCCucRpC5vbawNXpJQEHY
	 HAERHNJ5kvp92hH53el/CkrDNpnRF7CluxVbiCs2qJCzJot1pt13UZYSvMV0O9noiX
	 4P1xr2+Zdf8OcOqpdNvopsbm9f41YJIiJGSBR0c/JtOBH77LzgU2MTk0H5LOfI5xeq
	 ooeElnxQNAKXvLnJ3LdogLZKRA0zJVjucm7DSZUql+Bc/DTp7lhZzlmTejV/60J8Xh
	 qpMqMzJS13QkRjM+HnTeDWLipzt+QbRJ7iZ2J9rDf+zET8dWYODvqITNCKlJ47IT3Z
	 OJtngR4YUiLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E246C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067339357.19746.10476822146004106598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d1847b9f95561718dfcbe005cbc9b2c4800fc2346699d03aa5dcd36a91a538
Date: Mon, 23 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750673393
