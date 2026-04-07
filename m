Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FA238F631
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775569534; cv=none; b=h/2A1Y9PDkemyZ3iL0UQ4c9arGx+IRzgb/vg6H2QmMxEVqKWmqgE882sPREA7X5cGWPf4rvZFTCDGE2wlMN/0hSCvVFDzTX1pXPp7eYvnQGsTZSeGgDvEL2pwNWfWtHpalLSmX9QZ5riTGY5/oZwx5wrG6e0vmAFPjNhhBi3iuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775569534; c=relaxed/simple;
	bh=8eWZ6uj6TmNk07KgAorrmhKm7mdAvwjIh26yeFcyw20=;
	h=To:Subject:From:Message-Id:Date; b=VKhTsvOHgfmwMPfVMQ+4Uf242elIPOKd8KuSnGRk1XN05yPASZKoK4p0rHJZBOXyNxKKtNIZRDa5Wa1jOJ36cJmRoxpHA7dFyCa6sML3j6IA+3I6ogh/nOzGhg5L6XXpsK+BaouaUPiU2bpZwqkGwp9et1NwpZrHhRpWB/mo64k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRRotq+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRRotq+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775569533;
	bh=8eWZ6uj6TmNk07KgAorrmhKm7mdAvwjIh26yeFcyw20=;
	h=To:Subject:From:Date:From;
	b=DRRotq+mCXnkeEiKJI3iey3jJyvynCzHgvpxow3fyh1AgAhyBCiC08qBBo+bDoklU
	 +8Z6D90LwWlJjtrWCbhTdm0VKc15yVsLO6KHPkNQgIUkSNl2MF5wiO/RYQdaQAxjz1
	 tgZ9D5bXSHmv7WbclYhwcj1Yu6JVbHM+h139iaAhrk3uPxGqbA8ywyH+C+HykzjmAo
	 z9O+He6PmTMWk0khVVv6rrwm0+I7BYuMmH6MzQX9Osk2pPtvoMXBCHlZn+zwzlTqAU
	 bH3uMRx2OGvQUwFBVWR9d2pcrHSctrG7XvqIMiZ/NuzKMxrKSnvC8ETjVLxjGh71wM
	 zyAs82TQ4ii/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD58FEEF38
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556953369.24690.2975052241379618581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032793c464519f01c335ce5ba2b18af1b7b67c408a403d8cab4da9cab27cbc2e
Date: Tue, 07 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775569533
