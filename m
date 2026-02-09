Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A2F1A724C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770621234; cv=none; b=kqY0Z7P41TOTN/Bs4VEDrv/hl7LkwN6p7gJ0RyahjCxpQu9KW0Vd1Sjpf6MtjV29CJAE2f188UmtKTR7hydT/08ApCj9MymnHV4X7UOiKRVmCFlq8rY+1f8FY9a1WXl8f5VQa4rZEbaWepjvohAycjfriY+q0rHaIPR3NUI9Tbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770621234; c=relaxed/simple;
	bh=PsSclP+E1vlOcYEs4UUhBnbBlFmPJbO6vjC3mZ3IrQk=;
	h=To:Subject:From:Message-Id:Date; b=REW/RS5GKINlXJHmxtzQF4HHenwtuim01zfeb9rUf3zK0fJmN/d5cmcY+6e+BOoc90P5NqSgvoScTF+JzJ1AITqgPAgz6sKI8+TGPdgNKPdmDC3EEQdsA5DP8ZIt5yAKinQAOuTEZlSAuDevFcjEZDHbDLT8SlyJtfYr30AMWmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fE9rCf7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fE9rCf7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D05C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770621233;
	bh=PsSclP+E1vlOcYEs4UUhBnbBlFmPJbO6vjC3mZ3IrQk=;
	h=To:Subject:From:Date:From;
	b=fE9rCf7UyGxeyWTTshoFs9/6k+NN1mGzsdpvvTEnlyBVHsnGqHJUbpOjZBIbKKwOY
	 JthJPixHKJRzs0Qr3Nsg1Zej9DY8H+S42Rc2tQgkSxOfqjA9ID+kBJ7Hm9oBAbCMQC
	 prDHfmK87wnd1QT58wGjwiO9xFNF4SEuofrfo0fkNRXrHvG8Y2c6r/Llxo0x0BmtIw
	 Ve5LWautvITwxAZVHFvIztCjCQQL85vDZvQ8g3VEEK7xzDYA1Xbr+Xn6sQAIxuYgvD
	 Dc3lNbkBG3r6zq6B+iNgRcDPAHXbTVgxyRWvajkPuHJbojErkq5rd/WrFzGqOHfAOD
	 guNhcn6+TrXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A156EEF071C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062123365.23130.16500757964145804180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3401ce5d299e859691ba403b42bb9ad25301fe249e704dc5c8e3863fcce462f
Date: Mon, 09 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770621233
