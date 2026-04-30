Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13D242D84
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777562254; cv=none; b=SVKvrtGwlXDlAaGXmX2NuXepoFuEEF9BZoy1ccP7k+BbGENJkctA5iIDHm3oJZGAkgHD68+c5F3gE/HaHsp91yi8rFLzweCLX57UWHFURECDpW6au78HYQls6dHLyARQ7fTl3+OEhkZ47Il/b/4EaZc3JGDAxAtRYFd7fGOIF3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777562254; c=relaxed/simple;
	bh=pImUrz5/SN3Raz2gL40xO9rcZBbX3KC7cbaENTEQ4xU=;
	h=To:Subject:From:Message-Id:Date; b=auOKq/BUz4Pku+X78vPIE+tSVsXGuJjD0rwBUEh2Qy9piz3xwQyGLKDybp79GEVYCPxllqiZOcyCqKhqxs5iBSECWlsC4ouF9m8d5A043djh1xCimzvT8E6y2a9rOhA7l2XZL2ZB8jv3mvEkwUqpP4xWoRkd7YqF+AaUDMvgc2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m437APDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m437APDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF2FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777562253;
	bh=pImUrz5/SN3Raz2gL40xO9rcZBbX3KC7cbaENTEQ4xU=;
	h=To:Subject:From:Date:From;
	b=m437APDnKn8+0Meu+Kb2nsiN6/aTV+5CYFAqjmdUqjyNtWN/wlQZXImGeEm7P6G28
	 sqROndNjic9smnXD33vepqvEOZ0N8wVxGYpPER4an9Vqxy56fkD9DqMhhGUZ70pJSA
	 35uMOB9GGL4P4KN4UbtuPWqHEP/qilAKuEcz0OqDSp+EfWsTSZOl8ol6fZuiNSpwho
	 m0oaUN12o9uqSQwC+82/I2kD9xTGoDyuPmQ3DQEytiUViAecW6uKS+ftbm9U5WovFW
	 PidkRoK1skPkFmzuhukUCu7moVtg6zoAR2cN+YqjZ2nUx5bHbSIYzIMyaCsQ/Z4oj4
	 vHKqlVPpiPecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12DFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756225369.24299.16387945005321447765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff64853d8abe42afff348122dbcef7135c455f2b06860e8515b23ca72017c204
Date: Thu, 30 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777562253
