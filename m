Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2046E2DECBA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784489314; cv=none; b=vBJufdOAZgQGwxfv5ZpdMKcmMZ0CVYzIfW6DGck9yV3sQTpKHGcJc1peOJ43c6Ukvg/okDQ9lJEnvTyjY4zU5Nw2cQX8hRj14aNb1axSn6xj8WRbUESeNfmS1B97RA41S+tQYCk++vXcr/KWUUZgiA6MsshbDcdccso+kGdYdjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784489314; c=relaxed/simple;
	bh=Qf8WJ9ZAMwAuBUCDvT9o1MfcEngloLm1Hhn0R9BG+9w=;
	h=To:Subject:From:Message-Id:Date; b=H1DgpJq/HpGpbEpRo7WulmnJHSAgKbg8gf8hKvwE89ZpVTecIXDgww+upOc7zNruVI9WWpxYACb/23hqqMuBAEZ8TRc6dNjXv2FfNliR4X23Yy6Dc0dSV34Fl4M4w6rDU6JZJ8qijWb/0m3IkgannfGYF2eLlvlRBTqNzRtXACY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ5ZsgI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ5ZsgI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB143C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784489313;
	bh=Qf8WJ9ZAMwAuBUCDvT9o1MfcEngloLm1Hhn0R9BG+9w=;
	h=To:Subject:From:Date:From;
	b=HQ5ZsgI7oAFno915mtzBtlkX12WW5cK6cjDHIxoI6aQk1uG487VBKWaCcQyNDQSDF
	 PrKPkbNbJ9PNCMseihHrMdRr05hOJENt3giZGTssNSLl0swmStQMCMebP5rLkn4ttw
	 qXzvXlXiAAdoPIbCEZJXxPUGRfIFtQEtHSTAYfTnaZvf7TLf9vPshlhGKsyEU6ESeL
	 mUyGCLxjd5lSLwFOrAOL1KHtOHEbslVrSAMZe6EFMKFB165o/fP1QyRjbUBBTZURgy
	 SuXgzzyK89YxUx9mtCQVU+OCSLrorXdKJLdX9WEEQ0anLyKZSBL4fSLQFtgNBx9PsV
	 DMW+f0zlIHWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A60C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448931368.12929.642862074108685880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9fa5af43c3b405fbeed4453ccd77259a837dd0272eb56d2aa6628c9e5d42f8
Date: Sun, 19 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784489313
