Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFF1208B0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719661463; cv=none; b=U2EUSRQnvquiSbrktR9clZFzCCspFR+40FWrjRs/Ony7bOXHfLAyJFAlDEyGpQMa9kL/2zHkF/hr8WXFB8Qc6FlKRD6Ee0UvCnahEVpMq3AxgkDmz6DiPoi9PhvIDnoVRRylPwpR0ERhYBN1MDGVrA552NUpsAfggY/+RkC1R5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719661463; c=relaxed/simple;
	bh=xYFWjtHwF8njH2i+J7J1uCx0kajrnqTjXmiTTkqwmZw=;
	h=To:Subject:From:Message-Id:Date; b=UivvdVMxNzX7ExpwXAC+7+menjgNrzZ3EelxbOmdRuk4AeIzO5KaT6vfpiBAXZ7ODFVXZQoFraHkQs32D8vt3tQWXzAKQxUB6pXQKyfqFrmzjDFdT8d7wPc82bT0ttGKu7i5+UVLr/jzdebISZ2ZiyqPoEBxNL0U/KqTXyd2km0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeWiXfNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeWiXfNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0AAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719661462;
	bh=xYFWjtHwF8njH2i+J7J1uCx0kajrnqTjXmiTTkqwmZw=;
	h=To:Subject:From:Date:From;
	b=NeWiXfNYIdy8qu7ol+wfSglirekLJvlb/rKqvMiHJubx2WAhEpM3rpO8r6GNtG8Ai
	 ZgSlxOE01NyagAd8GW7nix2s+TnirzYGtLlW2mB8WgNGPMv4Y8D1JO6SADMKdxUZti
	 2JB297YZP114fxt9UD1sElcVsMkNtVBnoylOxCbSNEd2R1u2qOkpAtFnnnteDOKkWU
	 xWEeL+fNP9wN8mlSGSDemrylTK+1VmNRF4z/TSuBaBuU6xhk8bRnhrlHVt1Z/iejEV
	 YWhQY4EhsCJEfnmtrH3RyGm73jXCtpPE/yuUTo4xcJfbZddal1mLX+XW1129+PNlyS
	 Dv+fcb40Etkyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C740BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966146278.11231.4853607620950157371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acfb2031dd2c080cd080e7f80949d9f3e524a348e2f27a77a176d26b92d0222
Date: Sat, 29 Jun 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719661462
