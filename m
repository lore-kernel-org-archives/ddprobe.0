Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ED0341AA9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763719314; cv=none; b=JxSskdzKabwhnNi+tEJyiZCIGm3Nl5oAsGSOui5I7G4djFFOBdvrwP95q6e84T8A+KDr94S1nH1Ex3hxM0iJ3cjsQFdSCVpb7GFsB90IStdTsbTXfWfZy9ujMj3bf2ZlN0S27aBH53YYh8ypSi0Tn/MUOoTNfM2vUvFeGF/rBrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763719314; c=relaxed/simple;
	bh=2QrGN0kamJbSbN5XV0Qc04Jhk6AUAQMHt4xORPtRrcc=;
	h=To:Subject:From:Message-Id:Date; b=HMcuYNzgnaMp9dSgZc/cXn4hAgNj42cPbusQerQvPdYZhXu8S1Jr+FVGgkxB07I4p2vBCdycG9Tkm3mkdpqcyX6lV+MAt6Yon6ClvxHp1P81FyJevqIC6wfjT3+lVSMBxjZGcEo/IIeg9IVv8ep0YpgPYCo2/p3i3DpnZQvJqLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/OF2whe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/OF2whe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A178DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763719313;
	bh=2QrGN0kamJbSbN5XV0Qc04Jhk6AUAQMHt4xORPtRrcc=;
	h=To:Subject:From:Date:From;
	b=Z/OF2whed2lu3qZeEu1HiQYVNBd9cZKKJ9EN586hCeMLCXcfnpUHCWdMiIcy5ihqA
	 JqTMwLbZboiFpq3Wp8wFr7F16x5Fer21M41UB2gChlpY6ikbl4hKpmMYP4w7c2totw
	 BiqRlwHQ5/Ew5m47CBNLoOmAM97JrnE1a9A2D+n5Uc+r3lWNr1bqS8pmU+2DIaYsRe
	 apzUYStZvHbgnjBfiAxwoZrkoORfAG4wWv/aLIPAnXilHhvGLWt5FuukocAhA4frTd
	 KWAu6pp3P9cWY0HWVKt5Ut8fpunufv8DIa5pfP314ExqOoRgYHb+Sytm4hpGwtcuNH
	 jGAQXc4wqNtFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D6CFA765
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371931358.19694.17034005780104319869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7925722f987b1a54d0348b9825b3503bbd918a3b9fe425e25183e79e0d146976
Date: Fri, 21 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763719313
