Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE41F76A5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751494194; cv=none; b=FJ6AykG0EMhuWwTXBpRW5xbl08K0MTX1Q45ntmk9f9qXy2jAPdmrDQULpKbyciZ90zQX+9aaKxeKC39W60P2X9sqPF3nI8/gPBTt99YygVJAqIKJzMbX08psWu0CC/oRtksp6uEr9v70eedmnJ4hO2IZWLM22+bta4qpEC/CGxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751494194; c=relaxed/simple;
	bh=ueAjsCTbjR3Jtr1DSgR1AFHabURubmiaBxEKc5WChX4=;
	h=To:Subject:From:Message-Id:Date; b=BZPinQlE64Ce/UbEXN43hNOrBGBH9Q8HcNeniNb68AuyjArKdSXQMMVBGkU1XUjcGVguQHio1Vqizqtp1a8ZZkH25zkLPpsZDPJuVdcMKKFDLukxWv1A2NyOg8RmJKJjbuYnBKfkRGtLKmkxrPGZLAWOz42C9Im8xgnU97f25qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2uRcgo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2uRcgo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED1DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751494193;
	bh=ueAjsCTbjR3Jtr1DSgR1AFHabURubmiaBxEKc5WChX4=;
	h=To:Subject:From:Date:From;
	b=L2uRcgo/pPWz9QrCEPq6cSCDDrHiMRl+t2UJKTBiflkbjiOeoHywKyAp2ZbOLo8Yd
	 hzdwyRZFwCaiKs+YH9IWirmoBJj+TKlxcGZpoz6PfCRN1X+ZM8qHhhcuMEbevXHkR2
	 r8cf8KmfNv6qkoM5t1vzSgnReKVDLb2ckFSWK66+cUtwoQNZL5NBA9A+qEXboJx1q5
	 0dIdUqAbYg9P4W/vBD2WCMq/hSM7D5hJ0Qt90oyXLGPJII5h2JggB0tj2bx72z8+Hm
	 WksAi/0HsCtKaIInrvk5RUm3BqAlRf3gbj9MybEyvEX8W6YBqZw2YeJY9GMUmpfdFS
	 sYoJ2UsQNI1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFEEC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149419358.32108.9908019837076591503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4f6e6f7cc372da9b02bde9dc23b099530f105fb834c2fe26dcef0be7507364
Date: Wed, 02 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751494193
