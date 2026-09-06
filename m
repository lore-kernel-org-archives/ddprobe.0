Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B11665192
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788730834; cv=none; b=C2t8IqPgr/nK671yJl1ae/ENXYmKfE+SXeLIRNa7Y5+rJDI42j6+7eIxXRLGo8oE4Ww7nRfrpbghsuqOdcac9d3E0Agi4hntRFs6/ZAWqryyEWJEqGklsEP+GXxiwdYW+5p3bXyLuj4y6R8CmDGZjYKcTUq5OzWDt1fkD7yQ0PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788730834; c=relaxed/simple;
	bh=/wJDXE5PWg1YHPncxjsw9c7gqCjgyspWF18eEVd1Fqg=;
	h=To:Subject:From:Message-Id:Date; b=LzeTEulkcrpcMjNt9Mipv1la0b9NVdMKLb9H7usEehCram1jL5OuASTI9BxOMdzLKwmHYc3a0r4tTG/dp8nD6E9PddA9UvPUZhB+z7/m0R2zMkE1PKDSFQGz98ea0FlF+9GBnW+5psjP4gBMm+wsbk1hkjQMkR9T16T2mfxY5aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDfZBfyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDfZBfyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D595BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788730833;
	bh=/wJDXE5PWg1YHPncxjsw9c7gqCjgyspWF18eEVd1Fqg=;
	h=To:Subject:From:Date:From;
	b=IDfZBfyDPL5OKnUBE4Zu+Ie3mldS9ftlewoZd0qDg9o4XMQTVqfezemoaqUX0hGFY
	 xzqI5EKkwnYEXkYmVZbhKcYNL/ptiihLtmF2DjMidjPiW1I0a5gwBe4bNzziJ+/lsL
	 knQzjdmCCZ6MNXhjND3XypNuHAMkzSjLj06Ze7jUY7aYlK1Jo/Jq275N85/ErOSR/5
	 ZSxW2Fy4jOoP0q3fLl8XMxXlXzmuAkRUGrxAl7U02IzqNfDhd5GLr1TxcqZ4VIj9C0
	 BPIw9UMB0mQ/VxQLadEKeDZQDNRCCYUq01PAKY4lVihIm/ZiKDIDtGoBm3abQVcbXP
	 R7gRykFDTeg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35EFC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873083369.22949.14746105449125704994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3ef01c4f974734c5a791f53c87a6e7c056176af8e947ad0a9b35179449448e
Date: Sun, 06 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788730833
