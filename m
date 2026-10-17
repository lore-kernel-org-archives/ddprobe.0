Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C323F1061
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792234234; cv=none; b=dudPOVWdtEDN5pPPXkQwt9qQVPBEyqhvzc4lmQhGYjIJd7+g/RirJGsWdO0bFqtI4zuia6vDudoIG1LMBr+vuXlL1vc+m3eIH3Xusvlpe44T8lP6lZgvchFKf8e7Bj2U3tfTte2XbV5TBL+KlEJrlDQZpE00uLdL2qGplJCUGAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792234234; c=relaxed/simple;
	bh=d7Fs2hUrBJ5ABe2R2iUD3Kl1BJ19LwwysIgqBnDEmks=;
	h=To:Subject:From:Message-Id:Date; b=tdPz4AHCrJjIAMyiVVRncFpg/uwRaBbV+XR6QwW69oavwSLkAFoduNrrq8lYVNnTSXxz/Del1CsVgZlzDqXjw5sTl2fIY9iy4FwBf2T3nsdUzTMcxgXKoQmtWBme9+XXqOx8mDz7NIqaoxSu0B8kcJFLpiGj8mb7mEfvNA0KULs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFJ7P1TP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFJ7P1TP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DD7C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792234233;
	bh=d7Fs2hUrBJ5ABe2R2iUD3Kl1BJ19LwwysIgqBnDEmks=;
	h=To:Subject:From:Date:From;
	b=rFJ7P1TP8TmNgpPhdZWyDxVXZ7GpyvUBWTvODuE/9NBggc9rI5ZdKPhOQg97YyFY7
	 7bGUfD0itNW1IOtjdziRYbhzFbYIfiZWY+CS2GtQjg+Gk7QJwax4iRqNBtJmua6x9j
	 2nfcUhGFLnskLB4QgrcYht5cgAPOq1pazALIi3bIbm0SsUnYQsOeU9/E7nx0GcnAnV
	 R2vSMT5gGyojyrcEB7kocOSbZick3lELaRAg4G3Ac8RU/Zc6D0FHVn9sf6Dxummzf8
	 4DC3QbZsBbuqzgbvp8vmBWOupXckYyCSDaJatqER0vVg2s21cCBZU+ooXFpw3uqVVB
	 el4R3BA7F2hVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ED9CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223423369.26043.14672763744247323798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a57c943b63ce02533f977f20793ab3c1f7c8d3b597baeff5fb080816d0a675
Date: Sat, 17 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792234233
