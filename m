Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915640DFC1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775096134; cv=none; b=Nm5eFW2LCkxqbU6MdCuo0MZkRpuj6DbAS9MidiikI6cKhcTMBMctjfWF4IrlV3y57WnAqLuTFspIAyf+CcTZ/59/GkukZEChv97n0x7dhjt4Wapkvf8FDKyhdDoAvNd8lT4EFDfcL7zpmdsjeVEA9bJN7gvKfUBebBH+xXnD58I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775096134; c=relaxed/simple;
	bh=rCMCgyNd0/usS2S3enUM9ZdLUCX/VbXPTEbgL1q7vyk=;
	h=To:Subject:From:Message-Id:Date; b=jEG6EopXcNkLcZV+mrElM0z1kC5di3A7TB2UVY1ZBGB8cbu7YFL2fV/Ji/Z3j2e/IHt7CA1kQlY+BG1U6X1wuKlKQPWFzNvfUJ0U4nxbFCX/6lUZLCspofHtnmBVp06aSMgQZbMzTI+8kMgf9BFyT/Ireq5ovqA2NBwHYJF572o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8U26c1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8U26c1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4432C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775096133;
	bh=rCMCgyNd0/usS2S3enUM9ZdLUCX/VbXPTEbgL1q7vyk=;
	h=To:Subject:From:Date:From;
	b=S8U26c1gh4CUD9+FREICj2v2wxoGqcTKHY12oZqXr3PrZ74pyEjZCQP7PUist9BsQ
	 KE4uzoQNcWgKPZS4SGG3+8pzj6AC0j+lvsLFwh4+DrTV6NmgA62pHBrULqZTL3UWMB
	 yNu5BrAWrF9egT/NikTwL9fznatgcUYSdQ7FDqCIW8mYTp2FwKLKhV+HfH7BKDK59b
	 7+EYLOsEduH5gIQXVF3e++IPgt7j2Xhkc8aZmubr4fnHUkNaBIwYTaTvLMbOzrz92u
	 MWg3HsvHF37eujBWuiJJ7oqYTlqFkyCtJ1nVI+N3jV+mqkKSdoZNcbuLfDRBNRjUDI
	 Hp4bzpEOWzfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE6A1112261
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509613371.32588.7590980274936576593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9710547b77bb675fde99558d0895176122793b1977074e975ffd4a239e82b9
Date: Thu, 02 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775096133
