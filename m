Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E172E39A818
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775777854; cv=none; b=Mgl/hanaNY0tC72oj164+sUdRtpinyiz+NDuWDBfmmAXqaQ2FhD1iArlJZA+4OZuE84apr8C8cV0VySN+o3Ru47vaJ5MfruIlmt74PsVInxxtg37laVmVZyh7918hMBdbS1lQayDeJ17Sjv1kxhN+B6SNNOUe7RnjDEAri2CHRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775777854; c=relaxed/simple;
	bh=agxoPRhOBzkimx3/xRfDsV6cAjKaw+fzy2woPB8rLb0=;
	h=To:Subject:From:Message-Id:Date; b=NmaSqSO+/CaQ/SJw8EXN2rYIFV7wIWkYgvnRUJHNdpQ6r1r4Xx7tgxbTgJ8dLhoKTrGVHJm2az2g7USglq6YpMAsGdf0H4Bqj2GfeMKCoctOxTMsmwsQ6e2J9oLFv2uJCRTSA3pmFKgeVd6RBYHC1IAb/M32SS39LT+785DHyBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs5pJqg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs5pJqg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6ABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775777853;
	bh=agxoPRhOBzkimx3/xRfDsV6cAjKaw+fzy2woPB8rLb0=;
	h=To:Subject:From:Date:From;
	b=Cs5pJqg9m62h6DA+Pfnq2gbVWEANe5595qZD7yr19SIi3fhS7flt4R5pOjOP8RMjB
	 5O4v9PlO0IcV2oHt1kqdQt4UX60RgQbGENlM4PI/KdV8/7r9JCW4QoUwiasEl//njT
	 8xT+KiD3VLnkNthjuA47rE4rsoBW/klHpKL/XD+yB1yFNBLGQz10axTm547s3kAMqD
	 HckiHl2e6OMXnZIgJz+YgYPO5G0ewzARP9th5YC7w/EVAZteojxOUuoiguxRWagHNZ
	 /z525GpYOyKFisHqzrEFh9sWOJHSP2djeizjXqJk7R8xc4nWER9o+nXh5b9L84WS5q
	 /+X6PTexbNgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B050FF36B97
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577785368.32020.1424719471783039346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4948d0cc2b37680b153c04a1cbc124b9be94a28247958db5749d427c858460fc
Date: Thu, 09 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775777853
