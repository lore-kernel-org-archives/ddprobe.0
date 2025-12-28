Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4348A3FC2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766901834; cv=none; b=Q+LglWF5YVHVc4YbrSw570yzRe90fcONcrCSb3EdD/Qc/UuvMqVz/UGgrDlNnRVOGi622046Dy8m/kG2wldXFi7M2Lb+hrQWc0lLP4v2LQB4eNGjDbO4HZi2oQc016ceEV9UOe7lWE7J12W5/HK+twpGJ2cCarQ3FqIWFWT2PW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766901834; c=relaxed/simple;
	bh=1bFVLTQkaVEa4fJCwOhE/l88DsH7tjoyxbawrcpBtzU=;
	h=To:Subject:From:Message-Id:Date; b=gpO2cPvLRU1Vwd8Hc0vw8ZYvG4ee1EvZxNX1X41ZgL2Xg5atHGGwTnPxLW0LT++XEFIpwYSBNgKP+5A2oQvLy49dXpwS7/aepJVK2LNAHYsEihQwD6v+X1DM+htGaVM9+4T02iNCNBIMVJeiKq21SZdFPgRXK9iPyZvhWjztcRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNH3+0P9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNH3+0P9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B855AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766901833;
	bh=1bFVLTQkaVEa4fJCwOhE/l88DsH7tjoyxbawrcpBtzU=;
	h=To:Subject:From:Date:From;
	b=tNH3+0P9hR1WsBnmrK8hXBtQ0j/2Esm8WOK9wortPHV0dqLaqMddSN8dfD2nA21yW
	 t1eVJWoWm9BAfohgFSU4pNIfSirzEJRXWUScQ05zmvITS/tkrcgJKzZ+jtHS332yTj
	 9C2DAWqHGae5um1oNYzgZaVoS127h7BQ78WgmWQsQ23HnibH8EXP5rg6N6DOe2+V0C
	 tKpGFbsDMJVWH5izACTm5hzQjPfMxl7VBEOrDShFLokza5Bl22A4TKwDgUqnAEZ10d
	 31eKGBxtSaYz5/AAT+GhwF7gw/SxBY/euJXu40jd2geBsAfzhM4k5RIwlbQ/vFOJku
	 CtlAClXV6h06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32A4E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690183362.15904.10607565558908898615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a3468520ad782f1c000225cb8c411e086753cb68deb70ff997862e0b8c3a1f
Date: Sun, 28 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766901833
