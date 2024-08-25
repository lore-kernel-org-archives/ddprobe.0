Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497E163
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724550954; cv=none; b=J/p8wQUTo6IvOyKtOjhF2ajc8lQjaYIFtJC3TK0w8IVLppIULt/3nTsiRX5akGotS9xkyk0ry1rcqUVLPtg3TzqTlVyVobZ2lwPbr++LyrjsZhsT6eQ741VsthRJxV8t3ExWJh286okif0FhB6295Ld6QoosZsZ8RRPKHdHs2aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724550954; c=relaxed/simple;
	bh=hVNY9dnaCgoYrQlw/wF6oSflzcYRwxx95EYEg2o4fgw=;
	h=To:Subject:From:Message-Id:Date; b=EcvcOUtQg2bEr9H6BKHr200FIvDj5zKSUT13r3Ix0Ax2du/ViaTnb7sYL+qqgTquCUjs8efkwK79ohWfUpCsUruqjFw6Kk6/e+MZYFivdZzirmsficqwKPoy5Cdy8E3pQNkf5LwtTnesA2BsScHhrx8Mh5aVRwSKG8vA1Yki1w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsNhzt9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsNhzt9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE4C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724550953;
	bh=hVNY9dnaCgoYrQlw/wF6oSflzcYRwxx95EYEg2o4fgw=;
	h=To:Subject:From:Date:From;
	b=HsNhzt9O+F2T3+6r66gU+odTkhrh6P7Ri3Agd89ukpzopOOQ6NEurhKl6+ZEe3+f6
	 rEz1ODRg+AyCWuhpRpit9ZMq6rqjS38VAHx5pYNaqGRFCnIkWWCTnVVhJR+3zG8/Em
	 PBagGVzfeuVk5SSSJ2Efs0nqDhFjc/rUZ1irrbv3OHVvQteChHDHLnKmhVaDhkWMv2
	 KVvg99KTxDeo2MiBo4zOJ0OwgoUXxN473E9dxanlawicS7ZYJytw1AlrXV+EyQpLBl
	 DOYaxewZZQ09gy6hAS0T/31D63dKbwUGaq+P43fTYk046rJJFSQicSKLmZJpsjCQVW
	 E0CJKetUS1tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E0C52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455095359.12608.14132675346446014856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa3a1317bc4b9cf8a0915e81380f83c2dc671c5bf2ac3f3ee8db65b4146e280
Date: Sun, 25 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724550953
