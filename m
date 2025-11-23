Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DFA15530C
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763886114; cv=none; b=rK+gYjoB7uzxkTjGGDSuf0EtAxIsYO9vVi+PhkyKt7lIbREwm8yw+fy/6hiQ6B6DHfFPuCrU1vgja+1VP9rnSrHfT5jL8rcRT8zbVZo5SP25FvfBoepTPVDLxElWed6k3Oe6TIJeIPqLfOC/fBUT40PM+Jou90GTxce//jA06lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763886114; c=relaxed/simple;
	bh=WQUA8TygCPdSb7EPtLYkm9xfHwW9r8pjvCvII+RS+So=;
	h=To:Subject:From:Message-Id:Date; b=FNbEF56njklj23jeLw0ojcG1pHkqgRyZqHvRQUnPPl/6GoTfEoA63Jslat71nDie8jXwJu44S+PI0UuTHNoQCgNYtcA9JO8UoXjxUKaGRtggfpW/jm0HNClBY3MtNHgbTANb1wr3gp9csuLtam9v5eBWNtwmNrS5nIP5d6DHXWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld2KE9Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld2KE9Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763886113;
	bh=WQUA8TygCPdSb7EPtLYkm9xfHwW9r8pjvCvII+RS+So=;
	h=To:Subject:From:Date:From;
	b=Ld2KE9TblOdrOahN3fKov75Jk9nNwVsTEtdh79lh+Uo6ffKG70GpuXkAJIiNCRhu5
	 Rwj6qUWRP+jAbVwASxPtKUomxENiaAMZstlbExcs2qPCAq3WZucdbsTM0RvnLQ7GEr
	 qyyiIeq/NRdcQBC8tvi86DYNFop8CByUF74A4dEAHOOvNM25WZFhu6tSWJEdz2VsGl
	 m6gZ49UvHPRzw/fW/Gs5bieIfVFyhGeJ+jGvCPPunGEJ0Rypf/JU5EX5ha2TQM/qzS
	 eKqCwb1i2oMDSoAWE91NrO52dpa9OfvEtR0Wt9/gy5822JtmLZPWRfcgWu16Hy3jiz
	 +7mqzIkBFR/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529CCFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388611358.15213.9941578342121680461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43b95be7bd908f0f82974fd813b049794743ad0b6517a481530eb9c793c72bc
Date: Sun, 23 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763886113
