Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822029BD88
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776916054; cv=none; b=eawYwcmu6NTZlEZsnB4Y4JW1CmMrQtSwvuqtZI8r8uTtdMfbJHCUJaHDbTX0PZlaX3uVugsSASENRiI19dxEQRSF1gAUXZElJMDKi6l/QgZeVS+jmPu9G/gBwWhphb9Ks0QCe1GsgD5EUxTWviN7Wgm7wajIQMLk3ws+nJczbdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776916054; c=relaxed/simple;
	bh=ttQMsrEe20CIovKWgYq34PgMz8B1u2qXDFTAh9gTVoA=;
	h=To:Subject:From:Message-Id:Date; b=mLUI2iJrfkAOxVPz73wuPYjuJc1P+BTxVLzyGXDRk2muB/a0JOq6lUq5JuPus9Bvhy1olvsg3HSTDVShKabLGSVmAHXEzpR1jgM7NnUECkPhJ1VPD/kUGbcbDET06sMQAPEm6DCR8pQHlOMrUg6tZUvazLrH1tEwUjHl6bMFxac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkY8FfhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkY8FfhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3E2C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776916053;
	bh=ttQMsrEe20CIovKWgYq34PgMz8B1u2qXDFTAh9gTVoA=;
	h=To:Subject:From:Date:From;
	b=mkY8FfhRPSnlPfsDs9vnJ+rzE0IyeuQ4/B4DfN/f84oY5JG/VmVGF6v3P21dnFM4D
	 za9LOQjARoFsBDtsM8TBPTLIKpompFteOV38VOZl1Qtfsugr+PYbwg9lIpbR5wot9U
	 bw82ETM1ZLtPBESK9HeLugZveEuoeAN5qdTD91ip5mvHMmdrMqJHHLOYx3juFrzhaw
	 ivLNjUXwmaYMTRjYAO/vr1bsmySvHUNtF3lF4GFwgReSSZly+YXsYB9GUwOKaJ9U5x
	 s717+VHszfcPBM85EVCO2YO4LgQiCcRe81pUlO1SX+euC//GVJIkZuNwk8Ol2IRzqm
	 LHZsT1PXy6oiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA68FAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691605368.2939.3358094862951830034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc8a0f8392ff6c2dacb0c390d0c959b60467beab8b62380937a5a26183eabf5
Date: Thu, 23 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776916053
