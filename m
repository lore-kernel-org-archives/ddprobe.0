Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D371A23A9
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749146997; cv=none; b=Cm+8T84vmQFahjf8F2bBe86vzNqzufgOgr1UpPmWMDCL/9yChR3emrptH0Ip9VV/Nz8tck4ZlT3aJZCcHU3fswXvuekikf7cne/0LMkw+gcO7SWJrIbBRYlN7lAvI0aZHiXkia3JrMDNZClXw+FjKT4wAITY7g097QIUCVQiob4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749146997; c=relaxed/simple;
	bh=nxNt7lxj1vHLSgC59bv3lBspqZhaw+Cq3biC/mWFvaw=;
	h=To:Subject:From:Message-Id:Date; b=nLhPAl/134phahcD4jicfjoNSY7a8p3RXY6+ssfv9SBxPEkg+QpDHZu7jg9dI1mbYFQjGAhMyVTUMNbXS42hj35ewXxHPik3nVkXPj+8vFGlvKMMK2FHLOnGq14jW6CPMbhPI0a6KmkYFVlLZJ95zzpkdgeUi4OQGIK3CQ6SwC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL8o+g3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL8o+g3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA5EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749146993;
	bh=nxNt7lxj1vHLSgC59bv3lBspqZhaw+Cq3biC/mWFvaw=;
	h=To:Subject:From:Date:From;
	b=fL8o+g3BimePaQaWSJm07/2gFdBV+uHd7jnUsPRIFsXeQmHrSRexkgf7lG+9Z9oDb
	 zDHtrlOaOZGCb3lfk90S0fHspd4ZvgzYJp9kkRAbdELqy+YzuJnlT2XeF13LgIFIWG
	 //xjr6ttnva67NR3+TKQ5RgdvaxTrYItFtnP66vB5hNgg+I8jJGqRs6Y3KqK1Ytxd4
	 n3EWHHDcXYc+bf+hCtJ3SJPdp3XqDQtGZfth7oKEZigit0A73E4GGtQIy+SLR8FEAc
	 FlCkN6k9Q+CeACqOBb+xdUuwbvJPJehF1qHsGVG//bxNRTg/1dCvdtJQkDs/V3DgQM
	 2BhjKe/ttbyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91072C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914699357.18635.15422061347649874025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a909b48260c7fe76f3062bf850ea9d0fc935d5b6765b9a97c6c34a68c2d2ae
Date: Thu, 05 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749146993
