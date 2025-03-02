Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523C27E110
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740922734; cv=none; b=C6c+Zg7548VaQIpmawMr7fEcCxVeaI6rAhKyinjlKG/EbZXuvLr+Rxw0EMsl6jQshYMAccmGmqoUAb6T+m3le419xlB+hKXWVkSal3gsY8NbL1jo9ArhNxlxUdFJQBXEu9yhsCZ2iKcxeez9Pfm/Ggl9gvN7BuoevbNuniLgmDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740922734; c=relaxed/simple;
	bh=+1aDoRRhoJ3k85aUwc2zQuczv+EieJB3BrsKIl6E5JM=;
	h=To:Subject:From:Message-Id:Date; b=mtVCgV5oISPtgYO0Fryqu74uk618d6tPL/JWRGYUW5+RTwDnHvCKjIUv0yd5PtldszoHBPamdk7r4YDfhcytvftOjvVTQjWpKZ5Mn2++I2PZNKrnGL9ayc68lb63ypLcXYBT9ZpW1Irk/04oCAsFbc57fNS8hhEyjhbLmdXq7og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbaR0ra/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbaR0ra/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EE1C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740922733;
	bh=+1aDoRRhoJ3k85aUwc2zQuczv+EieJB3BrsKIl6E5JM=;
	h=To:Subject:From:Date:From;
	b=MbaR0ra/yyvWubse1vQNIY0FfJm11cq7QzLlCvwMzDo/n6dxUM6y4VJ/3pZOac4G9
	 My5cFOwXtr9xl6YxGICCNxEQSzFyMW4yS2UHaq+JhTvVP/8JqqpzTWMWraSAufehx2
	 m8ZVFaFV0VnuksmZcRmq5JWwES5agQLXBvzsIMpuzhgoTo5AuYfM4NJyOEUXjQ5Z4T
	 rI39lPcqxDmvrDVTIedJhrtQK5cuL6doCHUr6f3oy6H9mjhYuZSvGH3/4cUkX52bBu
	 TGd+tEr2K/Re0Ux2naY2TbVKblsR7gaDwpuCEunSXIkU/B7DRloDCLyRh2Q47rBMHq
	 uJ/s3KUCM5Sbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC105C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092273363.336.15756749366402389232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7414b63ac5e65775a75eeb11e79137d3f1fc7cc19fdfe82ad8c489e08b010b14
Date: Sun, 02 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740922733
