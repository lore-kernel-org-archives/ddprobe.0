Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B526286A4
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788674434; cv=none; b=VgThctKxoWoba3Z4wFhP7GHa1EnXxEXe99sLNwvlZjWUbhfCIVes82vvgQFT3Iz0nff5h1pcKyhKmxfpcznup0XoJwn8LLNCchbJCH6us/I6+FhcluujJSZmu1vZO1M/zo8wcb2tiDZrNmNkcRTpHdwLsKGGzQH9/POfm/DWGTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788674434; c=relaxed/simple;
	bh=g1VcFshPjC3bT0u8GoEN8OAbuUhkRovjfmQ8MFApX+U=;
	h=To:Subject:From:Message-Id:Date; b=BgXGvT4V1lLOyISMqednUNNdOv1e1vkBkl+cer1bzxPZJ4HmDVpEc3r20NnbVX+rGB8KDbDB+EFi0jUArOS5Pq9VBPGbav50sQzTD4snPrj0NA/7EXxODdpUIzdwVml7E3D5/qKJkRoqVRlF0pu+ZAuMMPPUeGASAXLJkqVuYqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTA4NYGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTA4NYGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F67C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788674433;
	bh=g1VcFshPjC3bT0u8GoEN8OAbuUhkRovjfmQ8MFApX+U=;
	h=To:Subject:From:Date:From;
	b=PTA4NYGRBeTfZg2PiaRYJR0tZHm7qQt4n2yNhCBj18mZL4+dHVLc02mrMgKlyxZ/x
	 OHIlVLhnGZUFErBtX7Cs1mj4YRyR7Cfsa5f0DbLI0w6RcCnU2c/kWEwluDHvhL9g5S
	 p3ERNzzazP7yBxSNoV5Mwy179DAS68dErTnDMgDTwZh9+BHOXFCXMD400Y7UknD7M8
	 B2SS4nXE+gw12GoKkxn07IyqXYsr8MU8Ltq9LfKxoDvMGppThe4CJwqj9Is3wwy+nb
	 qOwNAs/uYBSVowGuOvmtnm1PJ1kZnp2MKoBEwgo0kaoWlFtDx7DpiMawNzSHZaEJdR
	 3vRJigRIG35lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B149EC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867443369.1313.7066923847226678592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5165a25dad63ab83018831aaaa79deb809d396ec8401a9c481c306db8116623
Date: Sun, 06 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788674433
