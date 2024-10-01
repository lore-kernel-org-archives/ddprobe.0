Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E352BAF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727768754; cv=none; b=VSIXvW56eGleTqhNuHLKWnWLOOFlR1vDlx2lgYyzXH19NFBP9BFaO9oixc91FATxRy7cO1mYo1/fyY6IzAfMrwxo54BBC9r9d+B5eAfjMjJvyr/WGrgFmBkrA9Vg/kvLyzQrOBNE+BHabOqgppp6Iem4Y6e6d/2XRtJz+dL2wS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727768754; c=relaxed/simple;
	bh=8dkccigv5YVRaF/QSvbAMJfG6g+6Sun95piaid55L4k=;
	h=To:Subject:From:Message-Id:Date; b=JVI4BnVj4f9Von3d3NI2GHd/z2KknWYiYW8dDaD326M1Ao1BkUNTjKNdezAWFu+kjpPTCfRukqg32EQEXMYniVFfSpTO0s0unV6yvDkI37fL9uN+f8xDcOTysdpK3tYGTF8CJ4AnnlVcUDhidY/tRq9E8Wpv9fl19fBTskNQNz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UowZHdj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UowZHdj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE8C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727768753;
	bh=8dkccigv5YVRaF/QSvbAMJfG6g+6Sun95piaid55L4k=;
	h=To:Subject:From:Date:From;
	b=UowZHdj4H0JbYZYrbd/NXx52gem7a8OXLa82NHjT/K6BsmuwOxkqHrOPrReRVAI6Y
	 2+/BtrYGdZI2lM/NCbSTaz9v+LVairgUQDocrIgolbngdircDEHTX6NsIK9UgaGT1b
	 FTK1q7td1mFqJqUzAm4hQS9sGmttqukmePmkwn4qsHS7nMdycMWUQuEc8g2gtPhM/+
	 m6cGa/oBF7DRZigiu4tQNUrVvuZHFkejLpcQwPRhE/nBtllmMp1i1zrhSpIAQTqhu/
	 LoGs7Pd2VaS2lD6OdcYuzc5Ow15CNBFUhDEMLgvrdhPWyIiiQdpGi3i5YhqUO2Gkh0
	 61AzzRS/jzYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92021CE7CE2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776875358.476.6106115437531552952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8604b1dae389a3f342b1f6c36ed59e3eca891a4cd46abab6f623398e7b926664
Date: Tue, 01 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727768753
