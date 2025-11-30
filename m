Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3928F220F2A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764502974; cv=none; b=jDnjRm5vEX47UIRf5o2vjU2y3d7kIWIbikdvvWWcR8n2JvYYU2sfDLwKF/TQoIDA+KFbZV11nMYdNIAp7CmSWIaLdxFYZOJcxrOtnxwncosI+hOytofy1Paag5Fu38ONOw9nDGZuE2ApWrhXpwC8MvSF9+TviCN4Gt8sfNFYBNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764502974; c=relaxed/simple;
	bh=bNk33v/axTzFBkMyjjeXKzw32zqxMksF7eETueXbC+w=;
	h=To:Subject:From:Message-Id:Date; b=FFDICgO7dAOq2TYM6+0VJ89ZOOlDO0lgxqwq+YWHvjU5CFm3Xe28xuaxJEm/SZEKS+S/RwLDZiwSliQg++dcCasDmVThWJbINSwDmr/WzLDvJZf7oiy2vxcljfY+3isYk5cgrMIq2md+w7vvCZEJDUI1500kp9bqJ9c/DLF1GE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU2WAjlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU2WAjlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F93C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764502973;
	bh=bNk33v/axTzFBkMyjjeXKzw32zqxMksF7eETueXbC+w=;
	h=To:Subject:From:Date:From;
	b=nU2WAjlmtpR0YMjkPFZrz1FC4yPphoQZGfsJBzZ2PuCEkkOfanzXMZ5KLU+D9q9FB
	 VEumtQtplWSMLPj9TZL9sCrxCBSA0kQAmqMtnMKfqdUBRDeDy2nd3kFqZ9NkU5AtlO
	 UXix22qmmhDL9QU3yjWcZqd1kYLWTAbJZ7EDk1IBKD7EM7TgoUeIQ47PuMruGDuCNX
	 mYbLNb1pmwRyUAps7ZZ6oI6Q7xJHnRpsSS4BNX8BrJD1GfLFeTvEy03OnjWkNxq+53
	 v5NmyQoTE6ibBRQk8M3M0BItEaULLEAtecESpak84EdYuJTruXLl3Mytsh6mrHmi+R
	 Esk7y7wSVjqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E3ECFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450297360.20657.2729966384607858178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7baac9cc75635c4233ba1526032716db0eb84059fd12dbf8323ea386a54613f2
Date: Sun, 30 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764502973
