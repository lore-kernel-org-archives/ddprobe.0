Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F11A7046
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736363754; cv=none; b=rl69ppSkIpoPSB3AjZYgwFCPNjov3/pCZOI0qiZCRRQ2HKMKN+YgnCsfrQpwLdlYR653LCUQ/LPq+pbD65ddAfWkN/126Y5ZCt2rU8sPJiMutLIq0WWKqjx+t0NO5qA2coowXQhLQmC239ulmbBoW0X1luF2yPZWsEBgq1Er3PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736363754; c=relaxed/simple;
	bh=xEs1Jq887bGfRxWPvRjrA3LljiZRO/iZbP386wHkclY=;
	h=To:Subject:From:Message-Id:Date; b=aGk52nIjZW2fPkraTK9vOgD0qBwn6PjEdh1ZC2I7O+hJOI24+jSj+JD9SwyeFf0W9/eVzNx34IOsKhE2kdOgw9ATE0DIcryP8NyoomAyPjiOoBDxHNlMxPWSIhDJ//4sfvtFxORrv87DEDS7cHi1tgEVPldY345nwlsfPsyY6gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2sTlLMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2sTlLMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFD3C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736363753;
	bh=xEs1Jq887bGfRxWPvRjrA3LljiZRO/iZbP386wHkclY=;
	h=To:Subject:From:Date:From;
	b=c2sTlLMCcTFXOMrWw+szA3OqnBliP64Giaph+80enSDftQTBplfmqxdFeEfKsdvPX
	 7gg6tmxNRvdKGmur4+CyzrJXbsetArIH+2Atybc3Iv0fAUVF2GSSZGkvrWyljsrMx6
	 A+WZ1u7GogFFXt3eFqdWNhjqsY+yUsGBiSl0ZrayEDj2pCXe2wFC1fkpmi4POdN5DL
	 uloRO+YEirKpG3/pSOhn3aNUwqn65O3QlFSrOu4MMEu1D6NtKJtqDjTyjfM/tq/jn7
	 s+z+oAfAs+LZJ2K9RsDR0zXlbVKS6Vopc2XnMs8QgGy9R4yqjpGXh8Wg64RZMt1kKs
	 dtSakgdEW/o3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B47E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636375361.12941.4685611861266326147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1ddaa3cf8b9d50b14d2edea5c811b6ff9531492713d5d07a118aceda77e657
Date: Wed, 08 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736363753
