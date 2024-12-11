Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAB75661
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733897154; cv=none; b=r7ypahRW14cveYQwoC8iMrAC+zxVOF094eFuMCUiyH2umb4+P5i9pcEPSjRLvydLDSjCZ65gJ0/UjGkdcLucjcXFFWptL/FD2p4/HNb0A/g+MnftFT9EtPm/pz7M5s3l0nSke3b23j5x7bIe2IZYwElpTJuy0Y2NmxOiLzn5uH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733897154; c=relaxed/simple;
	bh=TraApbluQswbqqTrSFx+ix17IRCHEMB5ctw4a8PLm9M=;
	h=To:Subject:From:Message-Id:Date; b=JV3iipgkqZRpKjBp7F51e1a1IGjVQv8s798i5CLX81rbsu8bO97tKvjK9fACEpAFUeAYlPv4xYZTl9jGbakqvzsi5QwZyoE1jxFA1kcqVLrdyqRhwNDJ21pA+viPbWZUW9PjeA50BtK49fRW4XV6GqSiVgX7ssO4qoqIYZ0Yyu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5W8CzAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5W8CzAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7857C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733897153;
	bh=TraApbluQswbqqTrSFx+ix17IRCHEMB5ctw4a8PLm9M=;
	h=To:Subject:From:Date:From;
	b=L5W8CzAADWhCB+rp/3z13+6ISKv4ealwUA/9GrFmJJi7pTWou5gI98THmAXkREj0q
	 IWbdfuMz+uZmB0KfiJG3wdT/XSanL2rxL5IduE2CrCk04lBLpBpNGPGed9yzAt7mzl
	 2uuvWTQaQGtY0wG+KAiyvmNy3C4uBE4gQQ/OnexT9L8UgMHMj88fAf9+UoAwTJwsY7
	 QxvtmDXD/k+WOw5tDsrCDmnV3QPijkp1gwIqq3aFI91pfilbUHE6F7kNEngxbRNw79
	 0hjAAYkweEUTOsE51r48cqL70pq7OzmFK6viFX1X6WF4kAoS2N6Y7t18+KqzX5qZjT
	 pBjj6/jwGSsKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E9E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389715359.18686.8157153839782491985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274ca2a30796f322bdb9e419cbc6d65058940e166233a4fbcade82f757567bc3
Date: Wed, 11 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733897153
