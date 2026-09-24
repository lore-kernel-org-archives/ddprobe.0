Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068D3403E3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790269234; cv=none; b=dn7HeHavN7sFWPLB/M1g6jV5v8PKJxU6VmRZhwglAJuW5VUdumD6B6oh/VSs/gSYbGxqc+rqUbNmrREoPmboCRAa7/XxOcLe6NWaARHOlOK79uJT92KYxY5BZfI9ZXQxdR7L5u2ZYVvhZvnA8zOvDF+T+Jpjg7rZDeyhzSHvAkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790269234; c=relaxed/simple;
	bh=2aZQKUyWTwrILE2+Zq1iQ23g+pXkyqDHUYiPh/0zdnA=;
	h=To:Subject:From:Message-Id:Date; b=RsqHJBRH5LWqcRaUnJN+8Y3wkkcxrx1vDLow+IJo42nebzN4muu9moi6ogTGj1nxbVSvd8IUA7PgzPOkiQJUcEqFRxnYZaXix1QOTvyI9TklbnTFkS0LZrROb/rhxeqWvC1bk9iwstRBUfI8Cjp/67vYFAX0R6wTWzcoHPNJqN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otWZBn5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otWZBn5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAA9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790269233;
	bh=2aZQKUyWTwrILE2+Zq1iQ23g+pXkyqDHUYiPh/0zdnA=;
	h=To:Subject:From:Date:From;
	b=otWZBn5N7rPU9vLkitF+h8jhw+XA56lSh0V3RV8D6lmR4GeVOJx7KDQoH89j/6Gxt
	 xD8cIVNsJXf5OVzcwdsEH50CFXZcyJhILW3fkcUx8S5RGFxg9mWLpCzk/3WvPrEuKB
	 wuVEttY7LVjDlw+5n6WmpryFaVrN/s8Ml5XBf4VZDa+bwDrMSMVffHb2ibF1pcrFmT
	 8NC1UZlvwETnCV9C2ZyvDOpzWXb5G7A20bh3/JaHO48JeVVFhMPbzWE4mpbmFCQXsG
	 lzVnA0//RMhvhQ0pZxMIeLTYBt+8hr8nJqoVTPKxyQ+dDovRBPHHG7cngRrJArQDAE
	 MhTHGcu2+9c4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B393FC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026923372.31128.9551357826159452734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67471a6de4a0a3825d5e211dcf97b0a1bc96034b67d118f92b7247aaae3247cb
Date: Thu, 24 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790269233
