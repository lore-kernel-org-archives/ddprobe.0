Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35758145B27
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783846714; cv=none; b=bLq2TyrUORsQLakOf6Xe4qBdQ2Pct5fbOs8ZVAH7EdwQdvaOfol/6GQGdgGMli6rDlIb2HivK1FMcj2u7t5VDOMFsBYM0lRqqYIxSCdR2ggcVpZVFTCoKC1HX/Uieo7xlTBnJPNrwmyPN7Xo1ySY5gHcDusy+X3a/u9/StdySiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783846714; c=relaxed/simple;
	bh=jHBHKQD9ypq4sy+KXctgz/v4tSxy7VR/8oyGbdeP+RQ=;
	h=To:Subject:From:Message-Id:Date; b=L8/djS3ANRsFc0vGyebhISWTnkyDFtOye4FYQVS0VvuC7pxwyhspfVGhNpDbeFZKf+NI9HqzDvTOfUZrH3gEFO4M1LV2SwJ7yq31KBhdWAZDRYNE3PvNoY7AvmmWHdFqyMGgRFhqltLFmkWbxqeQH9nnMsAsxb/sbCZDugjqSzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmvKziDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmvKziDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA94FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783846713;
	bh=jHBHKQD9ypq4sy+KXctgz/v4tSxy7VR/8oyGbdeP+RQ=;
	h=To:Subject:From:Date:From;
	b=MmvKziDUhAe2uxGVL1M5uuff2BqJZwKxatXjYDpcwUVyV26DbKvwaEClK9YQ7cU1k
	 yqR8sHkV0lmsug6ZIyLo6mXq+gAGDPRImE1gK6L57gWDJz2ar6lLfFkq9Ber1yWUCI
	 nXh0VO9taKr0saQgNiEbueul6o5+Nb1Gl49WpoF9bHjjMC+2+XrDicutO8IaED1two
	 luGrId4IColNtP9s7jxRVz/uworyGLJmhA9xE2fUDMMeBr1/QBh1oYexG79YKxK55l
	 y7xtwmHJaXOxKEodHCFRsEgbWyJQMXwRmQtj4+83+mLrwYSdpyWRXCVMLtO7c9gdCY
	 Fgwbx5t0QFWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8812C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384671368.930.1713582603780271733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df74fa9be7d3f26b7c1a6c14184df477c6ffe3b68210ac17f73d39880f79e65
Date: Sun, 12 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783846713
