Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652563AB47C
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786958434; cv=none; b=pLyjRh35uYMtz/uj/ghQHD6SlIGmM6rStOuuHLwiY1qJuveasi2CUL8Mn/xOcwlszyDhH4UQezaJ9tna8O5BVflXDvFP3A41V6XAb6FMLp4FUdJmS/upVfyehB6hZOTdkN9XG4OyItuY/u1SD7jXn3U2AU+LRUPNixgejr0lB24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786958434; c=relaxed/simple;
	bh=eJaR70+QBKi0FbLOfRuBuhp0gR48ocmoIUWcyEK/ULA=;
	h=To:Subject:From:Message-Id:Date; b=RfUTAbXNfxwtFXwHwRS7/J6IdETH5ZMX/fCjJc62z/BnGOi0ySSZl+LtP5MtFrEMc89hmT9btBWzKdA/Oo1IclIkp9jGjcuTkHdRELMGZ+YpVPBluPv4inWTOiK5Ql/pAq0DFu1/mziBvXESDP+2I1AQl70WcZOtVFCS5SyuX/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOt1+a6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOt1+a6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC77C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786958433;
	bh=eJaR70+QBKi0FbLOfRuBuhp0gR48ocmoIUWcyEK/ULA=;
	h=To:Subject:From:Date:From;
	b=iOt1+a6aeGWpTroQEx3R3B2ReiqgaaVzeRwIsno4Arlh2B3femKUSOHQgoNNiH/T3
	 +8P5E/MJnaTDSd+P4ImIVVkr5mCsWfM36C92g2oYBjY7lQM5fEo3iiZqClfB/z1JuA
	 9Z1J80W9q1x4sF2ewhv69EzYh/3W9bJcGg8SegaKnAVM17v/h7CxML1oqCOOzofD0z
	 ZWNrCnIFJ7o9qNZEETn5d4gqnqERkgevxglVZzTlxvQwV+gsrzvfqycIwgSfeVY4ku
	 biPhz6qTUodd0o+SEh5YKcAxD8B2tjWi/W5k/z0lYETLzh7LlAUTG2jat8HVwopAXb
	 AYzq/VzPXJZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7535C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695843373.14169.13033758127205636410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be619636829888deda9517b612b576ceff9f8fe205bb252dafef57a179dc884b
Date: Mon, 17 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786958433
