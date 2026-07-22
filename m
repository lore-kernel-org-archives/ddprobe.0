Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB54247D92E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784714314; cv=none; b=M2L8iPMIZFXUWd/OJ7/cv8k4bIht78emG1UR8US+L4EVm20DuahBebtMsyxILvipjqikTxluFNlkCURdDsGpeXLFvKlOpBuWjzcsQoEac81tb1jyAn3VSGzZqqDdfmp0YQUoEaVuw/aje4x6guPPCktnw8I1/c1TN5Nlw6hT1ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784714314; c=relaxed/simple;
	bh=IGgyUTDOG/w84/dF1Cho2gTXAdFaU/uVdyIO1zjLb1g=;
	h=To:Subject:From:Message-Id:Date; b=o36QjyVwWAshlcQ1vP/Dqt99VUfC5ZeV0SLxw8DujAN5kVd7er9+vBAepviuIGRMu1CmHlOzFxlkmzmMYD2qAx4AAIU+uLm4b2uky0r/6fk4DWiiFYMvDyRSJag/3wrDkKwTwhF2DQsXNL+eITynfZyDxYdn84cP+3n3J18671E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx9gnldb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx9gnldb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F0CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784714314;
	bh=IGgyUTDOG/w84/dF1Cho2gTXAdFaU/uVdyIO1zjLb1g=;
	h=To:Subject:From:Date:From;
	b=Jx9gnldbaJ15mVBwKo16JdV9v/GH1lGe0s7YyhLaz+/+Nu5I7TAJf4HUNkAIfEF+C
	 ckBXjRWRrsGkZWkvYZmUi8jBkwC/pIeQhMmUQQ1jJZbAvr4zOzuXLhsOFHPlOxri48
	 Eldp/JV1KcgxnJml2xPNuuCsGT0GV4rog2VF1W1L3FVOAJEF0x9T/AFperZ9tb2Jkr
	 S4l4MQ5SeSwbgZdX3cF7fQG777KSys6Dvny7oQladLKpu4zQALaRm7J5BUkzhfBKL4
	 Cls5zH2kD9gANSawKR1Kf2OSufC7ZG8uwWdEdvlNzSYJR9vlfgltmTVt0v41T+O6z8
	 PM/8UL/jSBstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08407C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:58:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471431396.27109.4992733142317000492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495f33bced1c87e2085b05ca8b5bbf92bb6a94e8cf3fc86db5d49bb71c37ea08
Date: Wed, 22 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784714313
