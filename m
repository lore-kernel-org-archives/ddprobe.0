Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E21A285
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766867634; cv=none; b=MpIkQnx2s1ySUH8AHJjovY8oFDw4QxZ8aj77JzOAi+aS2tUNMpGgMiuyo21lTEQaF2EYRV8oMrTzPzYQa7u8AqDxPN2w5MAD7h2d/U29ROk6KxUG5jrt9VyThoyMb5esdpBWY8uWKR2/XF5y7rTEql6SsFzf9rja0Umd88S9qz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766867634; c=relaxed/simple;
	bh=maiD6+MQEfoPfT2dOBgm2c2tvBPRCbTEywQj2XG9C3E=;
	h=To:Subject:From:Message-Id:Date; b=MXHGpfJJQJRB3NkVcBzgPnoNL7FyH5zHj1W/aoAOjy5BFmPJTa81xw02e7ZCx/abnSZ739jLL9owMbVof2zWeTXSOELhBuM1F5HrSjjG87jA3Hz14Upc9ItQ9FXLFrRrOIME6Em2GF0RCcHEG27KKhnv+dqy+QZyjFZHdn8VFcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHTZqIpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHTZqIpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C56C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766867633;
	bh=maiD6+MQEfoPfT2dOBgm2c2tvBPRCbTEywQj2XG9C3E=;
	h=To:Subject:From:Date:From;
	b=eHTZqIpmBOb71/y6Ddl5rvfyQ491gDWH30xfpT9YazWVDoYnCZRGCKSXLM5GYqOf9
	 1XUlg47mocz63jJtj4CfhYAL/D5GudzSROUgG9THUq9dpFrAqwRJ7qSyYnt1EtWbEL
	 vdwa0+T3L32JcEnfZ8gPvKSPmomSFGIxhEpnVO8SUE+mLlb1GIoyam5un0stRhTKjA
	 1N4xUcQmaOSZ/MfCj/wcjmhwFh6ZCu43tBc4Je1TQqLz44jqKBbpDNcuyvG0aEcxIo
	 HPE3Ig1HWAC16ucNfDBWwb2F07ryJ4U48sLg1HKq9EB1kwQzpaTAKn19R7GW/pGoJM
	 yuyBfZgHY9PEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F52CE92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686763361.17531.10654439350466484111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f0d86b957bb243c7df9f97201aad26986f2325df4dc64d9741ab8b6d581083
Date: Sat, 27 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766867633
