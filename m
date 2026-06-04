Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDFB5B21A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780541074; cv=none; b=aNmIfleMqFNK8Cm6I79Bdtrex9u57lwO0wNXbqXk1zAS138jK+jf0pqyQCsPzwlOK602aiNpeOWhOtMVA99nkTx2wmwCWly8D82XQO5noeM6hPp3wA9ZIDYjvl3eEgVHjy3sQZ72WUVqgA6u4uv08eVhODQQsiARHG5XRP8KwQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780541074; c=relaxed/simple;
	bh=jmGoBP2sb5bNP9uNdI8noOoV54CC5eCexmJyO1XKzIc=;
	h=To:Subject:From:Message-Id:Date; b=Q9thu9ZI8gqbNTX4BqiymPVjBVdcNvvx+Gr4XCGdDdU3f4gcMsXXUh74VmxQbUWZtrt2W8QhspFPky2k619Yb/rpy0KAcy/3jAALj4X8AeEtAEweM3kIJOsR7t6Iwx09+MK02hhAwkek9ezNsac4PLbtjbgk6EUCYpNZOo4eoJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWwLsbWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWwLsbWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A84C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780541073;
	bh=jmGoBP2sb5bNP9uNdI8noOoV54CC5eCexmJyO1XKzIc=;
	h=To:Subject:From:Date:From;
	b=tWwLsbWSvSt3dnov0dI0cVWAV3gjMPEbkgks1XF+dXqlxmSbR5fBj2zit+jTCZPu3
	 POv7wutzv6ZFppu1aMgtcfh8R8yrpuaXX3u9gCYIlAmRxVfLt6TSsaBuyBW+OEp04W
	 nEwUIvNHzNMbFyJV/JU4Y3sKslFyzCzYkHMRLpKdE4k0vtC1hatSxh18PHN2Kqi+W/
	 xA1tMER0oY4yPUVURN2R+wpAGWXDpFi53F8QrfyxYPq3TRw4sqh0kTJX7KUpn2tcze
	 gZ8xH4FtpDGxBPQEStYgtHSQUW4AsoSswparp0grAK353YzKAQSqYDg2GM0RU3Lmyf
	 eHZZtvtGabrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A919CCD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054107368.1742.2426402493797272243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3eb19413e5d8bc840735eee9db9a734d2390fb3f2bb43bee9ceea4a449f49f8
Date: Thu, 04 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780541073
