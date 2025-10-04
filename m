Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20511288D6
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759548594; cv=none; b=Pf7qjvrzzih8oIyg2CA4oWtNcJKNRP2nDiiWrHBaMV+zCLW6U86YymDRlidTo5e7riXBJaNgYZeSYKkD0fGFboObGklYzgdI+xIZUY5Fv+mxYwdceEDr6nkfcg+SAIemZwRvdPijG2bVAXHiN+u71l5ZWpPYNAurtD67ew/PJzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759548594; c=relaxed/simple;
	bh=PYFQYtXSoAJD6JfDBl9SbEULjSDiibQytuKqkuFpqKA=;
	h=To:Subject:From:Message-Id:Date; b=rDBjQS7TVoiq31+6EywKzyeJfLwqiH1LS5gveY34EKZiWrX4S66G8Z2d0CsJrK3X1Lyg/2bkrQABEcrRusKUUvvE2CUhDB8GFEnlmWxk8eonNpNdk8wgHIlpumiUo33q9g3c4IvfZHtiELjDsg3r2rB+aUkJZ7+8hF3V/a+nA6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu/lfwDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu/lfwDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759548593;
	bh=PYFQYtXSoAJD6JfDBl9SbEULjSDiibQytuKqkuFpqKA=;
	h=To:Subject:From:Date:From;
	b=Eu/lfwDw0S75KXiQJQOkzl/EdIFX7T+YoD5udlkd1SOD4GY1VWblrZRc26OjusHqf
	 JmhjymZqv3wNtmfiiIoefjHj9vDgw5BeW7g9TtjjCNF2pKqjzzbIo/NJR8/6doIK+A
	 zEW8os6UzvxJ6O53TVyLNa/3B96q1wIxzHJGoQ2fpQX4jA1szHkwqI/Ju7pnUx3USE
	 NxqBQP+83TJNEEfgVU7nBCbP5LiPVikryMpz3xYrWUY3llE5+KKOE/75TITMdk4u3f
	 wgJ22c8ARErXgpzSRz9WZX+kE5WQ2DgrEblJC3lPuHxuhVU2xD6qko5iDruNRhpdCF
	 adNscr5WTnvvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95318CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954859357.8762.11841050227121810356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e4c7d226d8868e032bf00e930d43c4915cbc0bc14d93f73d4ae94296db5ffb
Date: Sat, 04 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759548593
