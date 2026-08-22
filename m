Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D6819CC0F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787398234; cv=none; b=HjWw5ZuVuMSiJFMzVx1kKR8SEwUzakT5xjKwoTU/hlh6AgeumKI/8rR0vUc8fGHAZCsUPy7gjSxz94MKZCBAf5xzN/KhgCvxeWgsT0wiX+f7glRcUZiGh4c+TT9quBJ1TG4WJ2crxM1fLShQZ3azLO6NsZWO48U8yr9vO2Ib/FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787398234; c=relaxed/simple;
	bh=Lr1Mwb2W7qsBTPUI3iuHqEyVVwuw8iXp5hctFwdBeXs=;
	h=To:Subject:From:Message-Id:Date; b=CREhZOnAuvStLASodhoyDTbmYR/QFtwCPNjge8Yrz+YCCH9rjNY33SpwVoEQjVeBPCY5BMkGTWeSJzHqUrK81Vj32FOlvYUJPRVW8EQ9Q2crMfEO46EWxrTnbAZLlLhcXItcqi7V+902JXv+CAG9qBLHAQFVu/ay/PJBjL4XD1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCMNbm3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCMNbm3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB983C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787398233;
	bh=Lr1Mwb2W7qsBTPUI3iuHqEyVVwuw8iXp5hctFwdBeXs=;
	h=To:Subject:From:Date:From;
	b=YCMNbm3mjI4N/ioKxyb0mlX/z5E2lhdwLI1sXT+vKAV9giFHhqeip6UV2kwqeVvJB
	 kEf57LLFTJ+Z0oFMUFzFQJNcHGCKVw+UyLUC/l0hGVnYahhO4NIHWpG3KZ4fUPtcJS
	 Z/veSqxEvwKLpsPHBFzwLR3XE11KTFuE3FwmyUAI6jZz4lvftWeilFP6gcf7+7gB8S
	 cAmU6Y05SiBMlYI17EaS3c0fvtrU8DTLEokQ7enJazafs+V5mPcDKFbLkzDK6uorM3
	 SBSkdEH9ggdAjw0uUrZNO8f5VTT01XR5yqieIIgQC3HCDVwPzIa+W+0ia41/MPGPhK
	 Odiiy/bmQIeqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B3DC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739823368.19212.17221462451492533722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f8e7df0be90994c6fc9dbc1a2b69993c4f30fbb6443ce2fefa469d6b435704
Date: Sat, 22 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787398233
