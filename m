Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF74414
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745563794; cv=none; b=VbP36NsE2vwIFp5OP9+ZNxFX+o1/T+WKl8EZ7MHmTowdbHoyjKH8qJG9BeFt3i020Z+qb+TdIWlYg1b58NxVvOKn/fYIQc9JgTA4F471qkMGxb0/tDHjUiypd3XLOY/iUPOqVotDtCttvHRySIzk4dRQ8yUhNxfcnSsCJik7fGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745563794; c=relaxed/simple;
	bh=e/18xVffECa4yTruJqMh4M3YpaokqeXTPHAEsjY/Y1I=;
	h=To:Subject:From:Message-Id:Date; b=J93ikxXB7ZAGdEDY9K/TCuoVg3T4Jwss/IFdM+pLs5PkQaBvyIl8FmkAAOGPb3mWCBJJr/wvb0dcbRadMGTUaHm1XqjN2r7sN+q6KFeFNcDGqvkFywmeuGiHM8Df/UDiDYSWKpWF2f41ScsFA6mJ9kkiLsSc9UUqgNye+VoQ9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTrKFR7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTrKFR7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC18C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745563793;
	bh=e/18xVffECa4yTruJqMh4M3YpaokqeXTPHAEsjY/Y1I=;
	h=To:Subject:From:Date:From;
	b=iTrKFR7gE73ahxLaFuWwh94jQqA/lBXV2lZSkEpmr4Lm0NKg+gNwjbF+T0h7LxwdN
	 MEFrO7c3e9oN+pmpbAFlnyNQyomarnnoPvCH3HUAqk2xJ6DwnkZ9WW6J8aEQSAUyED
	 cAsDBwUc5A3VvqQH7tNcwytWnUooSetT9ORG6E/5+ej7vqaK5Lvf5WqhnjewdQUIi1
	 Vzx2ehKAcv92VsamGrLtq8ZZCeLFS+ULXTBWnGLw8lJQSfyKQV3d+V/etU6RLAK1ou
	 IbdrnpjXTwdei8UQxgQzYFgUN45elZ+idMZsvXgwb4rF8PvKzH0bscKH7n4231CyYG
	 iA5HHNp7MrNyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E483C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556379357.6211.12318726944999381187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba3db5bbd4d7a6f0126103171ad70a4f1248a65ddeb498a9dbbe8c8874bb70c
Date: Fri, 25 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745563793
