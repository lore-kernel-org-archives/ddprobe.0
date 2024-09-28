Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9CF190496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727490954; cv=none; b=Xahfvx1YuHShp/6rvG0K0lloFoGj8VQGSVBYGSQWgG43sHrekOy1TrpYcUtQ5lJHwyjz8+HwPYw1LUvCK2Ul5vQMtSHr7uvgWSxkstpKZ9OUjoZj0Nq2AUBiNTBBCChFPymbsURCZlBIX2e2KyC6uoVXzfmh5ns5v1lavX1kwa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727490954; c=relaxed/simple;
	bh=6OVR5Jb+XSf4KwuQY+uoqRnKWcRL8p/AY3eOnfnf2Uo=;
	h=To:Subject:From:Message-Id:Date; b=Fa8fc7jxd0TvKntoOf6mObkXrFsoEhRT9Xn5DQj4aY6D5o94LQeWvbVjIOt7L2WMICpWV0/qbDREiHaPMwhwv/Osi15GX67VyjmekkRY8cSJ46LyqoCvroq9E/Po1SgE2pTR3vb2QVHLrhsQRqJsTqEksb/aopk/cjcGMX17q30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHDg4PME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHDg4PME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587AC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727490953;
	bh=6OVR5Jb+XSf4KwuQY+uoqRnKWcRL8p/AY3eOnfnf2Uo=;
	h=To:Subject:From:Date:From;
	b=DHDg4PMExYsv6HcQ8ro7Fw4OvXdiwxXwOcI9elAchIN6uhq39EdbA2qybJc4C0HPp
	 aM6fIj4SeSJuBHUAqQ8lDKRU7Z2AzLkweg1WzQboDVP+j0+emykkGBRSVwGp2HR8nd
	 KA2EIechfnBPGBl5BTD3cDs8SPmOhG3+h4BNwUkXdWUNHcoD+Wwg6d8glfMklOCcCC
	 YpU+MMhQmzjYo+X3wtCJZwsUC85vBCku3N0WfeloUm8HH+GdzkucHG1tpduKeBGC0K
	 NY+2P/G5Dp/erhzyqUyRgqJCz9RZ1lWMoWYFbg3GT5AMfG7fBs1f6mxN/h3UorMuGR
	 2dzv0OahAe5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C18CF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749095358.27023.15147780505496367975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35aac9bd79c4e7a90ba2e87b843174e832bbefe093b7c1209df48fc039a34620
Date: Sat, 28 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727490953
