Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A7E3168E1
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777429054; cv=none; b=cAcrr6ub7U3r+JOFutUkH7ewNdpHMP3ZKxUFYAne7IwRAg1vjl2muhY8rqF4VIm6Q6RQOp3tS9QgxoAnqKz76pk25oRKO9w0797bpe84sW36pNN/sE+ovvxvSjERxi7Q4QLDiHuoutypB6wY1FvlTO+hnaUiwe7CRV8rrlIcISQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777429054; c=relaxed/simple;
	bh=+XcUgCmHYVzkVRlZdmpgyJpkPm2XOgJEyCi/gMl83YI=;
	h=To:Subject:From:Message-Id:Date; b=oLBUSAx6+8Wuk8muETGqQ1Xt1hesleoaoMVhgQFRofh28ym94bYv41HTtiDbS+Woxs7Y7PYP7dFtiuJUNSQTEWZBnaAqM73owSZrYxpI25hyEttCAs/SIQhplOJT51KkKm9RMJBmDr7fnpaCd6WIsC7SGrtw6Ke5VigcvEza2IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvn7tSr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvn7tSr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA0BC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777429053;
	bh=+XcUgCmHYVzkVRlZdmpgyJpkPm2XOgJEyCi/gMl83YI=;
	h=To:Subject:From:Date:From;
	b=pvn7tSr7GbgBH7IGzp7EtOt/l6FL+O25yYrsupF0yOJGqjzwPeGUZtYXJxtQn+mO5
	 bHVWz8G3x1Grc2ILzY3K+N7yrIhRdZuHCqgnytD11bVFTIEiqM/4ME/FsV/ctBWf53
	 myrhv8OhAOWUHXYr2MyZUYAuZE2LSfF+SG1xVZrMk1h+me+sB7fzejT4Rq/fzjtT1p
	 7Bs9034VymXGVS17Qi29eWCpmiq+nPewaX/KIrDyXbX8dUdP17Sd0VkZYQ+VjYuC9a
	 vMjSNkgR1Ql5WYcQr28NpGmhwIyLw7meUDkY0xzfMSMj2sRWfwtv+VCGUi8duPdIuX
	 XvmAMGxEZrVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A937BFF886F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742905368.31683.3849803010127144568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f219e914d929fe97dc3a687aa1630e3789df9c3101f18ff69bc79298dd9bb93d
Date: Wed, 29 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777429053
