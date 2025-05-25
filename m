Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7AE1E871
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748180994; cv=none; b=B0DWAS8zG74PPEVQw3qT8EUDHx7PAIqVBbWfgFqJ79ftH4U91PqMUOp8LOPXuab3X81gw6Dnz8KYSWPCU46DHGwlvf1DGZxMYKyw/Jw2+IXbAKprSfBfUDOR3P6l6D/IZPzy5Uk1VInQZh97bCEHjMpOI1eRVxXJVb7PMV96GTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748180994; c=relaxed/simple;
	bh=JBb+yYmg8wIBVk0xPZHsUgulIA7Y8AKT6j3JTvdxS1Y=;
	h=To:Subject:From:Message-Id:Date; b=cIv953qBA6Rhf/5bKlRiaejvPHzZPZ4jtYkRg4uqh3WLnh3Qjx6OofG97I6T0Mq/2n9RAPgUgWpLVkGtHd+y2CCcG3L4tT5tzYoffgDBfx3l4S0hky7vW3KjmBLU0fRxsdoMgVBTQBqwYMXgvyxi/W6/4Ve3IE4pN8n0S7+MBDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVsI4T57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVsI4T57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE1C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748180993;
	bh=JBb+yYmg8wIBVk0xPZHsUgulIA7Y8AKT6j3JTvdxS1Y=;
	h=To:Subject:From:Date:From;
	b=uVsI4T57AwO3VdLWEfIiAhYF1/ZZUGSzFbE0/e+KxMJuNLFgd0relLH56sIafyt7H
	 33KJ3pNPwPvTmWjb4DfPqizCH6Wlef6yyyRvOcK5ZHf+eO0p/O5iMv77Zj91ikSJcy
	 L6wMXSpt9f6PkcntPV9BePhbHv8KqpMq81txy+pobo5sA8yttNHhDXrYfcGv/U9cyI
	 KDqnay/LXpoMxwQ8i4qQIQklYVUGlRVrlIr9oJ/LMEB0KTtDhEs8ChPx7pwsr47Nyi
	 0qiDazbkjTqmEh4469UtG6RvjCExqsaUgfl/0a6tDb4a068EZ57dmK9ZDdyI8SSGUw
	 NPL5h0A3BqQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94576C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818099357.16758.11818410303173749740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b466be888d9d41ddd1e87996e109e3c94cd59634cf7a9f9f4dd3b0fd6d41d7bf
Date: Sun, 25 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748180993
