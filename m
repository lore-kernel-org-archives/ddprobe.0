Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C3A1C68D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720963823; cv=none; b=J6fii597tWTlIguthjcPasFrlHnesue9xptd11gQgUjlYHfPw258+0DGioG2rSVrL02udnDq9rD5Vh4lJpW+xONadXYGHQlqsyXg6fq0yfbe9y5CpLHQ/tD00RYtXtZ0KG13+Ylj4RuS1c9UBlvYfiHGAb59dTcfSHqgeyzflXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720963823; c=relaxed/simple;
	bh=mbL2igWE4xRZuMssyGJ89px9zmqL21suPtlkCvPDvm8=;
	h=To:Subject:From:Message-Id:Date; b=tsRS1iMBHDyn2ztW6cMZi4BkDyF9cWUmiHycGhLeoVW12EmxZKZPNw34up3fDfimAhQU81JBlXM7J+A/2K5P5kb/3QqusmqIt5wZz3KdCWlvKxJozJJX2LsC1UlJY/4WFY9s5r++OYALfeAmOxbds53LToNo0SRsdYqiNyrORTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Togp/W2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Togp/W2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93F5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720963822;
	bh=mbL2igWE4xRZuMssyGJ89px9zmqL21suPtlkCvPDvm8=;
	h=To:Subject:From:Date:From;
	b=Togp/W2ubczb94K1OLG+pBKwOQrDLeFdo1mRGwX1aosXnVI5AtCwhEjaNWN3DpF2o
	 3nEhnvSOmXLk8KBRMPUTZX1TAi7g/l8lh05UHmtcJ0tIvxIGjn9+Zds7RY6RElm2pC
	 2P41mSCTYrBmaNM2fenecS+cmI1TCcHxaiX/wsas+eFcF+v9tW/j925dDV8MDCPTZD
	 04qGZ98EyDRD+5jdlRxOta85hSLHNVKVEbYLp8Uj4XufD8WS6/abmR2OElaVz/tLFm
	 ElIKEjBW0fEWts2tuG5otmq8uJdTBFipmzaOR06VVtsnu6hw4+znt1W1hUFsUUzBfZ
	 idqMK11Q2ptTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4820C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096382276.29442.6196089257013861473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d5f83f6eb4954d59a3cfcbf67f17ff03a326bae8bce539ab45ab27b71b52ed
Date: Sun, 14 Jul 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720963822
