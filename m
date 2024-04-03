Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10584F613
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712149097; cv=none; b=PWr/KnVnVT1/OGZU9qMKLnfRL3u+nnunvUgAZepxhFrIwGwdh+1nNO2tmexIPAlk45Utbi8b7ZhYXAkLx8Hn6Ma/8FbCDfa8yh0DqIsYxoCtA9SmSuHqdG5rdrqTY68KTSI7EcSC8gxYnQRsgUM0+dmgfPDYR5bHaG0Loh43jr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712149097; c=relaxed/simple;
	bh=A2AWEoEVAshZTQinJOSLCbgf71uEKcoXmb8Hg1oC/ag=;
	h=To:Subject:From:Message-Id:Date; b=YFpG+NpSFbrPAh+h3p1FzhFd+Sdl3l6JwGIun4tXfa43bdK5o3tJVu/46DrNy7MAcKbwb0mnuzdTMUCjtEhhEMSjDE3kwVgq0UjwYHglupHVyLUZrUUOhBlt723raF2Kg/3mdvNUZ/HJhaZZxVRHadsqkqGslS88cPJh37RKFfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmZnuA6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmZnuA6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711D6C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712149096;
	bh=A2AWEoEVAshZTQinJOSLCbgf71uEKcoXmb8Hg1oC/ag=;
	h=To:Subject:From:Date:From;
	b=SmZnuA6hUGIWCjml08OAel2epxYCIWMgVSHL3I1qIyENPRre5mVv4ezLDJJ9E6iZF
	 U82lC3r3Z0207BgRo6BBPRtltMOOSOHOzUF5VojgN6T3Zs/ZUKm5m8MnNBOckh/DuI
	 hxXInPk5ilWHfkA97DplZlKtsLd6WpQzOPHFst7ngqsmGsQRLgiCNEwB+ms7p1yVNX
	 AMsURo4LZ4ivcsxn4sXjNBGrn/9ZQ/lovV+Tz73kCcJLtbTWEwhnpYRR7Pk7UP230q
	 XrRjR9ONdkQ/DPhsv82e/O3rD16kwA/YnSsKZjK/B6RanpqttyOcdgqwkl3PHU+n9Q
	 PwO+/N+ccrt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9DBCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171214909637.13649.7375087379554057575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f729248d22adf81d3e460aca19acd8ca34f3dffb84ccf8da56bad55dfed9be91
Date: Wed, 03 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712149096
