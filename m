Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E088EEB3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745065794; cv=none; b=FZrdc24N9r7MI2ac30Fg5FJbv0YEbDE5WBaRmmZIjvZSkagzBIreJz+lxp3A9f7JeQsV6ZaWpGM33Y7Em6apQj1gpH3kSFFeMC1bdiCduLsO/mDnWOWlNfwd0d1h3SKzoPYadsvCFoj4C1AAlC8dpflsnalLhNrJMTjS7i3L9x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745065794; c=relaxed/simple;
	bh=GNYhBWnbFkfVyFZdRuOtw0XN4ALX+74GKsJqfmYdSyY=;
	h=To:Subject:From:Message-Id:Date; b=PERrULPo2a607PUsaLKLRfplvhhtBp1t6HJF3kE+T+rUXnwMGaW78HKiXlezcMZ/5DC5iS75k/usljOlIBSKUPjt1Rn4L2Yt1/tIDNXzgrF5vE8DfVoSH/mV5Y4r/ZVOfm4Q0oiLjIzjON0wWZNI9h3wEzcBWhzIce6vcZbzINI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=calyDBRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="calyDBRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE907C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745065793;
	bh=GNYhBWnbFkfVyFZdRuOtw0XN4ALX+74GKsJqfmYdSyY=;
	h=To:Subject:From:Date:From;
	b=calyDBRUeyJF548mACU7iLyJXhaDf5I5fH+NZE95uNnQQzBJS14fGXDfo0hIAyGjL
	 tyLQic6NkxhttLQXqtcloN8QQ5vpHQjT12A1VQs05zcsh4K492UnxnVTBiMDWBkBrc
	 4t9voEIVj5xG0SBX0aSizHhJyJ//AkkCCycy7WnVS67e3Uv15rjIje/YnnkWQDKA9T
	 wcSl/7JQTFVuBpNR0QSBO4HRwTVvOxGKRuNOvKoehafqzAkw+Q7QmfWtIDNDbx8Hti
	 OH20qmrghm+uplU3vpgOpHPhh5YueUMwCHrHX0wwsDk0dECxEq31GwLaB/yIxaQfDN
	 J36S/g+72BHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB9C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506579359.28788.6640490228574422032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab902b1453ce49122e2aef0f42044f52adbbf383af2324fea6b668a5df5cc8b
Date: Sat, 19 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745065793
