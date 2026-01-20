Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A10243DA58
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768945434; cv=none; b=Qkq1IndipYdzEYE0aiSDbKHvwA42htvJ11lG/0CkbXLTz04/s1XDQsDmei8FboISQ9rAJfCr6JMA7V1Bt6XCk2GwS0npZHMPfgPeFn3rbkuczJCFdhHL8JPGicjjLo2mbLQXpMwzNucXWmqHZmod8uOygvDaL8Slbe0xEHG729o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768945434; c=relaxed/simple;
	bh=X3pNfuaDEaFlrs/5FNWzzDgSjxW9Xk3IuSuZpOTaNsw=;
	h=To:Subject:From:Message-Id:Date; b=ZpD+AC+pXUZz+wIoPALJ0Xi7afKsIEqndROGACSDMMOVCpjJlZLpcTDfhX+mg6SxoqZCieV2ROS++wtyj74NtY7ubhr8qpc9Wp1EWAExrZjK3gh8REhp1KF/aBXsW3HvMw1kWVaLKLC9ZoMJN0yKdFuqxx95U4vlezitSsK9/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJT/ntvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJT/ntvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE6C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768945433;
	bh=X3pNfuaDEaFlrs/5FNWzzDgSjxW9Xk3IuSuZpOTaNsw=;
	h=To:Subject:From:Date:From;
	b=aJT/ntvuQDENZDWMdfcJ88BXdHbo9dw/sKQgA1mIkpOGgw5jdgEeAozffECz/Bs05
	 t+/FUn/cdiRSU3GiiFMPNOLG0pygkVajIiiYN8oxBj5eZdXNV8dPQCQH6K16At2XTW
	 lAIrOKirS4lqYXeSDNWKBkQ4gWQg4tWqpenIih2o+NzpqYK2Mkj7xsxLzIhWWNmRLe
	 zkdZqdEFBP4Can3ohSYFODVO8uV6D4+eGWUbmP7mkkQaMtWlQD51BJHl4zVayP1S7e
	 8xPLOL2Q8ufeOcs5p+p0p9t63gDzKFAK3I/cIeBbLHVn3JosaPfq5U3huwew/HCL6U
	 iVmvvRtGCgfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363ED262A7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894543357.22543.4743877967967825576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64815b974839c3bbc3eef78f615bf3e81d11da7844d879611b04455793644d3e
Date: Tue, 20 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768945433
