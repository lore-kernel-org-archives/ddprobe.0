Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672221771F
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748593794; cv=none; b=AQZHKVQ5DzFztcpZ1nxtOLXRIJllseQEuG/sDOKIS0mR3GIQ4Yrw7DmgQqF2enKCHTpdiplaOAHQ2q7sethw2ScigIxXV1rfDIwAjhJu7dJjZTtyIIRgJYHifLudKRKZn49XK2d1YvkoPhRhbbuaJzvb6ttZj+b4pAXy7EvGWmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748593794; c=relaxed/simple;
	bh=E1aX3yFXObAFd5/obPCU8exi6UWmoQXcTG4I2WSUA7I=;
	h=To:Subject:From:Message-Id:Date; b=VioIiBYD2IY8aYnNpsbgGyZizlOpRpksJM7fAhqBzb66/n1BAcVuXvWxrVEzTUGAv3q+bXa1tj6ql8Avcdm/BeOF03ffzxwy2HFR3m0T2tZMHedtLmja5Sn4DwIs1Jw+GLtgLOFTi9jHFy4nESSxeBTe7QIsbunSfn4b3tDmyQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UND5kMw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UND5kMw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34DAC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748593793;
	bh=E1aX3yFXObAFd5/obPCU8exi6UWmoQXcTG4I2WSUA7I=;
	h=To:Subject:From:Date:From;
	b=UND5kMw1HkqeX7YQuzz5X62AAdbw5MP9h6LH0D7m2lD+lQXoMUMOL4mCpVhDT8hpK
	 utJaRB1HyaruEpQz0UirLk83dNz55B9Av4a29jP+SBx3P+94OQj2pCRSeGl6FNnnC4
	 nquuX0FzAXiu8H4+klyKOgj5Fb0kA6Ei+h8DnnxtNLuhMTWFfjdm9uRKVASeLNwyWZ
	 rffmn/6XITtYyGnhu6wktEPvBXe8IzIn7CfxyxNhRL/fd1xxkggFuflRArJI9y4dXW
	 s1Dhuoeb45dwpA9DBGLbEgSthjp2AT645NSACU0NuUBeq8GmTw+ymkQAdkn2eyDcpD
	 fZ99bhIKwR2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFC5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859379357.10984.5285036778171976442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b9b10c9072846f04b201d7dbcbee17fba6ba128030b45b707c7ecef61cc0bc
Date: Fri, 30 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748593793
