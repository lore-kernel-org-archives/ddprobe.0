Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA92F29
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747466994; cv=none; b=KwBL4k3ekyUGKZuEJAtPJXRcer3TKkm4aRrJ0TXD8GsVS6PqDm34zh56CIaNmLFu2Kc75MqX9Aw8L56GjES+kmQlI4nxD4DoUd9i+r9NMOsWYy3wq2ulS54yP39YmeGMnhfnN8AXiMzMexXlDlOaGQ69UFKlp6S16dgZfUuIQmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747466994; c=relaxed/simple;
	bh=bMBgEx7MuPp2w+Wxkb/qgLrUFqr76LzRB0OHVXPXdPs=;
	h=To:Subject:From:Message-Id:Date; b=nYL1mbdojP+XwDL03ONWy24/cgAnHaZI+81odCcXhX0juYzQS4cZ4IPu4APao3D23Nfce8YZmU9LZ+Pb6dSUKkQmkowH1hQRV0hAbB5y7c35R2L8GxVKe0IsK4ruageNKfvSt4A0IP87f0wvodXWEKkesku1eSxWLwLFEJAOaow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my/oy+bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my/oy+bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49CFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747466993;
	bh=bMBgEx7MuPp2w+Wxkb/qgLrUFqr76LzRB0OHVXPXdPs=;
	h=To:Subject:From:Date:From;
	b=my/oy+bsdQcf34UeahMWa6q8zDi3T1Rep2Q8378foJve2gVy+kVsqiutAdfv7wLcJ
	 KLdA6Sg2PcRAFPgavHOCjyumHwyMLyGU41SXrhhwfHRselZuvoedyERYP+uiTogdXB
	 5Osqe0Eka7EnozW92QU9PVxqfu8GDmQPjPraK6xDE4RgP8b16TfpoL7V1avZ+iFgwA
	 h4f3qnSkyACGFWzTlTWNaJECfpfGTEwfvH1d8KWu3UT1fTyvez76SStZoU3nilJXQj
	 92BJ8wRrgVeEmvDslSYjuq1Zqx7pTMWtE7CywDPMnu19jYUamNvzDepFJTeIQZtFhh
	 qhNE22nNfjHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ADC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746699357.18461.2070131269450423339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fedca276c0fd46f3a444372f62f5fee64d2176f43b2101c5f27bc476398a3409
Date: Sat, 17 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747466993
