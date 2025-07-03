Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B12E3B07
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751540394; cv=none; b=eCHObwqm/ntVktFZGZr9fl6uSB1cC9rV2I7JcLTPlcAF2i0dHhFZvckyKZoD9/9yyPo7krbUiQIrEdXPbLKljX7/vvXEmjGtcdv0cOshn78JdprMo1dklURSGWDrfsEShsi9wFOuZDO2fjPDTdTvMoJlo+1aRIsJyQHQhDNJyik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751540394; c=relaxed/simple;
	bh=rtfoBJWZHpRtZ2+t8schYyozd584LVYodgbGQ4Bah88=;
	h=To:Subject:From:Message-Id:Date; b=FkwIuoCRbQnxV9OgAsELOkBijMbdZ+zSImnlXzAdV4ulYFuqQGIVRAdDq+Ci8SulSJqVr7ueAwJbSbNacN8UByq/K8/3pRn50X4PlZfATbmv4N8bLpOadBOuOdIbU1YPDZgp41mvJptSQzyw326VsvYwnOcINjB2O8qLiEEAW4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRvSvRq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRvSvRq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E242C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751540393;
	bh=rtfoBJWZHpRtZ2+t8schYyozd584LVYodgbGQ4Bah88=;
	h=To:Subject:From:Date:From;
	b=nRvSvRq0vILmRRsDhHyL/naLqpLgFunSENGVDf0M6GN8wc4kLA1XXl2M9OX9AWDd3
	 1oqHKNcAz7LxIsX70zGDiYbuwLAMILA2Web98SVhm8iGMjkZg5d9Z0zU6Bj755V1Ro
	 zzn5VnmzwsjHjacFqS33nt7+g1A5/2tA1bP/FGTkKS61OiBYv8QTjkN4Im7xmYY6LI
	 afmwENk8nw4Qs9YmP2kJzqFZXffZ4cUpeddSHsfcfgt2/3zvx67KlO5DFjBUeNfTGO
	 OEorCxpS8O9+YZ/BbVBIgE2R1JlLwsvxmlOVIwL6C26gsVjHNQhfZelhyzEsqRoSfN
	 nttTf/j5vMYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DAC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154039357.5109.18225265568060404253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377b92c56135d62eb3241ec124c06e6d8757243c277b779a2407c2104650cd48
Date: Thu, 03 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751540393
