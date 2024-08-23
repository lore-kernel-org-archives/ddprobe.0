Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD71A953
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724375754; cv=none; b=u6kvvimRKMxrN3hsSmNHfgcSeZdo9M6S6soVtoKkEao1VQd204gw5jXVx3xxQb1lLdAFX8xR3ggBzKs687hoe0iEdsQsbn4RT4UtrJuI80REs4acnk9RLW1e6znNjRruhVM9QUHSmpBzo8k8GFNS6mBmPhpKdnycsSp+4kkR6Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724375754; c=relaxed/simple;
	bh=3t9GENlSiMx1VFvEvKaeaKYtBMvBPzO4uDOY1180uhI=;
	h=To:Subject:From:Message-Id:Date; b=IQA3Io+0yKiyuudl5vCH4DTYHsKPpH+gM9mHrfeYvJxhwEm2O+Y7JECyh6u0MKa2tcxRpT1m+9CEbycddub+bt+jj87idMjL2E1JGpyYKyPwi9Vrfi8wSf7+OEiNirRdbmAzUyjhBzYuZ+imCwY/M/63Qqk2GcEKnxGQHCoLBE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2O9o89S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2O9o89S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D23C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724375753;
	bh=3t9GENlSiMx1VFvEvKaeaKYtBMvBPzO4uDOY1180uhI=;
	h=To:Subject:From:Date:From;
	b=P2O9o89S7qyLd/yS1JlemJbaNM6YjgWQ31QwHPHLZcvyTo69czQXs7oxAVisJpiK0
	 WrSAKKceDzaLxI9V6spvUzAtNE+qTtyGZe+DbFhvZWZ+Q+NQXEtFxKn8uYOeBOCJ7Z
	 2oLEsDW0vzOaT3caJlRndRfZdTMR1GaDoedvbiRPNKLvt3O7ECm6StdqYFaUB+NaWf
	 zW9dnYBLl60vpATX30YoHmc9lq6AaUIWu/78KX9xbEAzsJurCQfOUx8PGs9ukI0h9A
	 Cbt6ZaYBbQexTMYBm7fktDdN+SJbfE2SoS3Gv6qOuJWZuV2OzUnh2TAFJRCVUdEhk9
	 MOIbZCtgRDovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F7C531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437575359.26476.18214635860798330927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63bf22d092f4512b81df163029bf9776cfaf204e8b295fa1ea5d357998f3591
Date: Fri, 23 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724375753
