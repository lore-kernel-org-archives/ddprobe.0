Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E953803E8
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775169934; cv=none; b=a2ariL9i2gaJ4Gv149d1qIjdSJqGurlcNazWNp19GLbHXmRvXVQq0q1fmGcSmAwiC8qdjBx/i2JF6qE3LOagebNZmZCeLN52zcehZTQKAk3s7TNRyTUnXA0nCRzegN6tFMaWxg+c8STmAX+atdNBXyFog2rfvXBSxra3Hx0EFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775169934; c=relaxed/simple;
	bh=mPJYtxG6njdoEw4mSStTWYkUNG/ykfO7KQWidr74fbc=;
	h=To:Subject:From:Message-Id:Date; b=LIJkEh5D00GE7EvqTl6WZLkdxhDdMVaDLobx4dIsThzI7mLOPX+Y4u3UljIvo/1eJDh+AlliEdgkcEIoSl9fazsW6hnhpekvLZSyE5apphqFHzWcMd0GCuI7NeHTCqeYArDvtZOxqNDpTYIaivbVJmSfDNX7ZpEB0hHZXaO3C6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlof3LP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlof3LP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF343C19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775169933;
	bh=mPJYtxG6njdoEw4mSStTWYkUNG/ykfO7KQWidr74fbc=;
	h=To:Subject:From:Date:From;
	b=nlof3LP7a/6voBeK1bUPQACjv+oqvp/8/Aoa+TPBWkXz0yAi1e7VSyUYoTsK7RbMG
	 AStKHCrJCsF32/V3RGTF78QUE/gvOQTCWXDewRh1zb1OhtmskHcrJV8ejbP4GpedUU
	 hjQEXuv/HlDlhsPekH9gEU+GY7cwsT95I+cihLG4UaDLu7YkxP2DJgHrO6Y7eyJ5C9
	 YxVk9/p4RyN2MmwVytVvaHgL3jmwA645VxKGd7IBcIA71fzjl5iK6klvS9EAEUVP4B
	 vv4XmCeoXHNyYoBsW2/XpP3k55Y884fse/yUHK48VnRKzyAokOpMurv4C4/uYEXvlo
	 kZHC6xInKk5Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD69D6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516993368.30413.8832289449176659586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38681e2c871043b12a1dbdab42b9881c88841a7c3770852097ed405dac5b2693
Date: Thu, 02 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775169933
