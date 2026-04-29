Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17884381AE3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777487254; cv=none; b=Q/C4AmXQbVeabI4Q104D4FyQPCR0pAXM0LI+z7TZnpg5HaYa73BJBzFCQ4n+WNXTajApF7GM8uYhKCZ7VsXeb2tFQ/1Ixt+Jr5v1KOWjHaxMAL+h10pq8dWjAruFqe2yEdH07BlHLrIi9Poi/U7XkUUMyPGGGmfB0snhQXC3cBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777487254; c=relaxed/simple;
	bh=sC9BTKJmSaHzZkyk1Rjz68L/cEpFax9t/hIAE9VxJL8=;
	h=To:Subject:From:Message-Id:Date; b=Xdwf3xgLUqLWjvlvBkWNgo1qtT0mt2zqgRsjivIaRRlkgb9hvCZ39aT8QEB51Z1m0idwOBtf5z6vrlvAQjOy4vyU9ehh7gAQlqrxzhhkWvLZ5KlrfCoMm93AhHMk30HzkDdnkbq4bHvhy+rouSDfR7Bs4DzOV6oZNpZm02IyxS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYBPcUgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYBPcUgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AACC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777487253;
	bh=sC9BTKJmSaHzZkyk1Rjz68L/cEpFax9t/hIAE9VxJL8=;
	h=To:Subject:From:Date:From;
	b=HYBPcUgIoWVE6kNOtVpLEzOq++iX1uq1cnBWYoicDZwDx59dCdfv8ZvM4KGP3cbhz
	 06hobAzQWrXfpp+MYwgORp1w+37yXV9KebUhqW3envr9/0CbjBKtF862ZstiwaGcDH
	 Ab5o6C/Iey3BddnnD3DQl29KdLX6nE9X5Y45r2C+m7kZQd0PQxO6Yg3FpJ+Qo7DuP9
	 kr8+4RefDwjL93Azf91gPCav9gYqyqfvFssphsKR1G4WOOJqNrOaiqBiUXnucMuHGy
	 iKvewU13zxx0NJPlwT1vzz+/bkOKJkp1AEaInHJ61OvbDGiuZYidV+5gFe9bJd9Kvi
	 fyalIBdvbwoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E05FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748725368.12614.216248519168359227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0597966733c0a6dc2809ebdf10e71cd6ccd4daee50c97d6036531529e13d1e4
Date: Wed, 29 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777487253
