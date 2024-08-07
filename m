Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F42982863
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723017954; cv=none; b=o1MfOmUlIVKHH+2Z/wkbgmOnKwBQhhtJuKjxNYVkY9qty7JJzQj9Q26dxT5C4I8gAVsj+c1C2wI1GJJK5zUR/v1CbK/O2fE0cxNOxCM2X71+4+fA/PpgjvTefsfFxuY6+ykaIszHuMkskt3x6c2prk/qEw7L/feSLZrepXzZi1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723017954; c=relaxed/simple;
	bh=tpWVQxY5vX7lxuReZeOrtOQ5qXurUvxGbQESs2WlAys=;
	h=To:Subject:From:Message-Id:Date; b=PZFvghmziqVzBa2Bb9Mf7m68rDsPr/XPzgnq1lVPoZQ4hDOpAjPxlZVxfmEk24QGwj+X5InrZbLO1Wn/jELU/6LG+6cdrOcX/gGT48pNswkzVHh0dx52xSeZsB8+jpXEfQb+d63+4kWGZ8GoX3tyqXnmF/OFB+l2Gob/DsduA9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoQ9trqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoQ9trqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8709C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723017953;
	bh=tpWVQxY5vX7lxuReZeOrtOQ5qXurUvxGbQESs2WlAys=;
	h=To:Subject:From:Date:From;
	b=NoQ9trqIFdBOlGR5q79OcNjaNt+7VNa+k07naFtZZGQwJwj+TVfwRlBbon2cqkJbi
	 0j/KFqyxtgyl3PwADP80KSpa+2RpV6+oJHJA1R8ptVlY7Gxn84rM4A/zu7+KlknVPS
	 ShPVHhyIPCJvYmhWoRGJ1a896r1RN8/tEPqoYv1uB5NBZwv3CrTOmf4k3m7R8NPjLY
	 nTvJTzlte83QB9a3+QZP1DVb47WpVvECiXijRbxUfY7Tkfx3iIDiSr85ap9JSxG4ih
	 EJBjhyjk+x5CVPDUg1m9z4RFa6u8nucXxbj0ZWdRxThCDhk6FPqgFiA76Q2XWWDL19
	 XVu7ACCpcjShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18D7C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301795362.14056.17918566815554079834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58bf5dff50bb1cdb1b3964e4950dbf7c721c803758f6082bf9fe4f5a6b32f4d
Date: Wed, 07 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723017953
