Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258FC4A64FB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788450034; cv=none; b=YPhexWp1RZP1Y0jTcibsc3aLW4mKe2YM7iKUjPqyvE/iGFLS4qWQuqbM8jpix1dehWYaQwu3HXNbSngPxUT+NFNTIfKbbFNvtyrqx2iiGz/JV8h/tH3sfx3dKuTOhXl4Uxi7putZmvksefbQe5PiLjsRVPU0fxQ4tdoJXG3DysU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788450034; c=relaxed/simple;
	bh=PUyyOw9qRdDTzdujG9TPHAFfjPyoGqSBnYKku+bidxE=;
	h=To:Subject:From:Message-Id:Date; b=g509mz2diO0cfIBHw4qbCR5ynJ8QpyflhHkw5G4Mg/QlS0YibTAGRN1yZWmiXtKHqbxtNMVW9DMj8euzSLJCzeSrT1Swn2awsmC99/AVv6wfNs5amWhK6C9JNOaQY3NXEqK8t1saeyWiyTyA5VkBPUXZwF+7BQJkRDv6usp1Ak8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPCRwjqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPCRwjqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF220C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788450033;
	bh=PUyyOw9qRdDTzdujG9TPHAFfjPyoGqSBnYKku+bidxE=;
	h=To:Subject:From:Date:From;
	b=PPCRwjqjU3k/kd6KUvM9nLPiZLfKDbfhXZFDPIUeSa2iwmjckJT7PVsI+JPE1RBZn
	 e7uqgokhZa2ca82VmjsvtLeRpyG+kOp9NhSYeQI8eJGg4bImRbI7xV/SjhbcjNvxmM
	 W5l80Ddz3jk6s+fOvaNCnFzNaplxITkBM9bDilx2ALMwx/Ef2hJC0nQDbXcaOTCXwc
	 BDPqzsVDB6dikm4cg3KYv2C29joyQ1CPpmbQrtzlGkBOmN0h6aj1Qf3vU41B5nl3PQ
	 Mb/WqfpwD+brWi1fU0gsvWYrX+f59/pH31kixY2Z1nv2QAsYJIYlWzeK+lxiLPJZ3W
	 NEFxBxhBDwG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4AEC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845003369.17814.11247801312575883274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c57e2691433960f3825617c189a0346e10342e535d50689feaf6ce75632465c
Date: Thu, 03 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788450033
