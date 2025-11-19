Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BDD372AD5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763582515; cv=none; b=ER0+qP7jSKxL7yS1UDtI2vapICRHOD2G9QtiNeuplUc1ZfqFe/WWpRu342zCbkKykAplX2Lu1xpMiAeBRmDi50iBORxd86XLGPebAtpnlroUEB6X7fixxTHzLcBCAryNeUWngO8BRQ8g9T76yqu7c6PqupcnYWIqCae43+nvRBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763582515; c=relaxed/simple;
	bh=WP/dFsjzAKWbZpyd8EnTIRWlzxXJp/NgiOPKiFtNWpU=;
	h=To:Subject:From:Message-Id:Date; b=HcUHqCVwv4TrNSxRkARy0aUkLxJhmJbxQL3LpL5qdF7CBt0xaMh/4tIUFEFDA4cErMQgxqICyXOgRBgtbypUSuD4J/DneGS2NNRLZSOACeHW5YGYt8wboku7HX8Ttvp79wAlhYBSYf7PBY+i9A5NIArHwnQKI0HMTeoru5HaBzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCBkGPPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCBkGPPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C56C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763582513;
	bh=WP/dFsjzAKWbZpyd8EnTIRWlzxXJp/NgiOPKiFtNWpU=;
	h=To:Subject:From:Date:From;
	b=jCBkGPPvRmtLnM99SzZJanBK/NCt+OyqMuQkkIHLc8j/88Zx+5DwGmDaJBxLmsIIu
	 Hi6hqSOqGOhuvEMSSZeT7wm1o29n8xn5qJ6+LmFG0z8UsU8WMkx3h2tvma36ScEClC
	 Mf/tvBqagVWDrfia/hEEh/sqWoV++1NE2Ukv3q2AcXQJLptzUHIZE4qk1RHpSk5Lr8
	 WoUXqUONn9MRFUlRkxoIZpPwmlk1QphBCSyXUGOG1CaE5jMg9M10b8SEDLINhP0JhA
	 V7a1/7pZXiw77zW09n3OxrlVrz2CdwM7gqWr+w49upU+b8kZyXaeu4Jy4BM2Q3ZHdO
	 8P0Lfxaxt6vMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117ACF34AC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358251358.27443.17270354651093981570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6bce7b2dafa8d35ecbe180aeb29c2598b7f6ecced21e14a92febbe74d64fb7
Date: Wed, 19 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763582513
