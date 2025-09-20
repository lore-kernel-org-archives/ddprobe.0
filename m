Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252FE21ADB9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758402594; cv=none; b=uO2xMmyLFp78+9YUnwbYX/9Inp1UMOqu5Rg/zteFvtcVRs68RcsI9hO5Cm822e3fEI2oa8C2crbGj4YUjhW4KIKwW6rkUQ6+0tp277fRIkQgmAU7dWMYJ5z5NcSpv/D6lzr0YUQQg405rl+VaIQcp9j7/wQZM6em0WJPmB/6pKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758402594; c=relaxed/simple;
	bh=7lSEaUs83e26JoYXr8BIWZsGWpgx97CJIvRK1yuSIgA=;
	h=To:Subject:From:Message-Id:Date; b=kcYBH7cPtnkGzF+zsCGgcsMiFyu+Yzn1CZRnabUbaMtuhlJxgsnUr3K5FNFMJ7MMybA06WruL9x+4f2/J+JijrpqIxjW9HBAHU3FpkbA888i+ezqJo1sNjzmuxXWERIlRg2k7VrU1OcPL+WjZYfW7fY8ycqohrhtOLMQIQj2yxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrgkaY/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrgkaY/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB06C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758402593;
	bh=7lSEaUs83e26JoYXr8BIWZsGWpgx97CJIvRK1yuSIgA=;
	h=To:Subject:From:Date:From;
	b=hrgkaY/2sagX6Sfl+U6zCh7yRMmj8cZCvGrCuf5wTY5cnTIVzbvMxmfPEhDhedMel
	 FzrcSZ0cLqgoae3eHMKN2nAnSTaYpdZ5LgeqXU1vD6+vKphCDu9v7X2/1rxRTbxBDU
	 4K/8+qXvUVyoMmuvNrV58cdLx6A2ypcl5oViuy6Ro/r1Pv95+V/lnwnRi3tiGtoNxx
	 YIAznvVUjtOmY14rW0r6BueqSkWhVxZgLm9SMRgu6ut8+jd3x9R5IsBS1+PcG2en5w
	 VRuqFsuMSA/ZoFCybJUxhFJfcTLMVMET3z501Seop6qlQsGNvX50pz8DRGtSKbgNJ0
	 W0KxEwYWVLr3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD6CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840259359.26787.12214384034953491800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11497fdb9f8ddd4c8a3d3752045393fe82423a910f842eb4add43151bffe51f5
Date: Sat, 20 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758402593
