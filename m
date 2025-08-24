Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF61393DD5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756005594; cv=none; b=TBEiSDj9s3L45Q85UyRIIfbUbmuptDrUnwsgIWB7xYjckhPCwwuapdH8y0QWDnixgS2Iq/fLtxVW6SIael1CtCg+KptTtdG/daSbh6oAsFExi8x0tSKFQT+5mrVIeC8oFXpn1OhVRO0X+F3bPRt38z/P80s9Pgx2I+LZOQff4X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756005594; c=relaxed/simple;
	bh=cT9DC4qFf/Q0xgm5iXqJgP+U6Sd84WUkDS+Py4UG8uU=;
	h=To:Subject:From:Message-Id:Date; b=fp2SATGA+QvsOUPb4Gb03RN1FVTfEn6MVCJFFx4ilh6e33Z05ECuMUG3smRoJ4zIixtjaY0P/Whmrwqo/ZYHk6ahDr7mfWwXo4+BC/Alz2m5lplVPVNwx4zNhXVXd875ixdOKBPvJqkBAxdzm2ZdoyO/7vp7MkWhux+yemrPAK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwxrZ991; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwxrZ991"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED9C113CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756005593;
	bh=cT9DC4qFf/Q0xgm5iXqJgP+U6Sd84WUkDS+Py4UG8uU=;
	h=To:Subject:From:Date:From;
	b=UwxrZ991dRgqFiLddylno3qXmbBOCAZvVQPyKU6132Gxaftuo0jYujURALI6z72Sy
	 MbBP0+BCRG/n9OYUkHA0GffqGwhn2rauVZ4WBj/XT93OpDavHi9MDZBKg9cT1a+BIO
	 zAe5HvC2qHGJzhVEIe1829JQaQuGSOe0yKFRZB0n/+42eCRrCrpRbA5ZNuE3AksiLe
	 Khhag/DQVAVmSNDadgfbNcquR0VD1j1kMJz1K+Z+bUEi25nPBAhvxwWcZJyBnS6QJ2
	 WwHMytJj9GQyjgtODWN3Xbg+debwZt3NTYyMdwlwMz1rws8GOdO6XDMl6lLS0ux1V1
	 pG22LZMdTLejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D1CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600559357.13188.7878808359106080345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b4402d0d132c2d66ec65468d1824d81a35033a772815198b96cec68030ab11
Date: Sun, 24 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756005593
