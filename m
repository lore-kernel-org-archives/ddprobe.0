Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AFF30F7EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791175234; cv=none; b=lwjDAvPCUrU3gAQYyNBvhatIzd91AHv+nXhvmx+PISa7jwzJvvtkf96kMpDD/DiH10KJhKTatHbnKKJ2A2yxxKTJ7rUeqU/Kcwp0D8aF4HNzLCtNAEm0PanYTtw22RBMh50qkVL1tkJcGWmmGcuuLPW8m143hfDZrkS+Y6YFk1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791175234; c=relaxed/simple;
	bh=3oJxSucd6FNSgLwmma5hiolhVPgU0RWKFNXh8uc+Zo0=;
	h=To:Subject:From:Message-Id:Date; b=sO3azusVh4LOHzxn/tHM3ZtNFFbWoVxD+gXPUzntLkRJax/ne0GITYDEIbYkXjpPaKPe+IjWM/iAfVBT8lehME58oed5t93eAGMkui9xq+Ftyr6bFhYp2WKO8m0lWopDk3kq4Pfi6DM3OJGP0uF3yK2I8cYhghYVJm5akMX5ntc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML/BbuAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML/BbuAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6116C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791175233;
	bh=3oJxSucd6FNSgLwmma5hiolhVPgU0RWKFNXh8uc+Zo0=;
	h=To:Subject:From:Date:From;
	b=ML/BbuAyY+8CufxaapZI3i644YZfUzCg6IGewkK9rHYfpt1N5ZHOnMAsQYDa4w99T
	 hpt6rJyuuW0BCYQhpxNSsj2pmvYzOn5kxy/V2pZU/jAnm96+//WSh6/42KyF0U/9U6
	 IJcgglTMRyQ9TOaCZxeFk3pmSNkok+HtMHjV6lbGHw673XdBZnVJv71sEHpiCO7MEH
	 86nWhO3zVEnSk5eXZnh8pv3qsCiz6jhw45hxECVhZgAmA8kRpXzEq9typ9OIaCnfu7
	 w2k9kLyY6Vmgv4Q1XWy88XUlcEYEu1Wm2B5JQ77uOkJDF8H1STL+ugQmATcvAuD5Sd
	 H2fD6YlTgm/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5026CA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117523371.23088.11549568427699737505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497338835f10a6c023a5ef05c3a5e029f2fdb56d44d0a3c9c8b93e1c43ac36eb
Date: Mon, 05 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791175233
