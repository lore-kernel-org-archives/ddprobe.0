Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F97124DCF6
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785448834; cv=none; b=D29cvT8c171vs/Q1fm19BGCCgc6pHT/pPDtMso49xo+1Qp/Ie4xyAO0ajPxbZPVUXT+KYpEWDJntpzwR24EO5hiTixqPGxmV+f7BeISD3KmPaxSVRpjCvxEpWm/caujWKV25qxsPjhse4aiAlgBebYCxdt2GZDT9sKqvDmODS+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785448834; c=relaxed/simple;
	bh=M9rOpGJ91hR8ir1fskZyfcLJNsrw23ryNFokSx4JRwQ=;
	h=To:Subject:From:Message-Id:Date; b=tZVJRj8RrabYvCm4uHJklBYmlBLRYZmg6w/u9EtW/w+++zSbRyqOH3RWAeGzmhx6QxvF3/4xmav53IwGYiRUyjF9lqLItxXgrRId/UcoxKdCPZs7aNUPs1/hfN22ydfENNaI4gYjQX3uVhU0BD/+3uohfjEeQVhjytbtBb+ezZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyswGxt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyswGxt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06D0C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785448833;
	bh=M9rOpGJ91hR8ir1fskZyfcLJNsrw23ryNFokSx4JRwQ=;
	h=To:Subject:From:Date:From;
	b=VyswGxt8NLymvkA4VEJiTRqLZFjYXmBRZsuTK2Tu5EhlOSszrziiVACOUGmO5Ggiw
	 9v5uM413jlf91ha7GH+bhiGpIMH2eY6Q39aXAgzzm6DLlMFPoSnG8drIAsdAtgEeC8
	 ebnLL0JOdFQh1Z5F/RhTp0WO1TTV31EtGcYo7YdeobEfmeD0ZHLWpPSO6QNBd6rN/L
	 g/5wLw/c2vN2liqU0fsxHtXWVg0XBV5hvIrlafST/u/Bw4hs6pDPz+urNn0fMwJnx7
	 z0nK+xRfQTXQdyoUAWOY/vVj+/i7JAz6Eb0Nb7DJLT4sWaVSESCwGZFZ2D9rbLrh7r
	 nv4HCWCEgLzng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1FAC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544883370.22875.10431309681820665381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446d7b0ca45e24a3af44d675dad24b791f18b73af99764830f1c7cbf1b9db73b
Date: Thu, 30 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785448833
