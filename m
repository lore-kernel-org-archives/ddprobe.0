Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779FF481A6
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716646463; cv=none; b=uLdgKXW/v+oX0rie4TT4ml/J+WJ/3lkF5QUMu0JgG3Z6sQTusDzkp7VLBPCz41jmj/46JrXQM7a8uneKoV0WUqpe8xYsNg4rn7NXJeunSCT+UL3xq533126oKv4Izv5+PbhVnpjFf+OjdBlXbKBylQ03IQQTRIcRig5/J29y1No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716646463; c=relaxed/simple;
	bh=4sMitU3Et9jZua6UoRNBeatd1vxceVy8UictdbK2Z3M=;
	h=To:Subject:From:Message-Id:Date; b=aV/sDtPRHr2G32EWm9afeVzAJF6DBq3DtXstL+GmcqcMwaFVs6yw6ru9weaTWj7mieBBUauct0Ak/bAZL4SJKGhR4bpCRnDGcpM2gBTjJHE4k0FbyJyzWdzGxMu8BhuAV169Z30FVJhvTYVEL7LQPv92g3ulBrPcUa0f9nf4QG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRvuNRsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRvuNRsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADCEC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716646462;
	bh=4sMitU3Et9jZua6UoRNBeatd1vxceVy8UictdbK2Z3M=;
	h=To:Subject:From:Date:From;
	b=tRvuNRsmlWaXi8+oQ2rXXAnPWiFR0TFi9KCzs+tE0DxEY90+KySEW198ofR5ZaL+D
	 d60yLddOiHrNGitBk3SndCQIpdoDlesCWMHI3eO0Ebcpr3pAgPmrrS15ikocrakhuT
	 u5qJYaIBv8fFxouTpB5n/KomAe2SY8953tdxuzFFvlb1gqagn3/1vS8vAHaJ11tB6D
	 OpYp91iqNe2+5uHDE029KBVd+FXXALSfcaqga6dodKFHT4qknJrWSQ6UAS1SLXDFHk
	 q6EI66eMG13MzRLsT50sviufagXe7R9SbgmTLD0XBpSzHw/kCLRQd5mcsiwBvnLlER
	 9cgk7wmlhN2Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5110C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664646276.24861.10248380350866432213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20702d7de4e1003b2a2df2ac3516c1b10051659090aba6c76137dfc450774eeb
Date: Sat, 25 May 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716646462
