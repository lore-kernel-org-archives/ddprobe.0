Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E85D2594B7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756267794; cv=none; b=NJvGogLuCPmAEYnSjfrXJB6KP3gTWe9m5oIs/xCuHtvaWg6K76GYdo7D5shAbl+e1Uz/9oGA3/06YF7MyjSzV4FQzmSbEbUFCMphiIVoMcHZTkXTK+a2KxWcwHzshpNteP1k1ojBDm4bTMJKJV3dLUMnPKFM4qmhBNqlX1Q4xrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756267794; c=relaxed/simple;
	bh=HUkPwwaeGubRy6S5yb4KFAs6JyNLnhohuH0dt2PJ2ao=;
	h=To:Subject:From:Message-Id:Date; b=rMQhVc4G9l/VbV/M9CQFTteuPmavMcob3T13cn0cpEbRdDrklBVgqEjWxyO/7XxHMnTXOU9dM7ypbuhxHvc7xtIiOd6aKwu9aO3S2Bu24W4x6b4QLSQeIzNHotrxRvp5z5YUvORr4SWlUhLuXesBXr2C88A9YuswEWSVPYIrSyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRrF7qUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRrF7qUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A588CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756267793;
	bh=HUkPwwaeGubRy6S5yb4KFAs6JyNLnhohuH0dt2PJ2ao=;
	h=To:Subject:From:Date:From;
	b=vRrF7qUn7bA3AswMNl2dzqGDPXrlvDR0xQkDkMy8yvLst+/o2ColYLXypuApHAG3p
	 bkshzjEjZ2Sd3GsAjg6t8KywCU17fflqloDfxZ6qLewYBVKSaD4eQkS+NxSmKxsC2X
	 ex5zTw9Rnl8jMY1K3azP7BI9yfXtpppt2MRsnOFgktFOt5xWY77N55PDkCZ4HGlOSL
	 Y8Vomp/+H37uJHTkd1G8GIDYh89gW70lH8OjhbHPq6L9kH7dedlutravQDI8uVJm/i
	 sTpfGxjPFbQ22S4Nt3Na1kKMnK/6ceww7Md3agljp0tSDlXefH40+0dFaC+gdBgJN4
	 TGNQJY7RttOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B8EC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626779357.21078.14793015112473621825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02925b1a32ebfc8ccbdd9b53e80f6bec577e3bf77f0c03598ae65827b63b162
Date: Wed, 27 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756267793
