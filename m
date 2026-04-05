Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39088C2FF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775402134; cv=none; b=egmbZt60IUVzivejhMZlJktq+de3SmbD0cq8yrNjGi2hdCQST0rBi7omWDW+pT9Mieda849U/Vj/Cc0LwCJInnyjs6nHTsY94J/A3Fk1ZyajqLVXeu9p7ZLVnMXAItreV/GyIVcnnhv3t4cKJ3CVVcM8zJWxTvx3VB1LbZCAFNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775402134; c=relaxed/simple;
	bh=vCI7/GGqAHZwYyFLhlAd9XfzLMWnuVZZuldcDiV8LSA=;
	h=To:Subject:From:Message-Id:Date; b=eFv9bU5PZrtEgvenuZsBSfOCeUu7iYrjxXy9Et5yyby0jjfof1gVi7OGy+ByCogHXA9pvGpXnV9eAvRYbug7DX14IyLAvKBEcxYvIbahBj+C0CjlZJkYuFUuKYLMDW2enCMT6BCZpHzu17J4T52PQtw9qf77Eqf+I/9hn4QEljk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv6tG9ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv6tG9ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59EFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775402133;
	bh=vCI7/GGqAHZwYyFLhlAd9XfzLMWnuVZZuldcDiV8LSA=;
	h=To:Subject:From:Date:From;
	b=Vv6tG9kiub/7zfyVy/Zo7MAn2Ql7u7zzCa/AMP5WXf8zyj1Zz2yqbqSkPZFd4j/2j
	 8am2B9JLqA/rx2JaTopTZRFE6H/kp/yVXxsYFnZpkUKalNsJXbRy+VavctuZnZX8ao
	 cbUa1A4d7O4MnoEKxELMXkuGqZzFaqlUAWL1PgHsFcLCbIey9ypZlK4iXn0jmIXPjm
	 YKoc7spVx6iFmVZKaDHBVzw01diRSQNLIcvFwlsSdmW0htuz+7pg8klqUu3Um41klT
	 26VHA5AtYFYHRl/yNuEm8mYxWFIGVSd32g4h6SYirh929OFL0UHK4S2SXFQWBjIWfv
	 rImzb5rLfqDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF5FE9D804
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540213374.30341.12621130967107629108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aee4e52209ac51b7bc3acc851c44e25bad8455431f56a47e87b5f0649dd51f5
Date: Sun, 05 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775402133
