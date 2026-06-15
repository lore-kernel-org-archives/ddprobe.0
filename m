Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4C83AF64B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781508394; cv=none; b=KIDRop7E0vUil0QP2Yj4jEDEJPParDIQR/ayB6vsNk/UdYr0aBxhJjAkvDSX6HApGrdpl57kEjQY83hWeHWIpwEkjBxZeYM+PRu6f4rhx+3cWz0I0plbP7Bmmlby6m51r1M10N0ZEAnJC7bZSt88Xq3gmhL5jmsqG/QNtISRD14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781508394; c=relaxed/simple;
	bh=GbbnZ4A/9fVUkymOjf0vwaAgubQfPl5iHw3bhSTn4Ps=;
	h=To:Subject:From:Message-Id:Date; b=hHfyXK4V6rGKvho46Gk+xDgtlGuKxeFkTF1+OrdTikch+BmOgE0oae9ZZ/MsXH68f3dmoCOq9FNzMYafYd8fImKXEifxRaTM19kg3ch7/JUP0ZtQKA+IHe3WuJF17KSTW5rRH37K68kD0wLMEayG4J1d9YmhvLoCiQr3RmSK7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pnc9vKQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pnc9vKQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82CAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781508393;
	bh=GbbnZ4A/9fVUkymOjf0vwaAgubQfPl5iHw3bhSTn4Ps=;
	h=To:Subject:From:Date:From;
	b=Pnc9vKQYuxKgNEeiugySbDke8K+9o0/fwbc5N3mmEgEd+bgmSoaVIgb/oaV745fOJ
	 cVTPVthwjrpmtY4IiQ3adxa1d7b/qZj03nAMN2WKZUFhlRfDl7b9muSDaM+gtWlpTm
	 fS6z+8kVqneoR8QQKJRer4rdZnPzU+jhj2AiJ6J+nQgvQq/6SXWbwLA9tPcoKeBADR
	 JkuKAwU6Sdi6l7spoBWgFou1Q81rC+GUCB+IUGOouNFRlElPgrRavTMfRB93oqKHgC
	 Z35BImqOZFZvzhkZItrn6nDvNw+G7oAIcDcK72RTjBRajJuK/8ss48QfMRLJg9nX3R
	 udqae8+gqWPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D7CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150839370.21721.8677033601583251703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e90781feb96a0c7219b75e383ef172f413b3f7eb4d514403bd2c51c269fee7
Date: Mon, 15 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781508393
