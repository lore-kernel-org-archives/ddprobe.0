Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACB5191F91
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781957194; cv=none; b=k6P7ieQBLGoIrrSIchUzMbGWO44ZYKPgGbT4FHz1uBYsarRtaGwN7Yf4l5WL/OQLPu++o10Aww131tWrtUPfWnbFVy1QY+tTYl4Zp/F1jUViqxgrbUb5beFAec+ycCAH3M6Xxhj3+Exs/yzSdZ93Fr7YWlG68+vWDSi3ODsdZ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781957194; c=relaxed/simple;
	bh=kfb/k0RxPFDAOkToOH02d9RcFCDZqhN+7jkYMiY5b3w=;
	h=To:Subject:From:Message-Id:Date; b=uoPpONyxJjqYfeuJWSmeAt4ulk9eZ5uvuS3rqKKrKlMCyQ8SIeVcbFxP6XGltmx/XZT7xXWYngckq5Vid3SWrjD5k5YcTP+15aw2zDlMIkJlW2WZQ0AYY3p9OYb/obYfq3gA529wLV92YoDywtTNqry1Iep6+G6mfo9FOJ4aEiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqd/8HQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqd/8HQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30C6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781957193;
	bh=kfb/k0RxPFDAOkToOH02d9RcFCDZqhN+7jkYMiY5b3w=;
	h=To:Subject:From:Date:From;
	b=mqd/8HQMwN5/nRumk1XWKxJB8nMMyD09THLb27UscmKOTcLeNw9m7pXZIpavg3xZT
	 E3MsMCrnfl7CS7UExUm16+ORH+eXsDF1LFl6fuNy3IAECrPvJPO+dFXV42dl4CY+Rw
	 31Lcy84/Z99QS4uUpBiw7UYX4pFT3/f4OMuCFosPZ1DvUUsLAD8cpTVWipC30YRVyD
	 JdG5011k1JEkDVXsOv8y9F0Q4ObyXP2TPSoEV0es7fUy+Vz5foKVZDNApa9ASUoSd/
	 mBd82WKU+hR5JmrZKNCD3fvS5goFb+gma+vkhmYpLpkRMw4A+VOPF7Oeyvix1TVxFS
	 a9y8TmXfOWITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B3FCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195719372.8290.3212951413382821612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406f8a6e9b0d27c64465ee8a7f9cdf5bd76972e8c1ab67ec070a3fbea992d24e
Date: Sat, 20 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781957193
