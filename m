Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B7E2F83D8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767946434; cv=none; b=MLBgOG32uvu9F/thiRdBMvHBQ3ozdt0Q6Djxlg5gZL1rWsrwtJX71aAwMIkIqBR4Z8odCy4KJwqF/OfUMMqze7jCZnIQh6cv/VhhaIQoB/qnmEohKXkK13YzKsBppU99I7ROnd/pSfJCPoYlekOSO/CzzIUNB1OvEOjDsniG54c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767946434; c=relaxed/simple;
	bh=Va67wqtJqRrCycx2Gpl6hCB79CM0Qu7rjo4y5z5kdo4=;
	h=To:Subject:From:Message-Id:Date; b=eaXJAG/VEcDFF4KMnxyaRwhFg7e6CAjpMl0YiA6VvBovXT37GeL5ywq3blZmsujY3so+YJb9CnBV+9JiuHM0Gl8vfPyRYXYX8LH1fmkIyqBm6wZlSfxKQ9Wp2G0DmDVqCSWMAxOW/NT7bQmSR8ekDHKhG1NTWyx0gDHKYZ5IrIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD624M8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD624M8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767946433;
	bh=Va67wqtJqRrCycx2Gpl6hCB79CM0Qu7rjo4y5z5kdo4=;
	h=To:Subject:From:Date:From;
	b=JD624M8G9P8mcKyZV96uQtyFB5arKByI4vABkZuCHiMBxSv9EbMBdbgaKeocOnA8X
	 5wiZEEXj+9yoPVIQolweDhxw4rd+BwiEwQIXOxkFRzNwguNsEl8ta2Dq1UiGnGwma3
	 rwvJ9VSwsBkCgD1IxthuR12nvahD+4cnFjNvR1ThOXVRoqVnCUHtIdeJJiMHya0g2G
	 +rCf2Rzu8d9WFBB0BH7x21e3Wls63DfX9404Rs/pl/MjS0ZBHdpOAYNUklwqfpbhzX
	 /CqeHS58xrxkjegcry+DHN3KuOy/iLCs/BedazGLpu9zGM4lthAWsPmsJIXY8qh+Xy
	 LzJfEQxOGfjVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BBED232ED
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794643358.6212.7583345573222284243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9411a3201fdeb82d9194564f335df356f0bb7b470911ec021acd2aa5262858b2
Date: Fri, 09 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767946433
