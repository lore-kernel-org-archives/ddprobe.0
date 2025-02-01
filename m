Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4366D149C51
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738431354; cv=none; b=c6hF01wkEL917l4DherulrBrJj2TiIq2nT15aaPrSwwQSYecqANYJAGMfWZqIoYEh+YaEuKERwZvY/OrXCfHNgCJgfS7hUggmzAXpOVxpHDFdnKe+VpH3Q/NX85zx9fi3KjuaR0p22nzVXA9ZxtBZwI0RO4nG8AY2kDS7VkLzYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738431354; c=relaxed/simple;
	bh=VU1zWQYb8a9Jv9tvkQ2oK0tYOXKzHbObKpk5b2WExKQ=;
	h=To:Subject:From:Message-Id:Date; b=aq13ysqJtM8hRLY5wIIT6c6A0DEt08iQgjbExQqZofpVuqCouMx6RZhnc4kMdM7LobulD/lNDSmcC1DcmrnazKpybuD3yGvtohclD88OXJwYFQkeKM7XecRRuLQTwRZ6bX9LzDTWsb6uypWOYGDUZ5l7TRC+yBX5+UPTFWbkwSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjq9TiWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjq9TiWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF202C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738431353;
	bh=VU1zWQYb8a9Jv9tvkQ2oK0tYOXKzHbObKpk5b2WExKQ=;
	h=To:Subject:From:Date:From;
	b=jjq9TiWskPTq1WgHqdm86hnaU6L4r6QrnDaq3zRb48DPGN5MP6+mVMzknVmufH0cR
	 LyySntqxuoLpQ8u8+xMThEA6Fvv56lbgwwWJD4dRnQj6dGNtLolafw0HTIEjyY9+Wz
	 UxMgSaYBk2Q9YzRr6UgcMfiVws12D4Y9Reu4V0dyKeTGVb+553RwrAGJsoUkG0FfxZ
	 6xqw+Nu1cAMPkltBpVT2vze0wb6OZ6kK50ZxTaLzCPlB9sXNHIjciCMdyXsxille9k
	 caLvvRg8fVq/lnlxP4EaSwjX9vcW7J8JvZ6rUnaGEz0S0kCxa1E6kG/YgAA5IYzRun
	 VRFUyysX9ha+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E667C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843135360.5584.16647628410008459172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2303a5387e08e8ca4477aa88b333ff792b767acf1524409e8a7a2fcac0521a18
Date: Sat, 01 Feb 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738431353
