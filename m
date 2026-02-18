Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4ED2F5A22
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405494; cv=none; b=aF5fabzIPhPF91tqnADcH51bjNQCWzjMPPFUyhYASochipHnyxOPAudJ8vjAISWK2y++cAjGVdqquutomilx/ODR0SYVooduGlrsxXh9ZazifoL87I7wdKBmR8pYT1AmpNx1s3ERySQS0LieIQHNCrCbkNT253It3uw2pSR7m4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405494; c=relaxed/simple;
	bh=HHQ7SC7UQ8FYqOnjnauCtz9fc2mbeCZuAxxbLOL5cSg=;
	h=To:Subject:From:Message-Id:Date; b=ReWflUWcWeW+Rc4ctANhtT5rVOUXGgNt+XF2wK13iZTaxyqB8NWku24mv/tUwtEq0ka2gmDDWU2S+T1hVxOMiokqz+oLQwZIAEWZb4YTNXkX0/e2apGO8hm/6/CTmR77GquY94xlhWfEqYw3r/50JQAINUgxG/bY5grqnvoUumE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh9acT3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh9acT3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D7C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771405493;
	bh=HHQ7SC7UQ8FYqOnjnauCtz9fc2mbeCZuAxxbLOL5cSg=;
	h=To:Subject:From:Date:From;
	b=bh9acT3ijpcw9fGEaKjy+8RWSj7aosK8S+bGFxCOgsPEOIKODDfsGcy1/a7PotBDw
	 prFYh+eL1gEpzJb43ed+O4mI/Fl54rXbFRwOcjNrw7C1c7wxmPbr/ezcepZzLkoMtM
	 0zXGBXLgYfMvg8G1z7gxmypyN0qB20CXA9KZ9cAWqGIHQ0dhkk93bEq4jBCnp9zM+O
	 iQODOokO9NKvCIpU/OmPUGaq6inMNhP4g1UNhmoUVFawJxLa4yG6k/WkoHnYSNPgBs
	 xftdjRaeEyU8fkpDzz1tI5EZALLgcWAi6etQ1e9cbxq7BNdVOKho8ioNnvQp2D8tlU
	 9fVy6NRvUAbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA2E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140549361.26874.16955503318950151432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccc12d55f545d232a054ed04aa454847050a2ba5fe24e9226b1dce9ac39f80e
Date: Wed, 18 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771405493
