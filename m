Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38233B6F7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765928634; cv=none; b=n/emT+IlU5YqscRp7eFzV8kBn+SRJ62ZTyljI1zaodJ8hJPhRCMiC2XhxPNPOHwIQKnCSO4CXo84hN1IXxsMRG1AZQpuPEFNim+5tLtZTGMHrSZ71bogI7mDQOo0pQHGBaWu4qYcdW9DQV2RYOqTvAREehgsnXApKIs52mq9F6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765928634; c=relaxed/simple;
	bh=7INiZn8HTKh0Xj8b3uo4+ugfpAPsIRinvJhhn6V9Tlc=;
	h=To:Subject:From:Message-Id:Date; b=VBaM3WxbGnqbJWfdlLI2iag9bx2A+CxERwWepI5/e6xgFIDM9xJykI64L9lBRH2bWDu9K5b4bVSYYBRomiesOmZm4Sy86a/tFRGqQxnZSEXbyKKbF7pepTvAgMuOnM5ZcI/nPU64sGoBYYtdIZT/9ytgzQMDS8cSZyXgyoJTGGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3LErwuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3LErwuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EC6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765928633;
	bh=7INiZn8HTKh0Xj8b3uo4+ugfpAPsIRinvJhhn6V9Tlc=;
	h=To:Subject:From:Date:From;
	b=F3LErwuQ7hrSqmCxcFfNqqzrW2grzugE7P3QiRfnHVd20eBtyokpw8bdOJ7uV4OJI
	 64ognBPn7tM6uNuj5jphT33bHhx6nkCgmg2rqFZS8wSBAtz4vQJhJRGjPm7yCMJ/FM
	 RAPd1zhUr4D3XGUpZyoJryLNLUxRcpnlelvK17LRN41vfVAqgg6Od0MB9a7zPRa35Z
	 biXiJbVwbzhDzGvzinF4FoztiswbaB+E+xB8qLgsBJ9RKa1UTG8P/KogVRDaJMiIrT
	 cwGXzxsA/j/oNZBQqOOqvoofNk0qPvyVLV9q7vnGQwqi+DF81Ya0yZMzbSxC92p855
	 0jDoFPtTryayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB6D637DF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592863358.10665.9166336980715597555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b258595be69f6fbf842e7356718d34e5d678787eef7449ae097d7437e64989
Date: Tue, 16 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765928633
