Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121CF262BD
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767346434; cv=none; b=gS22alwcPchGmPrTRH8v+MMYJf3s+dOnTVF9msbSGIdKI1LIzz1ORVwZOtHVyKr3xterPySkqTW4VRBOnyoY+OJlUuUa0g+RcqSRi5RraCNyM6uhBpnCQF2YqZ13Ts0uXifwTMPotZ7/7lmSTTwW9DTORGe2Mj2ZD8/2/JHxBN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767346434; c=relaxed/simple;
	bh=/3eVStuEOhXqItB1PE454thpBnrtjO4oUzDHDIR/fAs=;
	h=To:Subject:From:Message-Id:Date; b=d9Hb5bxFLpV81ZvUCfjeLhIVX8oVjxhrQFsqsWEwqCtlpkVGuGSEimmPygJj4l8ttT8/zHujxKe3tmqUpP7S7azwa58UDYfC1+WX9tsrrGUA6alrLPFdag1RdZM7QI+gFC5py4+T+jYgw9jiOB+yvxX5NhqCiPvftLJ2Ddbk+Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEyX/Esd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEyX/Esd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767346433;
	bh=/3eVStuEOhXqItB1PE454thpBnrtjO4oUzDHDIR/fAs=;
	h=To:Subject:From:Date:From;
	b=BEyX/EsdsVtgii2XUyTc4OclhPV+j7SLSmH9TKMI6MnhhQhYwtMYjOyxfDWuTgh2m
	 oMMAm9jrfRk/p3FjdaHsfVGneaeS3CXsI2Emu2WIfmFvumRH8/arQ+XrXcnCTr4H/3
	 tYB8J9oyz+tY0o9XIDiMJH7pzVYqfx637fmdM1WPpztKi3EbSWjkiD72FZnb1sKyyO
	 aMtpHlQVl+0vIDOinVoJdbgqPtKr9WjqYRw0VGLghvxYmz+B5747GQxSWZh2Wy5Tho
	 gWV2sSqNjgmG2JTBz8mlZu9IkOGr4ySnBw0pSW20TAJeqjZNXCo1v5oXlpJXbFPOJN
	 P/jUk58NcXSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23BE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734643357.9927.7499626775022902679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdb98b9c4849018a57805fc64973de32f17d90b0f59a41d6872c7cff2b7920a
Date: Fri, 02 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767346433
