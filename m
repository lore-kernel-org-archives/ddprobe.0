Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1202D37701C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437094; cv=none; b=au0UVIfk1lGbdMBjFXI/xfyqs1xSqIced9zfb4qBqtT4k3U3I3oqwqGCrQPlg0pzsBgWkwi6effmqwlxUuEdQRKeuRaEh/s48Yyqmj3i+Zw3GOTG8NgC3vglPfeZqUhdLAqizqEJ650XTCSocyOHg/jo5n0e1rWt8QmDeGcCfjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437094; c=relaxed/simple;
	bh=fdXyZrJBZNkGb75PdHf2AByBgUrq2uawPejy0NUehU0=;
	h=To:Subject:From:Message-Id:Date; b=aV2Kp3VBOYH+rgSkJF8qU4ljIDzxAQLiTIu1tIiten24HeuMzoksrvf7sGhXTl30/n8efICDbfyYJ9GJfOHmhc5xI6hm7Lj4bMknszOX4Hj+PzDH/e25Wi5ZLOlqG8mYxebSiAz+RbqYHjpgYSNoHwJUFoPZZfXggBBb7ZBDIuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4JMk8Fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4JMk8Fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD7C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773437093;
	bh=fdXyZrJBZNkGb75PdHf2AByBgUrq2uawPejy0NUehU0=;
	h=To:Subject:From:Date:From;
	b=l4JMk8Fe/d3nLQ2xT0d7X7hgxWCtx4SrCUpjmGgURyKQmshXUCnBs8hvR7p9DQpkc
	 4tnf0jEGrx+5L4v13Z+G5jdVl5T/fBuc//8JKXXUW0UGesOEiPcX56lqf7aynXa5Zy
	 +qUpw9ZG6rxWmS1xZ5jZcTWdErqTzhi7xYiozJgcAHQZR/dBEpBgNOnf3ivOrAEZet
	 2f6dmIWeVu91QhKxh0zwCnzqaxiJwf5dcq9iv+Tn1bYqXuGsyu5Cc8yp65kup8Yxix
	 djBGWQXxZ/7hcP1HrlogH619fpLI/WG1O7JijK/XYtAT4orTsn8u0q1l1xt4dbjafJ
	 LhOrd25IzLLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0A107BCE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343709358.23290.12623105004478209950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b20af417fa8287152f24e56ab3d8f52b64403839ead26e88e7999778d7ac549
Date: Fri, 13 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773437093
