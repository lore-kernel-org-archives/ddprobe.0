Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589D62DCF52
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782682714; cv=none; b=lYzkO8Yef9oj74zikS/W86dCceaFvmuwp0cShlvl6PCjN6jZ/8WMv3uTQE4IJnlMpE6V92jZPZzeLPPWGMKNpvKM6PCrpqiaS8b8lUnZk0yVyDLIAfTh4D14LIoc8TnhAGEL5/UqsaEjHllr6stQ8DAOZPkRm/J72TylhY06WVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782682714; c=relaxed/simple;
	bh=PSpV8DO7/A4GVIa3NyamUzaYb5rv76wnWFl7IFhJ8Cg=;
	h=To:Subject:From:Message-Id:Date; b=r4+rSNxEssbt+lymHo5rgqHwPzT0dTAIi4wZNI6muqzFCkgMMGlZ3jszYj8a3CRomU3sxfcHdbjG6h6jFeVM0Cd6FufYk9bXTKFtDREm8WycVx1P5TOqo24mOQ2LdfHIJHIaxF26er7QEr8USyB50LJkGAb/TUL5QSqL7kRgbWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8zeZx/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8zeZx/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD41AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782682713;
	bh=PSpV8DO7/A4GVIa3NyamUzaYb5rv76wnWFl7IFhJ8Cg=;
	h=To:Subject:From:Date:From;
	b=e8zeZx/Jc+553kBVizLyXQO0Qx5aQB9pMUhzfukN5pAuRn4UaWPlYLsEEfEl0CFM1
	 uMku0MlmCRESVkJ8KYlOBSYROzwAWs0HPNVa9q8drYZ5eh8L080DZhyKJ94r6UAoZu
	 WzrwWMD0JhlXauW5+w1SuMNEPqmVH8plCum0RpxaL4FY+9m6VlloevSrG5g1f2mD/R
	 KgRZULq6saoV8cskGRqYwdBajL12PKUbmXkHDzO7L2G4rna97dtMiQWsJnelkhrecL
	 oLSR2XX0Fbov9ADg9i972HgkRoUxLyXqLwpOa7KENexjbUNNsCLjpAgmyWOgUoLT+d
	 j9soNDtSCgeqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDC6C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268271373.7710.12261565206349985318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3c7567f4f7a93a96b7db9d450fd6ef2601d1798197c4b2d70e908189828302
Date: Sun, 28 Jun 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782682713
