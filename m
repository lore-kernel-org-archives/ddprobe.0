Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE1835C68D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786240834; cv=none; b=siCyblrZYC3GHQ2aBXgKp3ldfxzdnwdo4OT6RNE+5el0TozQv+AD0Ay5LTPBw/kV0g2arxQbjIi2zsBK+o000jDZeo2VzYzFOVAuHTPDTxZqrYjIehjVIocnId41GaXIEnkZF2Y143PmeOKuu9rw0zFHi1W8aFHrNIqUwpDdK9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786240834; c=relaxed/simple;
	bh=76OJ3jD3Tv+Gb8moDEBxR7JF9zOz9PQlnP1DnLtzEhg=;
	h=To:Subject:From:Message-Id:Date; b=ovrczgM+UJjV1c6lgA+vfJ7TJy5ilhkcx0Bd/NpcTR0T2q1gUrr2ujuWrdIT7OpG1z/Ayo2bVsvGkSII8df3gceZ40mQA5J8mF41yH6mGrsLMcsSUaV6Gvxe1IAJI9WeBuMuMzbZ9cSPaciLdKGDJc0bDrWA+rLXs2faUUTqKq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpwqoIEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpwqoIEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786240833;
	bh=76OJ3jD3Tv+Gb8moDEBxR7JF9zOz9PQlnP1DnLtzEhg=;
	h=To:Subject:From:Date:From;
	b=HpwqoIECgSigNjuFx42IXpcOxKQ1eUvU9aCV+sMnxF8HKJx1gn3HLOxC2Cz6nr1H5
	 ucEdBj5jzUXJr0xVwnpR+JvijeU2xj05Yqg85YPLoaD9w/Df7glObBo3mqG1+agaRJ
	 c9XMiv0dKV/CH7C9lIVr4y90NK/V0xsx6WQCzNZAsuBHbc561EYLGhGiG49qwAtxEl
	 aaCFgyfY6qlBM4Im51VFTLJUvHHWodhwpQN/scwtYuO9bt/OEWGNrAp38mreN6OALt
	 zaRUo8rQ0GqOwWNySre28cYoVD377cTf1M/pI2GmeMKwYLHCZsdsLvlvfPetjCq7t9
	 7+jUbjmp9z1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA86C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624083369.11210.12397980934908991481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486830d876d183bdf369054641f18153af45eae0875ed3bc240f5e6698bad0f0
Date: Sun, 09 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786240833
