Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE4C2D0C94
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784609314; cv=none; b=WaY3y1uQ2dkyxX4B2xeq+P00SxxbvZx7AQ0m/H1AxX2VEEqnnq8raKA7KySm5fay4/akVkLO7TTiPzqgcoD/QsUhY+ipuXbv+tL5r3SiyQ9bDRSUPqC0F6g0MJVxgNJmm8R17ljMMr+xZazN3gxKO/ImZsOjELaihKI7l84bvtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784609314; c=relaxed/simple;
	bh=9u4irSVAqyNC0vLb/GO97LfxkWcMsdwX7w5kdkh8XJs=;
	h=To:Subject:From:Message-Id:Date; b=hOWgLQIDRMf8kIGM1jA+0236/kNkF954k6hWJlgzC2xkZlPXg9yuJB1hcNOcrrGmyNqX+1MmgehKPoDj5yHufyhjKkt9FboQWLpklLEN/b5A4T9mfeSEIIRwd44mEXrfDrFowyWYUcg3LCDCkN0BA28Ed27B59Vaiitw2z/HQM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCo/h7tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCo/h7tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE97BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784609313;
	bh=9u4irSVAqyNC0vLb/GO97LfxkWcMsdwX7w5kdkh8XJs=;
	h=To:Subject:From:Date:From;
	b=cCo/h7tcljqXipMdHu+5yg6Fn4uTMnjd8oE2wY68LYa95ApqGRp73jYbK+PXVGmVb
	 Ub/G2pTvUbDGub2if67HkO0BB6bvb+swAMKVbMw/8przB+Ov2/ZSS5LpFxSt1+lRTe
	 nIYiAT27rmcmyIGLGgY9/Yz6YTVLIfvGp14JfHZ/BYVQWHY1Ze5b9W+POsFDf+4bOX
	 nu72qkKRp/ZZXfzMAeKHIuA4x1LLfwWmzj8ieKcWKMQZsnorb3cBkF9h8E3y2DrFic
	 NLfD1Px2nPYK5oc97GxgpL+Pg8V54wgZLpj/8qZCggvJPP2OQXzZOsJyt7KQtrVeXN
	 eQ/s7sIhVvwbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A5C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460931368.13818.12520170965299675656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad422e2553582e8156376eedcd750c78aac998e6cb75e6f3705d041897db2743
Date: Tue, 21 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784609313
