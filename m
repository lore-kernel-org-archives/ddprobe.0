Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183742848A7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762495194; cv=none; b=lVwZralu2K0COOzN1Ut4YQQJAtLyklr9Ynnwo+GbXCcVJ+sUwZEVNBGs++BCpTNuTz5hNIuDHtDUtoV+gYcW/9dj+5I8n7eiiSVyjl85KZYgZj6zN14JQa0uFTj0+uu3xRGvW3GufW7acvrMi1DrGht7LvAQ6kjglyYbnpIYz6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762495194; c=relaxed/simple;
	bh=vi1O0crGdPFTBNldlfm39uMRb6OiXYQ1U4+RYP1ZQEg=;
	h=To:Subject:From:Message-Id:Date; b=mPCDwsWWtjPiFZncXENPmBJEZQhTxyqjtyNlFadqxzscDWLRyEfjUUNBlm07M6PwCZE9lZiwYPasN0Uv8+TuVh60swzgZrOGkcUVsOtL9aXNa2SoTvnKxjWJBaiLR+XgaOaoWZUb7zR0APOFOBlXugP8r6TfL3H3MSaMMKQ46UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbTe/DTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbTe/DTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDAFC116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762495193;
	bh=vi1O0crGdPFTBNldlfm39uMRb6OiXYQ1U4+RYP1ZQEg=;
	h=To:Subject:From:Date:From;
	b=EbTe/DTvtleOBOjPySK3l+kYRmHkXR4tGvMIDF6b+WazIjYGkL+0mbT6dbBruPONE
	 hMzrU3thbzSUrD8vVZPQipPb89jg1iUYEKhxYHAmb/weO17Xm1U6ky+hfA7pk92bwx
	 piZYfO2gDNCDubDObilgz6vpOzPsC5amKuPzIOsiDqcfPJ8ppXf7LL5hHUpHcQsSGp
	 5NgPkygndnhCQyhSURXNXAYvJRkQnqhUtZn2n9pCEiKiYym8zHAJ8++iefy3iRQXzv
	 1d9pltEIw1GQxHwgYYoTCecz66xDOY6+R6DkphHjXPrBZsJ97oBGy4gCRCboqj8ulN
	 lGv3hg/8RIQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FDCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249519357.29925.17798688721970929664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d42039e15e8349224ae8a3f8b9c5d9b4a10ee4997a245ccb5ca4a2bae3e58f0
Date: Fri, 07 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762495193
