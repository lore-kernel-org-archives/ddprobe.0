Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBB739182A
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789182035; cv=none; b=HCWBfXDgREOylv1BRpqsgAaYV0bWCg8l/bqheoStV5syilGJIQzaZjXO/hOxtuJUFiXQGEDEK1G+xcN0H0cxU5D0HpsFpFeltbqLbSCHKbzZhvs0WQc144qz/OopzhvLH387TTCRowyYAWOezGIFU67w1Tjui6Go5GVxqtiugNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789182035; c=relaxed/simple;
	bh=PJzdexT7BIME/ybwGkRvXvy70bJzep/627WyssipUrg=;
	h=To:Subject:From:Message-Id:Date; b=FZHPWTIvbz8aTiH/0Ys3Ntu/183ZwLsuKCvZ5fZgMfv4CanSWKPKpx2MrL+L6C02DBHO1/i2YeBDSey1wfPwnjv7+0pGPNMl7kjArP9Dj5nQle+rJtplL/R8ue8Rc4So6/nH8jsnxZFsvZCsynjTwZJuaOVG1lwa4cKQOaEG3Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKG+en0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKG+en0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE550C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789182033;
	bh=PJzdexT7BIME/ybwGkRvXvy70bJzep/627WyssipUrg=;
	h=To:Subject:From:Date:From;
	b=bKG+en0lZe2FfIpPIVPygGNvjk3Chd5N0eRf2Usb5jJcAPfc6TkcFCLfUyVpN+zse
	 5qT7xVSBtHhO+BaX0ZNg8PMT5JCHaa9V4u7jzO5tQs3USchdxl62bWwmkbsq3laBNb
	 WaAojFYatmjTavhgZcOxg5IK6ZOMbdxb8UVyIoBCTGHQCd8tV1H8xs7H3Z7eBkUpxZ
	 TwNh0rl8w3uH0ExKoKgcn5o1+x1MwOZjZd8CrHa0nFqMbP6Yzab+FQQKVmtI7H3DZr
	 u5ftLnqJ/JTUhtKw03UvuJlNWdCOof1K4r+xcKuFib/9mce3nSjEAu8rvHldGXYk6N
	 +tbOAj6U3bQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBAC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918203368.7545.1908737366524743499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1943c61b3308d47bf85bb2b227b5d58c34153903f3301885da3b21bd1537e48b
Date: Sat, 12 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789182033
