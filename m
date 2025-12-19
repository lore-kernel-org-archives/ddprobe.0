Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DD01B042E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766174634; cv=none; b=OGRwB8rb1YtEJS2uKb2voXqWKHrMf0biIX19p469UigOEFZvF5kDo3qnLKHtvBF77/1TNAqgjP5bBM6ecPcgvr2aSmkbNvgzeW0OBzcwXQn5PkSIrgrN2QEMdeD45+oaRj9QBf0lhzLtOUqC15X9bW4e3LZPqtXvehtrZO3wW5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766174634; c=relaxed/simple;
	bh=BS9kzCDV676nX760CVhb/AbdhqoXPr1uSYCcU5JunF8=;
	h=To:Subject:From:Message-Id:Date; b=n5sGXZrMPeiPgI14wEGHt7Gky4rd5M58wo7s4gVGeGyOpR9LIeevK2AwX5WbHlIWcLLnaAQuHLP6vTUa25pz6yvWK6uZNS+zy6wIuwDnpHvuRZo4yfG8zkZfNKTGw6YWGKvpZ0ZNjdMKJVe9r4WlaC3T3iDhFxhUMY9eY/xI3+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+ldVNm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+ldVNm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6657C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766174633;
	bh=BS9kzCDV676nX760CVhb/AbdhqoXPr1uSYCcU5JunF8=;
	h=To:Subject:From:Date:From;
	b=P+ldVNm2tJdntPukkfw6cxq/4OITDzQVxLnnIqi6Y7nTCxj1nK/OyxTtauGWrqVfu
	 vtntY3SSFDNh/ZYbUf6EmrivA3yvXIXGylh1IRbfPCiVGFpG0ldRWKeVgEMMCWSJr+
	 cSg5Qad/Jim0uQ4P33vmyvi3Co1M8+odC2sZU2uUULYD3bu5Vgb/d+zzMwLb8feLHm
	 LzlvMxCwq3DvqlYJyAKzy5vi2KPcYF57oQoAs8BinfpFHgjKThrodnq6r485AWKQ8a
	 G6NewqbYk3iUsCVvRH6OFfmAExAptDs4mU0+oFLbUH51nDUGSLsbZFu7PqA3CeKr5E
	 /oyoTbZp7ER2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96468D7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617463358.17425.4928972174649918069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077c5354f17af307f7b4145ed74fa7028575651632bc562ccdec6270894ed13f
Date: Fri, 19 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766174633
