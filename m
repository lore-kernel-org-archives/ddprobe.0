Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345951F12E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993774; cv=none; b=ugAkAvhZX/WYXuwTUV5XRdOlT9r5atbNh4MuHM0xcugXNSZSm4U3rCWMgQAzGwjSeO22RENCSdkdccPDVS8BqesiqR+y5ow8hpWaqVlB3OFVohadCPkq1JafBZFHt0GfC0/5O/haoQhu74MiYkruU4VNqW3a5pm76o95zozZBQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993774; c=relaxed/simple;
	bh=lWA+nep3QrztCPeTBuCO0JGCAaqIHFSmpDwwjHABGcM=;
	h=To:Subject:From:Message-Id:Date; b=Nh9jUKBIKkSxvkXAy8/0dcLwSzuR6uuLrkGdpe/UQyViY4a2XsfOKjNxJlUhIWfRgA4XOxHLrQ7KBLGTpJBcTldSL1E2jiay66rg7ihdr86uFDXRUhVexIFmXdBUEd+ymkr0/CbTvGV96lPmtjA79X2OM5he81IV3p1LZYCKQbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYc4HQqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYc4HQqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764993773;
	bh=lWA+nep3QrztCPeTBuCO0JGCAaqIHFSmpDwwjHABGcM=;
	h=To:Subject:From:Date:From;
	b=bYc4HQqaCdqvb9k4QXSx9oJVsH0BpJCIL0rKpcPNA2sPPBkl9LsrxahWiEycN8c9X
	 oT8mIVwU9xpEjuCT2uQT29UtiYNtDkzzGmNMeJY013OUuCOPurhEDd+gpVNBJK7lrt
	 nq3HUmI+KXuFO9ZSKy1xY/ay4UADLNztgyZ+yMW/7ybJ3nCfdRw8IWPwuUYT8AbxvT
	 mDvZmx5cmY+lBgRUne74DPIk1QyKUtRvyjkNscig8Qg67tIKJCzoHsmt+GvG+wSPJF
	 6kU41F7dE91/xjtduLgnhM+bglDNDqt7yhB5haSNqAkKAz+nTtx0Xx/8zqNVnn3nm7
	 dCwhmGnK02MuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5482D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499377363.25970.5267136459266761089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c89a25bb2cd5ed2fbfbb5285b94de01d5a971900a0aebc24fc58ff755ccea76
Date: Sat, 06 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764993773
