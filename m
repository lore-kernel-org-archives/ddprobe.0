Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8D313F43B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741980534; cv=none; b=aAlHUgQELtZpAogRgRcHYqPMNoZmRZTeA2yt2/pJBqvF9ef7RtDVXw7FVJuvTGLZ4bgms9ZTdlKDCFLwGcBw6sNwIQ1YerrRXTYPlTz4Svdf2OEGzQKftxSWkIu2ZQGuEedHyLh7RH2U+MpXBOJpn56b6oWlXjURMTZgw0LBuPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741980534; c=relaxed/simple;
	bh=4HRLpFc0wSSZ5N8cSCTdclhYbqoz2xGJ45GVIBTI180=;
	h=To:Subject:From:Message-Id:Date; b=caxSHHAv+DFRW88JWv8ieOrtIAa5NNzA5MNTd8oaDO13R8eweNzru0gbqh3IUYxVRZtyK5kdBa4eXGVqy6mN4g3JUcHEmzvIiv7a3zjVJakytT9TkgZbyqDl706SIIIKWAIYXScZmtCkDaTiH18meuIKvzfyUXgWAesjQqZL8EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlrBeOUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlrBeOUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C07C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741980533;
	bh=4HRLpFc0wSSZ5N8cSCTdclhYbqoz2xGJ45GVIBTI180=;
	h=To:Subject:From:Date:From;
	b=NlrBeOUn+TexvOFTU0B6itTZLL72KtWoA4pCR+VcjP4ZqiribJwc2yndUA9TurYbB
	 yrdUKAdruDumgMuIhc9H/Zc4OgCSebZdfy1NkehTdiGxvghLVOi+JxVivUzufLCRvK
	 rZys1WxWbG630MCnFT3wPzmobcsNcmfR1BW2YPtNV3TTiXt3jy81sRHTYCLjg80vQQ
	 A0YrQo6A7LvdpoVebSE7kUsq3w5mkdecrtBxbjTRbQaVahoKXQS8zkRtef4nUOee5b
	 jk6Amob2f1TVdhh3D+13NiNBUKtkek4nlbdnp+3iBQbFhr6gBrfUxQlzt5FgZ5+FYq
	 U/re723GqBgwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62B3C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198053366.25487.14003452363382291700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d771ef8473446cc97a24e084fc9e1c02ab6c02f74d2932a58dbf3ef31dd65ba
Date: Fri, 14 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741980533
