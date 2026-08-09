Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8754F3C8700
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786270234; cv=none; b=JnRma/b016jxWDcVQf2A5IgVOPhCBaf72B1pg5YqbnPoy4zrdi/fGNGJJwq7d1Igvkf6/kTPa/BkWhk6R6l2Qx0UsTAiuGO8a/xZMIpnz2LD3bM+zUbOzT02tLMNi9mrjK15MhPsUg0xAhFT1JwMaAIkW6yUtMF6GAg3umS2Cvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786270234; c=relaxed/simple;
	bh=4BSfYbWsPuzbOe90BK7MaVT4TOuojOL0J6oG/wK75E4=;
	h=To:Subject:From:Message-Id:Date; b=PPNVInnUePx60T04Ie4CGIS3lRdJ6whUCg8RinyLPHIb/+U7BGU/C6niLu7tGmEFlq4M9H+dunnoeSAC99cx7jt6zuv56+e0WgSA0EBqVVaPgoHRkBiIIdNEftTsbI1otU1cbKUwQjlP3LECYTHbJqoGaAGp42AZFtWx5Llq5T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5JmqOgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5JmqOgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9E8C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786270233;
	bh=4BSfYbWsPuzbOe90BK7MaVT4TOuojOL0J6oG/wK75E4=;
	h=To:Subject:From:Date:From;
	b=U5JmqOgiiNBkSbDBzW39X36/tLPIMf/akhelcdRLpivdFiGHrSH6JK/qafmzhvgIZ
	 oZxRi+igWpCyMUEOhuVqjtLD2V46g+y4exxYOEU+ciyQjBsekMNPvzWyHkmcoL0rPZ
	 2ixcu61tKrs3fqhiJoOPry40FGbVEeTh9qa2wg9gWcNZAavcuTaBnMsg0jIFNWa8IO
	 spPgLB48T1/Oki1LpJfhGJnGfgfiTkx1oj1q+sUaXSiXT/usHbQ2mb9IW54WPcJOl4
	 +EYH9MeOnhWkGADFYeGVIlAKF20SWKtVIK9Np6GIvgBQvq8ZJnR+VWE5bvRFvfJSHg
	 44oc2D6Om7QWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4BC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627023369.21493.14542395179605815988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b72199a364dcb59df5f9cdeb1e3908655f75d52467e892df341ab6f6731693
Date: Sun, 09 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786270233
