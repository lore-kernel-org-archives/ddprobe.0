Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169F738DC77
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785656434; cv=none; b=LWXl3iGcjxQ4KLoZXFL9wJ3pwYMhoDtwIVBAMn1zjQeHE+fT24CRNiYyb6GaXjp24xc/iXIJj8bhnblPaHrvGPnY7/utD1HI22bhsBhBtJfDe7oReQV1aLapVvRxBEAp/20ITkHPsv4xeaCrqIwpJrdtcYBqf2lpbMNy65GEYPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785656434; c=relaxed/simple;
	bh=73M5EsjXANqxmbQvc95mtRCWHbmVNzu/UlspVZghjnE=;
	h=To:Subject:From:Message-Id:Date; b=XqDO+RTS0H1vJJZHyfXsxElSWCqC3w0oyvB7okHwBnSZYqeel5eUHxnEVXksjxNhqsHEoDUyu69JnIJB1thaPtirSWzFqSFWCe4Sw0KtsfCuJsxxRy2Oi9VV1BlqasA54kRvfJkUzUqII21QG0+BRJwgIEE10e9JdpWW0gsrzbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ+qilAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ+qilAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64D4C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785656433;
	bh=73M5EsjXANqxmbQvc95mtRCWHbmVNzu/UlspVZghjnE=;
	h=To:Subject:From:Date:From;
	b=uQ+qilAt+CGyZF62upPQMG6ixFNEk5divfJtzU8CgRcTm3vRv47DlCjlSbClNBC5h
	 wDj6wN+nIEu0Lkiv/Obw8VV5afj43U4OFu8N6UfUTsumSgQ4CmE9tdVwwhTkcnOSKB
	 cBEl8sD/bq50ciSg9r3fvYEMzbTfMCdTcWey9l6CnZ6ZinB8l+ftLJmMlcsoO24hGt
	 zmoRAxySEO47vsPhSQ1WBHG5M3F5k/WJFS6q1e2d2CMFfj9GR23b0ZKJ8JDmTB3Sef
	 Y2UTB/d2dx7vx4PpGwXao+uHQCV1Qm645s/7CFHDjNaUbrVAwd9VJajaaGkBs+agt1
	 zUo1VlwkTtVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1CCC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565643368.8865.12977391849543660069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13ffa3687d77b516df4afa0f61c3ce3bc246d26337c019eac9e5fb71229a0da
Date: Sun, 02 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785656433
