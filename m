Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC8C200DE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719516263; cv=none; b=MgHrriCfiKTWwPzTSNM/DRYYDbI11/OBhVCeiNZEKB0aGD1Gc/TFxSgy8dtW39r5w3wjjFP0Uuv4pKQi6gVPtcg8dsgQdRuTzup+MZ0Pc5tTABlayJeWfIu3kUKApdcNctWALKXpxq202OMLKcxExi0y9qXz5GwTFd1uzi1efWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719516263; c=relaxed/simple;
	bh=FM0SoPeLglMA0O8iRZqjMu1f1sF25T2T3xAFmzySqWk=;
	h=To:Subject:From:Message-Id:Date; b=urPhs9PofpTrGVpVvoRywM0MeFu+uUSgEMReg5I21oo2Eyug8+oGbmoS8VB71olHOcZMuULcdO1P8XmW2OJxKyaqoFqY1dMVfz4so1V1c83SxxQCm7Ya+vV5kIAb0p60kiPsICcCzs8FOB/fDnoOyuUnRuxJTbIsAdeHYYbKSwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEkWYn5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEkWYn5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB46C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719516263;
	bh=FM0SoPeLglMA0O8iRZqjMu1f1sF25T2T3xAFmzySqWk=;
	h=To:Subject:From:Date:From;
	b=BEkWYn5htId6tbTQ4o/PaFGBV20IbJmgfWxJ8hqNYFqhR/eQCyjj178lwf3HNTrZV
	 c/2Gac3Ou6lO7DnyPpaONMcIsrLfegMdV7/FikKgYUbsPcagCd1ICJgawHwBY3GKYE
	 tY9T6v0LInJO16O/PJ2mWuFCxEYdTuzRjtDLQnPuPPpg0n9gc0lEoej9/9vXz6gqln
	 Wq2WIpnd212yq/fZRgdqA+z0rOnwex+ss1LN8p+9WijEpHnf12M0pv+0oozi/g2OwI
	 pls8huH2WRLPeS6cm9XbdW3ORS5o6uyOaExmK64Fl/7yCelNDMmxaMnuhtjNukYVMi
	 GfWmPiUaCB4mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E73C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951626287.9638.9606223394392070199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68595277d02ae3e02faf08bab096441123169a12a41555c170a9e27f8859e13e
Date: Thu, 27 Jun 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719516262
