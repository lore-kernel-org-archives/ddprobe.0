Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0C332F74F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205034; cv=none; b=q+uvyEiI6xeKZM/0AMh9wsN+HOJlQNRHJTA8pq0lxJz/NYMtJXYSEXe680A/P+8HbmyQGFWOw3Mk79MHe0iKn6VAG4Xb5HJ5Vd7/upPYZiYFMXB87mDHtG9GqRGol2DOQwMndS4yWxQqGdldC6k7ZDanMd3AijOwkFeZrOn9amk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205034; c=relaxed/simple;
	bh=+clvvhzwndqUVim1GgvGXlGbGcEqewAMBayRHVa5LuU=;
	h=To:Subject:From:Message-Id:Date; b=a5J8Ey5eq3IZOETq1swVOApKUwYHI8IMcW6QNoa8xGRNHh8SResGgCfB4GB7Y8A8PpxZiCiOXl/HJAIzX3ghbXMOH4kvn6VM0qQMCgwPg1/ejAu5SK1m+57x6yWphdeX7C9Vhx2W4FaAL6HGOM1Hw0ijEd7JUnPrsC3l8tDE2v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDvr6EqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDvr6EqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9F8C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768205033;
	bh=+clvvhzwndqUVim1GgvGXlGbGcEqewAMBayRHVa5LuU=;
	h=To:Subject:From:Date:From;
	b=EDvr6EqE8+ZqOmXly99Yf6uOzalp+z5JIhtGXss8Z39oNb5dhwd/4OvxFLSwDj7mG
	 0T0Ohvyu8ZkoNJQyKV9iOetS1/7nhbuQbbRNbuxW5oqApv+WwvUnfNBR/rAzvTuv1l
	 OYuqApYynFKeqmc0I/2LPpxFN+ocmhJGk+y6b0wKXi0gojtRkPE6YOhSbx3xip4yNC
	 nDu6RRi71XX9mQcz+mZK2Jh4CHoWqtA/VcTgUGe/1VZ5a8fkcpUy1DMyJVgNqCGJxq
	 3PqXvuHaBSHe4wXP4NDW+ks0rgmIGwenthxyq3EUP+vpb1GW9na1ipX6gXK9EAkU8D
	 VJEYVJvREaVqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F393D25043
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820503357.12907.9772553868415004917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab08be9d8ae1fb600994ce142599281f67e5fb807788f3f26a7fb651e6d3e3a
Date: Mon, 12 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768205033
