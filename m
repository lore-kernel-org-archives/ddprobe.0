Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570AE26AC3
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716139943; cv=none; b=PRKqXSc1h3Ja0KDtW31w8xc9GtSMEb+IdNxxQQSk9NVRYEsyquDYFLc+QM/FUIcg5KdjKliaB62KtrqwrNNU9tWfuZoH+RT6SuK0fv21D1QA3LAuYuthoW09JZXCDpen+h2DjIkg8WaW5XIhAobdvi6tqqYlcVjXvesYsGjvYvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716139943; c=relaxed/simple;
	bh=uadJRkx2BnziHNl5OiwM1W86iu/EaREgn7ZuyPrerpI=;
	h=To:Subject:From:Message-Id:Date; b=l/zNnD0negBDz4JSsgKv6ioIs3dcDf7POVkZhSHTg45cHEDeadA+DZF54Jl3BHbJAqxskTJBGb5oIl51lzr+UTcNjA05xM+kcCtmRbDn5jJkzWt4LxLUFijKZUVkTO7NpUsTIFW8X0pPxla0fVkhOvpwY4n2i5gGuEid/NYy2pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T00yjmy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T00yjmy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB802C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716139943;
	bh=uadJRkx2BnziHNl5OiwM1W86iu/EaREgn7ZuyPrerpI=;
	h=To:Subject:From:Date:From;
	b=T00yjmy0RlvAgeb+Mzx01huxtgoSzYB8+lVvjCrFDnsbelS2442CCeGiJGNls/p31
	 AoWPeFODarcwXklfBCpcWBgwajGG48LiE8kJzhCcfpnlObwCFy4BjJi+eA0+ONgUBk
	 nSloQuXuSIxWHpZuobBGXag0ikJ3eWyhpc2z5rjeIxo9Qhm6LZr6KE1rtCbNDbK9xk
	 sNyt5/RS9U934E2mS+vXNHX7GNn7XkjIJrSee9YZ0NiFGNHYml0CR3vMf2Aja7Mdgl
	 68wmYk+nDS8SunYVIAQN6jjn1TEIVOK1OeRqACyCxZa9De46UTywtwcSq/JWIYLTP8
	 thejkabdoJNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D366DC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613994282.991.9972236850077283917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d1751f9afaaad2ba04ee48bf9893e93d123635ef7414dc6a6e0ed69cf28e69
Date: Sun, 19 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716139942
