Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B5F4BB262
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790275835; cv=none; b=QckYHCq73O6g7P/TeD5JIZjG4derUKHI0FDcNMfMfRfERqxDWszQGJvCzAWflE1NsMjUcKmfzpW0kl8yXYDXYtw9bZRCSzKHiIevt7HxyfCU0trCS0PfaGcFR8a+8qa3sw8ycVbvE1CJvmGOJc70p+Esnibd1oVJF2YYvU7nm3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790275835; c=relaxed/simple;
	bh=2QpmmceUQMKAVJPfteJBlnbxPjI7ukDr2XEPAlb5fYA=;
	h=To:Subject:From:Message-Id:Date; b=OCcwoKK15TIJwjdlS/lxHW7bC3GjmB+UrK+HcBU3cDFRFg4ymJk1b4+X0PBt45IhsRLDHPADk8vqgFQzEFX5C3w/p/zZaej6lKVNIK8FISUNsYb6zlKesHjcUogRJX4DNuvr54Y+ctSHtlNEpdnST6U2+ZVDfonSX0O8Hbrh5kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBfSYUF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBfSYUF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2A2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790275833;
	bh=2QpmmceUQMKAVJPfteJBlnbxPjI7ukDr2XEPAlb5fYA=;
	h=To:Subject:From:Date:From;
	b=oBfSYUF25xGCHRgdziaLMEaCLH63GD/0Fv31/1TjyxBZs8mXitlbHD11MqYFDPBpp
	 6SZFV0ClH6+yTEbD0d6jGJ9ZbUZYGJ87zelui1W9RIfy7ewfHy4uZbuXG0TA4LNFxZ
	 8mLmioYluu0WfIdCdiZ2zJ4UUt01cuNEWCZvLaENYwZqdApNZJLCYIsS4mb+Fok86Z
	 jDI1qQ7zmIVwqPzJkshcdrcabRc5mI8DCHqxsppsyxGtr9eWjumxfAEUAIq/P4zRJd
	 ZP8i30KbVHTw8rvlXNSBhwqeK6eD6cA06przcfshBzKvjocNK8a+/c3N+Qx67tzi2k
	 BjSoWtRiNQTpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C7C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027583370.19491.13120258780923316954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50ca21111a806cdfdd436cfbb1e73b26e6437f7578f20974d54c1ac8a8dc0d5
Date: Thu, 24 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790275833
