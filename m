Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2FF27280F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764362573; cv=none; b=c8fI484X3Fi13U0cUH3R1p9Y1sLrpdLpA57XiC4GLyCZt2GaY+gomoMhBqIv6/S/iD3gqh0uMMFtTtJ9mi+HOWcDpJkhk/aIfDfkOz1Uep1FqfnSCyedJiXCCOxgrphEs4qO/6m6V2QuAoS0hJ3cZx2sKzUdYaYrgQa83ZjJinc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764362573; c=relaxed/simple;
	bh=uoyplbN5uf5j0iaWtSHlR95O/NI09obND6Bpupe6LMw=;
	h=To:Subject:From:Message-Id:Date; b=O2loB9Kj3GRXvJJ0f0foi9FU20aPVaJvBWSV3DoEXuYMKcLnOP24TpCG1j6ip4ewYfooCusuqmJVdOVkTWC8D5KTWKdAi0U4dacBfyeKvkU+332vBK6UaW4kDRT/OQVl+NCy5uWoCGZ7Ygzrti3Hclc3UE5gAH2FUYcK23YIhiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS8ECyig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS8ECyig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764362573;
	bh=uoyplbN5uf5j0iaWtSHlR95O/NI09obND6Bpupe6LMw=;
	h=To:Subject:From:Date:From;
	b=YS8ECyigSPW0/MbcWDMpa9CeBbfXn4bbOZv8rB6cWoOc624lC4ZcAS3Q4+agho5yq
	 ekWyZ1soOzQLsomxp0XOiGSZYvLO8uEp4FVtbd/IibwWSbQNuCmoii/ILQHkojOS3Z
	 AUZIP3js/rQJy78VUxnnOGBz0+aNmfg4rVPSlfwge4q9NtB58lgmT0YeiZpgjY9SjS
	 9XeltJMU62B6H9YxHILRW4Fd2PJR7negovt/CldkLO0e2Hdc1frI1d3T5IKLSWfji4
	 QopKilyqxqYFFChzfK2MgUmdoABW+OEU38PRoQMGxLh62Gn8vTFyeiDwiZphzWNPA+
	 Mzs3S0holgGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A2D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436257359.519.1714434402077000813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc0bff6a411c79f2cec65a666530dadc407367069b841cfc06f8ff5ebcb0813
Date: Fri, 28 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764362573
