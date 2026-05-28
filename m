Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381A82D5923
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779939154; cv=none; b=WvRRxOogsRa79qcaoiK/SChBp6jzzZxdcKo/a3bDSHyb4GEybsorrv5jmHIYADAdbkmMZlf1b+qtzKMqGVwdQ2AmIg96USkBL3mZU2KUeiSRRGctM8/nMZJSH8+iAC2oO78+aavCrIrT+Qe/6iOw8VsqrEHB8EzOxcWERx+Phoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779939154; c=relaxed/simple;
	bh=vpZ4T6p/PFRYTialXiyUD0SPqdtbtVNJdiLM9/hsp8c=;
	h=To:Subject:From:Message-Id:Date; b=cr+HYvivwPCLHFMT5+Cc25RM9QFAzF+33P3nzSUwWfrKcGvJEJ0VLNbuKgpM6WRh2To3dV2pGGW+XbisCNdWGSXVfqAtTwTHcVwuP8jXRSUycrcyIfc+1bWOSOcrZd2eeo/WsdMA7qafkz4h0/1mIolk7U//oe7KZfZJ1O+7yaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqbuodGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqbuodGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2294C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779939153;
	bh=vpZ4T6p/PFRYTialXiyUD0SPqdtbtVNJdiLM9/hsp8c=;
	h=To:Subject:From:Date:From;
	b=OqbuodGamkSF6yo5QhdFFHrjRtx6bg0qf3PObAimMn9urX2Wmnnfa7zQWVM1ZudPx
	 qJ1RwUCk89I1kCSXiUvNg4ONAoQyE2Xk5J7izwjq7TNOcBDSiUtCNh9EwhQQ6PqWqV
	 TdJyrI/bpRi4X6ffryH+7vNQOO/bPe8ddL/hOy2oRFyGtGDL+obUOG4ydppONaXJTR
	 EaHW/1dPyUsAtFW/AtiGGUzfcEDOGnymbRdt0TNSLeiDRRIYdhiK6oxQl9jFf3hWm+
	 B5Qv9wCEphtlIVohYE14vethakHaQz6CocJ6inHH6yVmggEUr9cDQCzqA1yrHE2bks
	 JJMweoZiecv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D29CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993915368.14278.14213866502534655957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b100bce278872c1f3a006cfdc1eade88b67d5fc51ba2c196154ccaf44edb340
Date: Thu, 28 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779939153
