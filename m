Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A158495E5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766711034; cv=none; b=adn7AlH3P8aB1/0xiqL4wXrmXQuOvUi5ByzcsCexjuYJST3JzgC5ZoFbm8gti2RkzvQGqYn9GkG4ayGsNruy73JYh2WtSn7DWHM5/3vzlLQihYvmKy9Bu5TfbJWoFruqta/xePYZ4024fDGBLwVpxUnl56du3sjZhaReQOrTGEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766711034; c=relaxed/simple;
	bh=EZg9h/35P56MmL4KYnxpjbttQ2xDxRDcqWGKBzkY9ho=;
	h=To:Subject:From:Message-Id:Date; b=Ue00+/wyc0G60/p/bTfMM2Lfd44fH35EYE+a1mXPLkuR7dfoL5jpWseyklO+QKDG22BQoKB+BbhM4cMp5uQgpzeO7+hfNjiAfsQoaaPkLpebORnW2QzMgVlAXfP16NrvcsLtsDr+Bhl9AL3bLb6cgL7kzGsfuZSwzbiIan/vAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTP66Mtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTP66Mtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A853EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766711033;
	bh=EZg9h/35P56MmL4KYnxpjbttQ2xDxRDcqWGKBzkY9ho=;
	h=To:Subject:From:Date:From;
	b=qTP66MtpUw8czrwuwmBQq2hW2VdOq2ByJ/AKDDMQZ69sv1KTK3N/r/hpBTUlyM2wW
	 +iLfu9npiVIX2fPrLuZXXitc8yt81ERp3A3ztk6ovt+EL1QJfWRm5Wc+LVN+8md4J3
	 73PpoeXTocIismRv7e1n0xfW8a7cYQ3W7BN5Zm21pS0H55IbxoHHAjbOY1a/fK7MoY
	 sJ8XgtMF6ZbZqROmK46RThO7D/CXskfMNbQCz9lyxiO5l+G/tLrYay84I8WJLj8fXE
	 vx7g5kY+B/fYIjS9BvMciehw8IGGWF9AJutamZjSFqwuC7Su7pZ/H3wEpVToDAb/Bu
	 GDZtGvDovRSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93858E7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671103358.28962.4031916725523239389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e478447b6acd70760b01b955c0c8b394a0a4c6d041933c2646327c238e74d78
Date: Fri, 26 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766711033
