Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36E73033C5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770322433; cv=none; b=cle5fubyykYmf/FTTwXq/V+bGYcK4ArlS8E5EkAfCKcRebufGF4kbiggmnd4GYTyZylQKWhJkWuaCgYp+26nMZi+uPj9n8kYO6+r88vBBL84KWTiMdb7VwIu68NZun6RLjH23j7YwWciAEoVB2BYAeDwgYv0v0ZUMXNZ21/Vy4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770322433; c=relaxed/simple;
	bh=3ZYH4pcWc0HyRUjyDnYAnd5+jYARknhXqKrjZkavgOQ=;
	h=To:Subject:From:Message-Id:Date; b=eGTxU98+X035sOlkY8buzQ8E06ff2V8PeaB/cRWUNEnbu27sj5DBtZF2yDo5WqRVA3RppUTjGk7xCocTHNK+8UyUwd3uGog8+Mnvd2zna+QGMW08Y4cEUxmWIZpcGotqLY6xLmGZN+ROqRdLnWcXi5g6XHmPCV80QuvnwYVW5lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH4k9AdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH4k9AdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770322433;
	bh=3ZYH4pcWc0HyRUjyDnYAnd5+jYARknhXqKrjZkavgOQ=;
	h=To:Subject:From:Date:From;
	b=HH4k9AdXO1MZoAHOcrOhSiWaz6Xjp3oKb/Ua2vMXjy2lTOl7CYBI4Uova+RuEXrfM
	 yxbcQeFSKtP6FL0iYZuNgyCdfq6iFc1qYlPgDB0uB969XdU9vCrlnXjNMGGDqq+R1I
	 At0A0uQhWmqdOpcJTa91IObkEzuznOI9hwIAQKTvSFxLaUhTvDZmRMAl0uAWiiK25r
	 QCY35lp32NdIRMrA6Pc7rARQhXKHOxddNjQ8NqyxLECWqKusueni//+FVW2Ktdtq4J
	 GKqVDLF7H7ac9b46eXMAY8lFrsunhJKgoULotO2etObP8KSJaQs8WViZgGNmVqsnuD
	 6NJdhZnDud6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95050ECD999
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032243359.26551.9720451002954141129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e9ff321ca61abdca50eb2cdb3246023abffce3497245c1f62c7cb29b729ba0
Date: Thu, 05 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770322433
