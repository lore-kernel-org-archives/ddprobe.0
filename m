Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A8B1E5034
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725477954; cv=none; b=nDgv+0Bwuw48YSTbKCfPZCGxDD7daCPRIKxmqgwA1omAfvufe4WoVC98HTpyr7G4AYkjFWQXVPIzlOCROZ5FqniYGHLssgd4lO1d4rLuUUB+uvRWMjk7XhfR79qGDOguKVGE7wrEQpqDESzVwU/sYPsZSsvNazXBVLSPrhoNT0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725477954; c=relaxed/simple;
	bh=jBpC6JnkE32iLM0raG9bbNIZqqWKSoj86u5QvPKr5iw=;
	h=To:Subject:From:Message-Id:Date; b=qBxFrrI0QUlPCJy6p0IegzXR37aYgeqHe0eUU1iDVO8EG7CLhb2VMjqSCcZIBHD1ueofnhCeowQk4TZhl9iW9h+WRyTq2I9CrCDL56U0vJ+StAmu5di+GKJSmJjCGKayiBoTKEyoJErOP2pLKFOnsUzRKR60R7n8Z+Xtxi8DIyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGPj3NqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGPj3NqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E36C4CECA
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725477953;
	bh=jBpC6JnkE32iLM0raG9bbNIZqqWKSoj86u5QvPKr5iw=;
	h=To:Subject:From:Date:From;
	b=dGPj3NqSR624BJoc6T6ltMXyQSxcaqOQDMdLer6zihC8GYsiFL3ySFM2Q0pGMYuWc
	 QUSVppADTZrzSVNPhna+Fskb4VFL6U+xgPDRWfMvtxZlaLFhsIDDH2fnqLoZ9aMB7S
	 bLAkZqfboMGtIM9j/aDVMyHQNHVddzbg5RoHO9HplfAJZFdU6rEzSHCnlMxoj9D9KA
	 WTcKKflSvN9j5txNC2h5Ewt7xwqkZXxzRDMFQMtm/982gzkuGSlEom7Ka9oCUacr8g
	 cpUxjpOUgvxzsySYkvtfEhn8a1IkSGai6BJ8Uo76FWvnip2JziRdiN2nCeOFev1Muy
	 xK9Hwjj9aUO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1442CD4F23
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547795361.26470.5926195646914807264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1652c13f3b4c710b73bdad9d9cd3ca180cbc2c83821459409fe6bad8678ab9
Date: Wed, 04 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725477953
