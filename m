Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8652759D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790688034; cv=none; b=E1oJPi8GrvLFxlEznGy1lhvbQ4E7HTlrybufi8HvqFVcQ/ReODjAjpTdcz+MGlaqGtMoa/2mKGSdlH/q6+FtKkyMgHmuPDGgVnwmZuJm9g5NTpUwgfgnXeEjSB2rPmzwFxGV8uRYUTAs3GtNDsEPIZH7B+13AABWUWdlGZnDM8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790688034; c=relaxed/simple;
	bh=jYE40cLockAhyXovlphZs8S8bkNaZy/Q7IvlbXd+nzM=;
	h=To:Subject:From:Message-Id:Date; b=Sa59RrO/WBDsDRsIckXuK3mUuEELN2c4OX47yjRTs640VjltAdogwZj8L/sVQrNQpeGd7NtU0ElOPULLqYsXsiuio4llxuQ59MY98Uu2w44Wtp6zhkxACG37ZUAJ58pJs+OHDxOOTy35nZvJoN6ovnSoAJ6HtZZTTXX1vT+HWyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTtWd74n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTtWd74n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C4EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790688033;
	bh=jYE40cLockAhyXovlphZs8S8bkNaZy/Q7IvlbXd+nzM=;
	h=To:Subject:From:Date:From;
	b=kTtWd74n0gBc/wB7ZYrvpKbIlj2QD9ftinvnijh0+IFGbFNSTyvZjp63VacryDKol
	 iMDr6Sq3D6a+bXP4S+/V1vlAiARWZF/fCu34UVp2YJwzH7vh2SbbuDbenFIcBCMYyU
	 Q1yiNaoQQYu9T+u+cduum+H+qLx9vbmJXq86Z0hPi4qmqP7q2Qon4JJie+w9vlrVuH
	 Qnsk7ZsWw8hR4FWALWGBo4IC9qhJRcsPBsEVK5+6QufNcjXW8yfjiBszbnFOBQ5Uen
	 uPYTh2RjwPJOn/pJjkHMQDswQquxtKrj75JqeO9a/fYyHELBiHC68AOuNJ6M7YnaYI
	 Gw+wk+5QS69hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B7ACA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068803370.20644.652633621515742367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8443f7c8e46dc7e289e50e3b568d20c10ab9b441f0e4dd56b842bd0d17b7194
Date: Tue, 29 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790688033
