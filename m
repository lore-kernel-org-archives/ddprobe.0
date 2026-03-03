Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7D63597B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772514294; cv=none; b=DL4AtIXVBF5B0Xc/yElKJjJtAFz3FgCF2JLKzNoaw7hY0VWJF6lVqEm9MfCH/DN6HLITJ6Qa1abzcv6H71lMuIWRBuXR/8QDcRchsom5qCRzQ7wTqtjmDq5L/rQ/ACqVhHXsIjYQN4IOySGlDx0XGziDXzHspImC8AWky6p3lP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772514294; c=relaxed/simple;
	bh=eZWnp0Thoz4yOBUyfejIVWlZfU4x6xn6lTB7q4CRdrk=;
	h=To:Subject:From:Message-Id:Date; b=ZiCim0g890WlsD6O2Ow+GH79XZ3USddCOpqnsD2wfgYy0WyOtQMtgkDj5pyWidF2TUlniRD260kFj2DTrdru4CDlVw6DmjLFG2NGUXjUQPBgQglbV40ZjgVh4Smy6UXeC6mc4f1N+74klud7O0+WIiWpXWD9fHmbp24awoq3uyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7bsR86n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7bsR86n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B813BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772514293;
	bh=eZWnp0Thoz4yOBUyfejIVWlZfU4x6xn6lTB7q4CRdrk=;
	h=To:Subject:From:Date:From;
	b=h7bsR86nWu49bd3AkEOilrBe4WwYuye7q5w2aMjfFfxGZHM65Qfo0gZ9T3Cq5HmRZ
	 8c8vFDlysUYYFN6mTOplsk5gfp1oVzdklF9qTphzJvvjNJhS5CUh9DIIbuzIeaHf2J
	 Hw17dXTfp5RbKy2mPqwvzIgjcmUAAU/lzV/w7cLmfyfHJmLh6R+uCpuY3Q6m5Yi95y
	 7o3slejvrhMzT9nllNd1j+m7905GxKI/FynUQvTA3TZ8GGByd8zPUuH9VbmiRgUZON
	 pfwqSC6MarEA1TAM0Nl9+/xGaZ+OToj2/TJUbcHk1RAeNWbDazmsRRTmljqquY99WJ
	 Tv9/zNDobXuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F815E67A63
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251429361.25882.6902501387149653528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01895ab8fb21c3294f5860ae1e6f372fba6f163bb9094a43e90de72b12fc0fd7
Date: Tue, 03 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772514293
