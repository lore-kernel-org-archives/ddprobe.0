Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D38B25949A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735997154; cv=none; b=mXtbxj7uAyODRfllJgnwq3GwSULBxrowdD0PqSqBmjoD4/lV+Cttgr55FkopWQ+4O88wvmZiQjXx+UWepCLdefemNrWqWigd5cyels/OAUawIvgFqJozqwZFdBnkcLl8tgZa5/IJUtEtZWJAV2D+DOJoqAemAu0FBH7I7IWlhNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735997154; c=relaxed/simple;
	bh=f9G4JgNahxMzkhL82/9bI0zelsxlx/QrOx3+fGU8aA0=;
	h=To:Subject:From:Message-Id:Date; b=muqlbslnZxQoOQxTf6xTPqH18Vm4uzNkZIHrjrx7u6LMK0Hp3IOOn29PYs98kawCMRtCVD8X2DQzfqUPv1R//c7Et7XleVwhxWZ/BBMA/hVgWmcTMwNzI5FfK4oo8FQlJvFnrI9tBBLQd38MlAfZUyHdsD8AglYZT9dI+klGPb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkI/ySqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkI/ySqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2154C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735997153;
	bh=f9G4JgNahxMzkhL82/9bI0zelsxlx/QrOx3+fGU8aA0=;
	h=To:Subject:From:Date:From;
	b=nkI/ySqiR2NCZ+JP3Ue0RNxpyiQs1cISCNO6II67HVlS8iOKyiVebqzKdoLBHgfx0
	 Kr74qP0ybBnHsi2PBDagDVlNKUVWOwQwfIHzEYzZXszPia8Gve7Hh1KfhWcP+koX17
	 K/Hvu3x2y6uWxusc5u0NpLYkX/xBMpTHG4Lj0DXBBPH6HnHMLVR6YCLQ+e1HYjEJYM
	 BAH/KZp+09LY+k6ZvcjKpfiznTDI77F65afmz89u+hvDCOikpxjTt7n+pyWpqCtBYr
	 wRSHPTI/9u1k637pS74TU7rYfaBDTlvtkE+HUzAjyRJ5o0/jajwdy6DSPNVSZulWi9
	 jL+2x4dlO+puw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F52E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599715361.25305.13885999342447141362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42f98c59e5b40e47f24d14c327b06ace9ba54cecc59b371a8cfe8a67a6ba00b
Date: Sat, 04 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735997153
