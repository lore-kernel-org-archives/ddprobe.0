Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0C83D953D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117914; cv=none; b=CGp/1DwIg4dDSfGhUAPrC954/i72CEqmq8rMSej4yV2haVQOHMo8S9+KgO8H4bbXfT7fCRpi/g27xtgw3oKIKvd+v3ZZ55s/figRnZK1dKzzLLCtV0Lqe/V+QjJ/25qSq7uifOgi5aEasgLoXX+53QPV7b0/QoJ0GOiNNhfJfvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117914; c=relaxed/simple;
	bh=uM0p15CDBgMQkwCPW/l9ByYTSygtQyGHmfMzBsOxv1Y=;
	h=To:Subject:From:Message-Id:Date; b=FhPjmcD19VkXPhmimMXagP2fVqRTEvxFbvf0YLjtW9GRZpm+a1hQia1GT6+tdYalPwY3rLW57UmnQybLfXou5xjahmjuQdYKUwJfDGGxYUNLmg/y4kRC5LApkWjFa44YLki/OmXoMRj+n+CShi8R6AKo8/wUgJGd4lpSJtZC0wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmZPepfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmZPepfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E7C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784117913;
	bh=uM0p15CDBgMQkwCPW/l9ByYTSygtQyGHmfMzBsOxv1Y=;
	h=To:Subject:From:Date:From;
	b=hmZPepfb2wLxG6O2IqYmbjQI3GpcPpOkmwassOMka7rycQryBWwgGa4mR3vsXUZhj
	 LOXL+UUzL2hdIvkStUAyTxsF3bWAoBgy9H/8YGNj2hdJ4VWqN7qlAcpVEC3lXVKobc
	 sAuL+JBHb4xanfmwxbADxpU4row/cUXZdDY+iO5v4f42xior/sA/NQeWeEmiGRhLCB
	 Ygk7P/OkXkB1omRdG2E6Qv2WWH10/mdUQ7ZUinwhTleWbUBkZqxDvbmvX27j3YtjBc
	 RIDFBSGJ6L5Zmn5w0+0dX9ZjF299J4sNM+PwiUR+tEeE5R54ZflPUIem1YQId2ncjN
	 61b0RgVcPcpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0B4C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411791368.7816.11830128390241017143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f748b58465d16e6199086ca927c734ff38a08d3d1852b63f85d1b17edafae3b2
Date: Wed, 15 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784117913
