Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5595C3CF63
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714842743; cv=none; b=KWsgVJR41qSyeQxuUOye7/qA0Xhe8U/7jL0wFJsgap4jJZKXalrxz4ORBYQ5MdEFalICku8SyLUNDcUOxg6JH4uFznbBdHIrb7aAfXQJUoVRVW14VBN6O88FIA7FOf41xc1pwvhMBH0h7hh+iFoh0h+SWLPUh3XvS94C9TW+HVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714842743; c=relaxed/simple;
	bh=l8N/J4ctiK+Jgs2zvC/a4KKYbmAB2YBdSVg2roHM8DE=;
	h=To:Subject:From:Message-Id:Date; b=VI5fZVdmTHZBnM/9vBBSSqX5iQe7O935hHquJzJ7OVDrh3RGQjDhxT5TOLgXzYuVk4XQv9wkgqjj65neSBnAvpXbRWsc7eSmrBDFQOYgpcW0PPUmYFna40xKx+KtQUR/uaBObk56UqGYi35utta7ObKa0pM6pYi0AU1GPzn+azc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdYz8AjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdYz8AjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD902C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714842742;
	bh=l8N/J4ctiK+Jgs2zvC/a4KKYbmAB2YBdSVg2roHM8DE=;
	h=To:Subject:From:Date:From;
	b=cdYz8AjTUmRf+A27vJSzhs4gyGc6/DROrg9MxJop1+G9YKFxEN6jKY17RHvfHRuXy
	 cM94bWGCHhiTq49I7YY373EPLAnexNHBqIn9XD7+1na5mgIT5n/9G2n4TongVpRcN7
	 7yhP4POKCI1/6EtYoMnWoXHUESZ2apOJ3t/kx4ehw7GFYzSueEVWT53cLmAN65T+sQ
	 KrxgIEVO2sCp9191nx8vXrGZdU+RhjuB6c5fx0Kz/q6j72FiFuo8GLS6BZfUVoUlhO
	 h0iKD+P4embZKmeSvbEi/QiCMm5swORwmt/F+EU2MjOposZ8JosjBhwc30IfT5eYmE
	 2qJSF9iKJTLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5170C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484274279.24753.514095834998148130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f7acc2d55f0581cb134c016da841b03764db1254bc37e5101e784a0e9b22ef
Date: Sat, 04 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714842742
