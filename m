Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CC22BEC4A
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757779794; cv=none; b=lH0TrkcamVWt5G1ubytIdTiMRiVeahdQlxFaRkLkzfWJF4H2YQs7TSrGbXtzTRt/utmVpXGiu7dPFBWuU7JDVnaplbeKt+1VBZkjRgEHAiw2j47TRzaOYsP8Y3M12tZkfFFHl481VRXEwQOBcUmiEYdRhaOdPrU3WT/CcnKWqHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757779794; c=relaxed/simple;
	bh=6+n4Ejob3hpF9Qkmt0HC4R61A41PPgxZO2LHovbTm6E=;
	h=To:Subject:From:Message-Id:Date; b=BUdk0Y/jhuMKH42EwKF//Jb9pPjev8fOU04G3sdwyqmHo5PKFi+ouj6CjGc23fBntZW/A7t/jq32nWSOMg/95b3vSPk1j/4jZwC7zipWzs8UAsdVyyhsjeEKkP9GNBAFDX41Cldg7Lk+KapO6MXfDGjHg/sgd2oueafJatT3y5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9+hW05s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9+hW05s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757779793;
	bh=6+n4Ejob3hpF9Qkmt0HC4R61A41PPgxZO2LHovbTm6E=;
	h=To:Subject:From:Date:From;
	b=q9+hW05sv47ZJfRttR2PqmzAIpVDNG09qPQb6AdwyIhaDXBFd/XGGLHRSNa/6xOyi
	 I4xCoK+RyZzR0X91IsG1OdBCU4fH6SRSRKiHbgJscHaOAXhNJuQGBFPLvXQ0PvWZ6J
	 CX/Jingu1RM7W98WAxJjSp1ITttU8sg9di2g7CVmU6+uIMNDOatnmN/sAn+XRRgnid
	 PC6Xrsr9BuYebENNeNyCDT0ixdxYh1Uu5No8nPTIdzWIQkV4ui2D5Q22Wh+M7cxnqo
	 j4iWOjXDBWKnmDPosucYZZD+fmh0ajVAI1gKDstcTeIbdiCaeZ5WajrApeoY1GIFmU
	 /vQUsH7Kq33+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91432CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777979357.13901.8099757799362064860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1225cc65d2db86d2586a9410bd2618c279290cf81382bec3371a5bfae5a03c
Date: Sat, 13 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757779793
