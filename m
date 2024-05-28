Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560B245024
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716879863; cv=none; b=Bhnjo4EcVIarbZVNl/gFeexGjSE7kTaOelz16QmkFAJB9aTY+TIWv2GOSWIMI8MDNDYKoxpnxvryUBotdHLkzDvqJ85oYzg5B1MSY57ohhODFWib/Iku/WS5nPiwvAdgoJuQC878ylB/NGDT78inZnuWEitpfPiMstuEv7pZ3qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716879863; c=relaxed/simple;
	bh=6emGhjueHoRy3wOUFM4UFZNAENZt46qeh6UabLjVjaw=;
	h=To:Subject:From:Message-Id:Date; b=sZcPgSxHaPThthYoO2QAMvjzjKaRTK2GRcO0Ex+y+WpzHh8m13mw7XUO3U3ivzgv6fLu15S0q3Xi8eLFSy6rKcLzNU71E/WDsTADu2GJS4u85DyEzCYh7AmmTBbr0OF2y3epAAx01UVWIuiJZcXr6hXcNk6hXqE7dX+yap7AULc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RefnSWCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RefnSWCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB82FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716879862;
	bh=6emGhjueHoRy3wOUFM4UFZNAENZt46qeh6UabLjVjaw=;
	h=To:Subject:From:Date:From;
	b=RefnSWCdD5HiPPBZw/XYYp3dlW/AbbUWkTZ56a4yl0FCyGDfYUHi0DbVpf4vtW6QT
	 vxVh2aeUAbo5byNbSlpC6XGOuln8lZU9gpEFaUP1sb8ZwkAACsHassOpe7XUYw3TAh
	 uEo7r4CxUcsSkwzKJK8h5WxzxSIwFc23MUFWP+vaaLMlqUgVcXIwdz92KKWBhuvgnn
	 AZ4VoWirPa4yOgBOuyCzn37mZPDETNxKXm0fiS40K6PMw6wM8U6vhXlaliYEU8J5fg
	 cuweFINsNBDOhqQAmkzknT/f7LCdaw7CVv8mB6/StNKKMTIZGpXQ4HFBP7HD0TYGIp
	 I+A7kUTegBLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6155C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687986280.4962.7654003411449442928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dac91616c71d53e5d3c34cec0bfaeb0b31861d0176c62a0f3bf41c573e6eff
Date: Tue, 28 May 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716879862
