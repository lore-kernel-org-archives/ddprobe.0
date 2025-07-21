Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3050417996
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753138794; cv=none; b=aZXlAp9m98lIQOZQqUcrVAdEA2OKyrVXjncNERiC9+geXWhmAo5mP8Y+2r6tmovnrqUUMXUGPnoVhN01rwIV0h9T2E32cPJK5gsrlLQQgNCWxDbnlG98BJxuSPRrdNIO4rlBraRtrjYKgSB+Eex6q5nWTdnnvFthAQMFKpYoZ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753138794; c=relaxed/simple;
	bh=EjMPINW+sktZQEzh4qu0v3sCwJWeiloaLMBEEbyFxDw=;
	h=To:Subject:From:Message-Id:Date; b=RN85G9vJ8zPg9BOrgaKkei6zAZbqnVP+6oktB3ru5WYB6iCgcbKWBhFE6skfjxIdcX+HzeZ2mjnYlM3pVst56ovKdd9W0DGi9vOiJUnOpbnvAYs/MpNUWtv9eQOCeqGK5SS2mLMblV8vnEJm56F/Mqc2JzyvNPzZLX9Qnq+Q0f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHzXAk5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHzXAk5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753138793;
	bh=EjMPINW+sktZQEzh4qu0v3sCwJWeiloaLMBEEbyFxDw=;
	h=To:Subject:From:Date:From;
	b=KHzXAk5f1k8eXltenHq0YSs05zE7/LRGLN7GiYVPW9f0k3Ba0JbM5jh8m1yQyCNbK
	 uV8d3zHudBMwUHPIhqKsB6JDEHSjSYR1oelolUx79fVlRLZdOx+14CxSeZz2+lkZvO
	 vVlbgPMhJbwlAvxbwzWjS5yNZ1r6vL2QsutF4JoBm9W1bzulSeNNmZcNmNIIlBAAPo
	 1fdYI0UClDckuLiPR+1k9844tHGj99yjRWPi2aPobTBCypLPN92Io2UApfret5z/k9
	 u/3KPD9Mnaq91UDqgpHsVFWb9r8lS1TsGDwtr733cwzByy8+hDUzy1Jyk89M/Y+0Qa
	 zIUBkPkZ6Cpdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC12C83F26
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313879358.22691.9288549166750929614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c246be75bc375dfec81d504e9ea3319a19ea9eda67beeff1e6873e3e3571bd
Date: Mon, 21 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753138793
