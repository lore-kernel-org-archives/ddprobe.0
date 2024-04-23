Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A998175BE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713836423; cv=none; b=k+nGTAXgZLHDamH+/q4oZ9KW43rQBSiw/NUStqOA1Xmdamq6UwJ2PPWk+fi+1v2DY6xyuPMPediIgR/g2VB+bMoGB16UvJmhu7SKAWXnMNSzuDUqMpiGyi/rzStSEe2Yxdrzb1MyJSnGaGU7XtdmrvSEAEcszqO0QT5sfEbXwxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713836423; c=relaxed/simple;
	bh=jjQnX+1fF2g2Hq3vHyl7uiydMcmGM1jl9yn3fiAnZ/U=;
	h=To:Subject:From:Message-Id:Date; b=gCQ1aXi9V0f0n/VSzeYZQN+BifU8vXkquXP4Hh4HGu25Dzg0XzCv77rBrp2orbBwkURNHQP4Rr1tVuBUhB9EIXtdmJTTMjhewyWdijdBlGgxDAuQQIGbvfSDbZielMK2dJVy8sk9Tk2S+UCTAhS8CwJv2EiXWpbW8Fy3jPCWqKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9lwYo+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9lwYo+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE99AC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713836422;
	bh=jjQnX+1fF2g2Hq3vHyl7uiydMcmGM1jl9yn3fiAnZ/U=;
	h=To:Subject:From:Date:From;
	b=V9lwYo+K6P39eA4dcCo2+QVQM3Qg8RVWnQs8+yWTJXUUhCckd2Ru15OS4UgjnipnW
	 GJtzOB5JOX4/SGWbKJPvjo7wh1BNYbcWo6hGSUMtoSO1xFUHuvr5Pz2djnRpuxXFCi
	 W+lUsglzUV3Rb12R2D7M9eMGJ7LHOR822lYQBZ/lwagZCNMfndYQrfFcR2f0O9zvVl
	 zpMCNM9gais+BBhmgJVkr+d2WtyYJ5I+CE69MaG9DNFguPPeNFzFvQStyNlWW6TUjV
	 maUFdz5lBoLoWQwALdlmh1/2gdoIUICDslViK8+VKH5IxBkH0zagPEKE/raM6q4nB1
	 LUjSwuzDgzj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD58CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383642282.17567.14825109085268651477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f208f1733a80ff6e06c3b51c031c4176e504d05c7a3291696cf4a584ff394678
Date: Tue, 23 Apr 2024 01:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713836422
