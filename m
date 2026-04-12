Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5E530E0C0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775996854; cv=none; b=X/x3HaR72S5+VK0ZfZ3ncvzB9au5F5235KXaQvvxaCVAfT1je6e2AkpTVmL0ZwWj22ate/s5jWaLXQkyL0BDpn8d8DtsuzSizFeFlHcDZNFNyIdTq1jUqLjjt6pkrY1d+tFeD6o7hrjhl3eB/Vf1DQdjCozwrIpDU+it10T68Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775996854; c=relaxed/simple;
	bh=Pt/2858kp+aLtcesvgqtLkZiy2FN1VT2hwJIWvYZrIk=;
	h=To:Subject:From:Message-Id:Date; b=TKzwYlq3tCGLIBzv5KBQ1gDbhueVR/XzrU99QIC65csQP07ZLrivjN7nq5W5thEWDxkILBXT94wBM095yp6n00MNcUzmGqY9Ic2T7p7a7Q7Mi1WenYErRti6MMa0j6z+lcqADlXhPUGXP/rQE0HaPiU06rc/6armvaMI7XX6YO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm9mSqlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm9mSqlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA50EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775996853;
	bh=Pt/2858kp+aLtcesvgqtLkZiy2FN1VT2hwJIWvYZrIk=;
	h=To:Subject:From:Date:From;
	b=sm9mSqlLwb2x1mUf6E8j4dS8Py+A4qL1Kkx2byI3DLYhvHXHM0y6sC1p28D88nXHW
	 JiHNESFu1bY+1MWZtuLKJa98K7Jh1NecCcETbQ80kPsvkwRiO4TXF0XPl1T44a3soe
	 gCR+JXnVnj9UMF3iKbOGIxxdn0TsVzzzuIyuEf61jCvL5yvJea4ZSfK2aalp1s6c2T
	 efN7+tY6HYHl5eE/fKzkOpalCXVvtKD0eBRUGE6lJDjcA7Qyipbszf0N2d0O6cGMdo
	 98JDmtMdByuBWaF5Yowe4aqtQFW0Amh5d6rjVMKBLsnGggPFU/R9YgTCyYUfYrdwS1
	 HTZs3bcMRPhpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6EE937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599685368.3139.18399585985391361343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444ca5766b1db1f7a86c1ac366044ee5d5abfb240e363cc1f2c1ab5f53b84fd0
Date: Sun, 12 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775996853
