Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D0B1C232C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728564954; cv=none; b=HcDdo8ImrZwYczrCOZEJ6jRupozZ56O2gW/pHNNCAIKt6xfvVuXMj3fdAcq9IwSK3ED/KdDa8FReiIe23G5hZSTsSORwO6lq/yDfWu3r9Hv18gGUwhaTPZB3h1e8t6f3ja4po4c7GnZo2D9GlUtAkglmaNv+HyUtK69/U13Yvew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728564954; c=relaxed/simple;
	bh=JDNZOvmozlxp7RjRsaDHB+vmbHM6/aSD1/hFX+HX8Og=;
	h=To:Subject:From:Message-Id:Date; b=izWWmrzl6XZNEWNfVbnXYR7TTGSvTUZWDfe4EoTwGG1tIl72Jx0F63VYzoLGiW5tUzFOm8DHQ/bIKd+tvdIxkH4z8dXkt/yQAjYs9KQcppBgLyOaNKuppX5sq1oP/+XDVYjdqMHjFBfEvJlp1ceEx6t/jqzd3bquwfMND6EqREE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY/6JzJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY/6JzJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFB0C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728564953;
	bh=JDNZOvmozlxp7RjRsaDHB+vmbHM6/aSD1/hFX+HX8Og=;
	h=To:Subject:From:Date:From;
	b=BY/6JzJTYUpQpg9tB8U1dSjGlb11eAYwPgPwD39LwtZRtYLh6alVa/Vd1tkQBVgHs
	 CAbHr1zdDd9NUKOvWpDauL8Sydm76xCfK9iKy7P6f0iGCkx7n0tt9IL8gPRTrtHbjl
	 hyB2Ulsh2I4bq7mS5QB7T8XYQF0G5mZ5dOGw3AVyrlD6pQ1CT8vPTqGF4t83MWK5QB
	 ZuLz+rzcuoB+wujMGUTHPVjdW47ueOxFXhNX1vbbIvcj/plvLgl6lJbpwMtLR6PAtZ
	 hlA0trWboec8Hb1C6HJXLhEnKJTvDgV/2IkQxu5PTd5HPFjtkTCd0ZGIRBUYYKE8+q
	 x+cMUXBFe2ZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6634CF11E9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856495367.7015.5791113933407313932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199a8c64ce6a5670b9414ec1f2e3daaa8892226da0cc4b9157b5c2c1cc533d11
Date: Thu, 10 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728564953
