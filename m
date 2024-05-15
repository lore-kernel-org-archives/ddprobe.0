Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC4E13F438
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715782943; cv=none; b=GFdx07m7wUMRI33LcnFfrz6B5+3DG/dbxAvzqPOdqL/AegjYh2azaQXEW6lDtSWBbfvetRPl90Kgvi4ZWVZq/Jfvg7zFLHY/fbsypUKG7gfTF0MnO6cQmzA2m8NEgVKBrx+eul6Qa0I0xWoqCBI36yocQ9ky/FvQEPGpCKPzgGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715782943; c=relaxed/simple;
	bh=JGmLOu33mjteisi2QUKkYrLG1Wy3gfpAZtgDtSLbcOw=;
	h=To:Subject:From:Message-Id:Date; b=nsgweWuAlk5yOHA3sEtgwF+VixMcSjDDfmcEq7e+yLy7uKegl+IOryhjkDwfKymo/HQ+m4BHqm7zn3rXzG7azDOSbU8RkscKCg4kUULCViiZSIb72CNiiSJ4quQLKFyLziH13lTG0QB28ZYgw16zJY5/y1jdJMPZk3+fDThhEyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoQKplSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoQKplSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE157C32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715782942;
	bh=JGmLOu33mjteisi2QUKkYrLG1Wy3gfpAZtgDtSLbcOw=;
	h=To:Subject:From:Date:From;
	b=VoQKplSKgUEBanpjOiWgwzakgi66L2Wn18ORdo/0xb+QRrbkESKDTxVC2ScSYoFdx
	 1yxrDO1s91eO2/P4nXos8Fc8JlCev3fUgLvVm+Gor6cZrhmxk406DvyWgm7rc2zzky
	 ROBVS83KbxNkjAba74I+6HPTYExF+BMDUxRF+NM9ZaZjFUkjqyCinBywVEWKBzuUFg
	 cGdezP1oQjddDn6e+9qKrSDOgDUdfzSZW7cMA2Kb9OCI0fvMeuXNNQKzNKjMVepUli
	 WsPah1zlETVrMl5aV38iosR8IRD8u0/aUTkpEiQDrtsQNsJBT5F49r9YGCxasQ6UNQ
	 j5bgBHuOVbD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D45C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578294278.10067.18322896810883363771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a62edb6177faa5d282501edf54b1352186fb758435b65b2ffc62197e2f7215
Date: Wed, 15 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715782942
