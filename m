Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0634738D693
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773180894; cv=none; b=RRPGSIz4nZR3keltmzITrkTYNlisAAgpXRLyJU6MvhpQ3iWFJLXtXnA3j3CnM11r7B8op86spNA3KHzAhjUWyhktZ3tsL5Ar5yOB5BW2XBIKw3FZhZ0Q8rCG5/YDgYS/mnsq6W/caR4SL9/fliWk7Tlg3OYJgu/GgbBM8zynuW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773180894; c=relaxed/simple;
	bh=sqh24RfWse3adXzu56dJY0tTChAFzvL6l9jgPlA3RS8=;
	h=To:Subject:From:Message-Id:Date; b=VsPYLUS4oe7teuAANFYiKzhUafNZLB6KDtaFm2oGqLu0YlvWupY1ma1xiHDw8PWMzAbUYdrmAzQ19ezjWVTzCQj3EaAgdKijXH/gPTKY9z/sSs49CYbPqQ9zDzvFf+ROSaqhJVLHgF0qCc9hkjcu0LE5Sd2um/qonQ3V5Ti1Tc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR7zj6Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR7zj6Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD34DC19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773180893;
	bh=sqh24RfWse3adXzu56dJY0tTChAFzvL6l9jgPlA3RS8=;
	h=To:Subject:From:Date:From;
	b=YR7zj6Xg1sw8rJDLjTgK2G1fi5Dzw0aoa335I2K1lUqRTeKnThNA3nDrZ5IsIeTZK
	 Jk7HbnQIcKSkPlk+T9haAWvv7YLO8FAPVLrxWg9nxJ4YU6XpJA2dvoNtEfhsOeZyj9
	 WQLjLzFv/JlIDM63zQVFlk4DLSdc4IKl+YIMPXO4ovhZ6TpvRH4kl0mPQ32OZJ/5E5
	 FLzLcA6IiemoeMWd8k3Hz4ZvjNhSO93n6sD0cvu9cZJZ1uV0yaXcbzNaUJq/ZOT3Hl
	 bc4Y1oCQ246x3/fSpy+MMFFym91GBz/bnUPl18E2o5wkW6IwBgZ6Adk1ZQqoKlxMAS
	 sssRdFFMSfmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE49FD88C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318089362.13392.9479433731861822565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d39f9b026b92d04e9e9ac85e838993b37543ad3c7458d54768769797137f57
Date: Tue, 10 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773180893
