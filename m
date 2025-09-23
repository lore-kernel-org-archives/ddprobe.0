Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD13171C9
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758660594; cv=none; b=at4KKrinRrhyI4yEdAZYI1ieq+x8ZtKCyePklegv18thLITsdShpBUGo2cNbid0lVtRj8IbIsApRuk8lMUbATqUa3/YE7evP2dRvqnk53rxYOTjMTXPotRyeqtPQGjp6I97UEM9hiX3KML/sAXDj51sJ//p/3F8LZAC6zhfLcso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758660594; c=relaxed/simple;
	bh=0h0WTiuiyS+FD1O6uOkAAdKXDzb1VQXJIQJ7t5AtKn0=;
	h=To:Subject:From:Message-Id:Date; b=VSz8q8Rl34ocS2jsZVAa8GcyuwmMyx8ENH0YczsUbBqGsIWGrkonC3WzgouXt4UG9SnR5+r0oDSTV7nDVjMIGtmH0Dify9X4R+lavVnsxKPkk9NqECGAhRuqnw3h3fQG47RnWrPYRxeYmKc5aF6U1PDzeP+3Z+gXWo877FDsCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0848bOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0848bOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E47C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758660593;
	bh=0h0WTiuiyS+FD1O6uOkAAdKXDzb1VQXJIQJ7t5AtKn0=;
	h=To:Subject:From:Date:From;
	b=W0848bORVmOXQqzD/9pw1/X1jA9ohSX3cW7kuVbVucO3ABYOAI88emBv+4Mcuj9MU
	 w5Ua0VHioyaLVJaFJWizr6zY4AeyeeDfYv9MjRnGk9af7YSiNOrm2AkU67H6h3zMrL
	 qPn4CmUxjhqj1NIlEdMkLmgTfhyFyGTpRaytJ5mnEYvNeeiuNzFIdE4dy7WWmF3ovb
	 8eWsW5UU/ot+3VqbXe/fn59yq+nRRZadYuDjY51ZcSa5CTquooXhZpYZM9lsZxKpi7
	 b3OmDL+4iatiQ5AIV3F/JfTc4eo/hqOC4MIPFSakOloVdh2RTlrCAlbAHR2FKagxkG
	 joNkKLNaejtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA41CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866059357.1919.13869988505346863463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec83130865d9db7a1c6d38c641ad5c79b3d16d43badbe9ffb20c3020f6331bed
Date: Tue, 23 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758660593
