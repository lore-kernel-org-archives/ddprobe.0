Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1854F1E4AD
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735049154; cv=none; b=Tedsag/1aoURdQ5ZQK5yXTisN5Lgmgr0EewKTfPsIZSqnW0GI7F83Nr3PgYZGmsVkcbNHR8Uw6BP5E6Dx2o6Cc9SAJX66bOwOR0cZehptsBt+K6a8wpZQHCfsFqLJPA3Phy9asF7g25d+bT7cbbcrbIqQrku+4PFezWk1InxKN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735049154; c=relaxed/simple;
	bh=XnXKhQurkdhOAXbU3aA3jH8H+I8vyhObJgaPPMXI2mA=;
	h=To:Subject:From:Message-Id:Date; b=rbim8XNMmWBwIlC8PL7ObgaoThdRJg9DZpMLAGfhIRbB9bk7nRB72RQToCp3bHTu8DNOw7klbn4XGo0sbPSOBQM/NKWZd1DLUY/DKWWha5J1PPouWKCE2C8aqR4cTyWClMxB6t8jGyxOyCzxCkyDvs0qLRt5BVkH/4CW2tFpGA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfpqcX9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfpqcX9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A5C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735049153;
	bh=XnXKhQurkdhOAXbU3aA3jH8H+I8vyhObJgaPPMXI2mA=;
	h=To:Subject:From:Date:From;
	b=hfpqcX9x5Zh56gewEfEJEXgqSycWBBlDDxrqYSM1nBaJeHLj+zN5tg6MUQbZu3it6
	 ohj9dPvMd91gpnQAhmcDd6UzayWRjRjesa9irtsgebSC32qBGFOJNHOWWsnww/oZMi
	 U10SuMCxYpY15ASOCO6VWgKTITN4HOFtGePIXt0sewtqH0fYaCg34SluOd1x/RuMKs
	 sXGrGtEe+tLxCf2tEoIm8TfEOLFvykNvPxp+BSFyWacLLKkWSbARCDLaooVefQZhfP
	 1A58h3jWodsBrlFvSaM0bkKLjxnlhNv40lCefqZ1q1wnES1cJg10qVWvYr6BBAP6U1
	 xJfU0O06R3thA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91300E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504915358.32751.6610775364711882316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebae955888e4f674997058b6c1e5d0496b19e29764b2868c6964890761da757
Date: Tue, 24 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735049153
