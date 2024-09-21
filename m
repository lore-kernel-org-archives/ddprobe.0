Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C84C7462
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726913154; cv=none; b=UBsNIy30JZfyYF2x+Ld9E+MWIMXiROjLuo0o+pQxDs/gRTCfBVnEJ8pnhpcZUs6bYMCFJQoNfd5ptaioZ7Tb/bSnpf6eRGYD7AHsJi1iKNG7X4dS0qNVkkn9IWfBdPhZdQ5aYj4hV9psqtCA1KJZ1RTHNKLZEjdzRUNgRVl4PuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726913154; c=relaxed/simple;
	bh=WE4RbifnBENsDzpyP7S798/dWKSpoKX8f6IsCWYOEt0=;
	h=To:Subject:From:Message-Id:Date; b=IYMeD6/ymYmcVZt0eaSJZnRBLEFG5HmZtYW4LyDurSGle83HJHMRGIE7jrBV8Ish7CpsKQ8rZ7jSI5Wk7Yuhev1Oz8h4CFz/08TWmfatB66bo8czbIxolzItZdjd5JIh4vi4CK1mDJA9eNMUMiBlJjH18hwG9FqX+dxwRoF3q5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIAH6meK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIAH6meK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726913153;
	bh=WE4RbifnBENsDzpyP7S798/dWKSpoKX8f6IsCWYOEt0=;
	h=To:Subject:From:Date:From;
	b=SIAH6meKsdTYLIE4fMXYnM/PdMwMopZ/asGNfTiAMTp9jgMUdRQSPIhpUUuu5LVfi
	 Gfzff3xC1WIOj5M65M5Y40pdnHq+2bFxYmOoKXqmChhjBW8knbrMnzkPf9VXXzOC+J
	 1YrgkgA2IBg3WtnB9AAoAI2WfcIOpuGF6wAuTQvSsfAWHcvnf2zY2CkQ8GppFVpBWN
	 azLuWIDRtOtFgkDheNSiCvk7oSREyLAkbSWKEeUpB7jSQzJXQRrSbs4E0ucctHEXfC
	 9G/9PhCsQVoMJbKb/lwiB6g1c0DzOjyifyJodcirDWie8M6c0PAKMN1J2PYlo8/je1
	 EvEutcqgXH9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E3ACF9C70
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691315361.2699.4738171249058597349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4180413d8471d1d5faaf4683e383e56eb718aa7be4c9c92216b0c6980d2c31
Date: Sat, 21 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726913153
