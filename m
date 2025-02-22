Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40816208986
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740221934; cv=none; b=MQ1vJjBc8EoA6BSsjd7MwkidEZnZFR5QjsLgpHyevQ6xRl7jTyrra4rIs161q0Jj7yFh2q4iw7H6gPXuAdL7OZpV9Xr/Oc/3i8Uio6t740c0DSP2mdvthcObomJZG9bl3m2r5dOAW1idoIXK5sCXXSMl9pTl1nU1I6biLAIyXnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740221934; c=relaxed/simple;
	bh=J0JgQnzUFoXAGOWULoDKo6e8ugqh7MtIoQlyqKvZNa4=;
	h=To:Subject:From:Message-Id:Date; b=NeoPMzMM0jbZzLPmQQazl8mwMjU2ZXuOaj12OPK7b0QYxwQ2s7S6lyaT+PGDHJoRScYLz8bGqdcHa9pWFnFhP8uvDl9lTC5CDe6swjMI3R/wmWuaEsSRYHnh1Ox5Dsc0CBPQzm09sWycBdd1tVpgkpBUQul8R6U8ZdeZMHZ0m80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0LZIEzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0LZIEzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB62C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740221933;
	bh=J0JgQnzUFoXAGOWULoDKo6e8ugqh7MtIoQlyqKvZNa4=;
	h=To:Subject:From:Date:From;
	b=J0LZIEztrQY/ohxnggMH9g/M16j18o1ntJ6NzDpmSautuYRq9Il1bVNX9jxrhMUW0
	 0CUqE2rNwcFfxmnZk+7tXgFCAIK4nxqnKOQNTqSyeUxbgrJtqPjtx2hw8mBBdPIbRF
	 eYGpIzqJdXuuaQZXeh/fMy/kgG6/Svhc27lTKTlg8AlrWi5ei/DSSQL0qGZp+C8kpN
	 PycMPBAYe712NW/YERuAbK6rwuOI43Cx970PPIPtHfT9D8oCk8PhcYZcaNR0XxC+D6
	 eGjKunge6/fdbb2kI8QM6K8JPrN6KuOgGIhH3SfdV3nJrv2pWZLL19Q/EQeeNM0+Nj
	 akkwd1nuEB5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B8EC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174022193360.14918.8730746449959716296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8251c03cbe24dc6588a6972eceba556128eafd63b37987d2a7a61fe3a8fe838
Date: Sat, 22 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740221933
