Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FF123185D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769893434; cv=none; b=nBVaG7YCXJ9A6ZciOjnYs84LLzJLdGFZXHHUR18SLdYNwdOAg1FYjc+8g24DTW3lcXRcL6G/kMQBmoxDPbXsBQFaLsmohotlt1EDOkw8AfOGkWLHU4pk+rx1p63LbsNdAtnTISx1vXmM3FfVYS+U48Zo4qkQxU/i8Z4bSn6kuK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769893434; c=relaxed/simple;
	bh=oQXumhotqCe1NLr1hOu74OupawlDt6IZsXmcRBFn3eA=;
	h=To:Subject:From:Message-Id:Date; b=sP3Yj+YlgIeFL8/V1JoPE4DVTz9tf+AoD6tpI8+e0gkupNDZkiafR93h0QQXWe42CRc3VNVsgOgcf+l2rvXKPC7+0Cv7yZrmhGwwgQXvsppaeqHwwj5QO4mCkWiL1M0mqfdoKPtkTHWR69JHhQ6kun8czOc29I1uf4Jmork0zKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHk506TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHk506TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A79C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769893433;
	bh=oQXumhotqCe1NLr1hOu74OupawlDt6IZsXmcRBFn3eA=;
	h=To:Subject:From:Date:From;
	b=tHk506TMYFBUgaNQttCjxkbSJtZTXw5gqx1FZVQJ6w/NlldUl+Nkz1GhhS5KiilZx
	 DsLlAUgdE5xFgcA2z/jsb4UbVaI6LZ2HijGKPxycJqx44s/PvEMIjszX4NteZf3N9c
	 YnUVO+0nTIfkxUOGrR6Dtr+1L3TIHFLp6MsNXbf83YFEnFlyYPSn2R1NgaIdQN+X0F
	 Ad3nFzUIBb7qovcg2hqDi1awtGK4zBkBd/wr9vrVae7VOFYf4K0oOTPish4j6TIClU
	 HTABstvvV8+8f94/zGY2F2oL9yRZ2rliBCtgGOMbhn54Pi0u3K4WZYr8lbIAoBHr9Q
	 /Z1GJPOcjql8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C0E7C6E8
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989343357.20102.10422228581200291929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d50c93f56e09fe2b15bf95983844045efdc1408af145a0a59f9ffbd00abd20
Date: Sat, 31 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769893433
