Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310342A83
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743945594; cv=none; b=kHPUBV+L9CV006Vx/xQpgW/0MVpyCE69Vw1BLCbYufAyrO+VkHFd2wr56rtSoL3U77punZ2bbSEJRV9JcFKtFnxWU8pSbvqTkrLni1wlUs74zIWpyu5daG32UsaB2L4p8UaBHS8d2dvNcPXo9jj54SwUg4TjPZlF2T46woRrnsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743945594; c=relaxed/simple;
	bh=PEhYmb/yzMf+WrceP6TZbtpTQAzW1J+u84XI9bGollQ=;
	h=To:Subject:From:Message-Id:Date; b=k2SXgE+WcWqGaH9SmMUxUPyCZxVyHRJJoWGAOYFuhr6ijWBhRd7rGWbOVD7+3mzw3SJgFYoSQ2ntt+qsK7QaRUu2VM6stMZnjQLAQEN1px0Pdt4734z+fY0kjka729azfNBNeZLILokGlLgynFako4dZDyIjuaNP+Qx+rQyoask=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi4yuZGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi4yuZGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743945593;
	bh=PEhYmb/yzMf+WrceP6TZbtpTQAzW1J+u84XI9bGollQ=;
	h=To:Subject:From:Date:From;
	b=mi4yuZGMVyTvf+R/ZnBaTHyqcueqhShyGRx4bgYtUzxuiGc+8tgImUABki5AWY0YG
	 Ew4OWDerunf7r85qQcwv6696S4pDHGKE8NvIJfNengC04Od7oDEV/xhKACVmq6Zw8W
	 z/U5uRipOTp6ni8keFs2R5+wYmx5iFlAJ1sEbWG0MC9VC0TUWBcDwPlyS+OxoF1JRu
	 N044VRVf5dt0W6+J9vbvbFgVjsviWg9p9wsNDtO8HXkH4ByVwO3j/mScXBv8lZv7IO
	 eIHcHLCirMoWKfdvuCZpqfOBV9irhbo6B8d2L+fpeROwVFMDIaAx8mINirR3Wjd42Z
	 HXtlh6aJGhbPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C8AC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394559359.32231.10364451687405684027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d33a5516cfd1b2f43f37209f9f9928878bbd89dd46a169fb7901a08bfcb028
Date: Sun, 06 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743945593
