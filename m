Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCAECA5A
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748480994; cv=none; b=thHTxJtdJIl0A3HtOnrGSiITGY2Btn33EECfz7DzVMvaZ2YQGJLMFYkxk4BdG3niCnpRTv65PhV9urf7xu8ZxQmOiwYPAGtp1pHO/iUwdIIg2lAhvfYkNcnuabdZ4W1jIzPEV4Y3kHothTBQJdrCyW7BvwjSf2pu0YDOvaW89HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748480994; c=relaxed/simple;
	bh=tumq9ZmXH6hU/g5LkuSqCblcS2xLzHTdY/GeknhQfkI=;
	h=To:Subject:From:Message-Id:Date; b=GEJz+Q5HIHO06Q5+t0JDBBQxqBkAquZA+ht4rMx0Eozs3GnC1IX51ksDLradYFMRQPC7qvF/E/1yEcd14fQg0JRtxHUMLeKZTjxVHY7HBk3PjZmVMYojJ110whWmpK4BPK46jDhGn/qwitqBEAD2ZCpPjBSs6g7Bjco8eXAL92c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUDuxaMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUDuxaMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748480993;
	bh=tumq9ZmXH6hU/g5LkuSqCblcS2xLzHTdY/GeknhQfkI=;
	h=To:Subject:From:Date:From;
	b=RUDuxaMssBcZ9uguYmHHR/558BPv6i3HtPF1lvQpD8B7+iZ42f1QTPDOYFBvg/d11
	 3UZqyQAhwm5sjwJbtak266BBzw7NHrzi1ijznz/3UCSuu8JzrK0XZaQLZocUofzqXJ
	 CFbagxyHMHYrMBQN1a3JXMbC3H+uRHvCOGOeqn2iygojWVeZpXdHuD8xrxNS56WQiz
	 WW58YgD+lNaOATHr/UH32vw80ZcKwCcrzy7DWuvZS/e0ku34ONWq4R9EHdelzJ9+Bh
	 RJqkRe2RV3+k9l4CfQHQ77fCir9FMhPZiebb6gY3ACjp6ctHUqMCyHFub/l6Pgd3/M
	 hRveVPqUah8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC69C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848099357.688.482096832418722223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24a80e6c5b61b6b3493978dbbd527254ecbe38637506a26a9f662cbcde7a439
Date: Thu, 29 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748480993
