Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3A435082F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078394; cv=none; b=IQW3fjHv1R2ZWZBk4XU6WYeuBP4sOgBzPoIy3nhZxdd4TcwEA3NZyb3CgoJk3oFfcNQOu7HHjfpM38lj97R6mIYy9h4mxb3Qei/DaC9bikvIgMwd7ytM2gJ1OiaTxvbeMY5f1XhsMLcY9GowCSXIAhoFEuPKpWjf6QYoBG8jNMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078394; c=relaxed/simple;
	bh=TMMNF4oeHLpVR78wJNPdWVk/5IE6eKuo+RWIJ5PmHWI=;
	h=To:Subject:From:Message-Id:Date; b=IQBC7QZ57E+VuH18yWUDUndr6TFwlgxqplm0DZVo/hiDn5c1fgZBz8mwvTYWxhMRNUberxjlgO1xJCOo9hA3ot1YBtCMuQmOmchvn6LuAljERXdOD/TPSvGJdhdgrsFV+NuDaDVdUN8Zd9pxncfq6TpE0Vk5PUP69lrcvpL669c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frlpZk2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frlpZk2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D1C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757078393;
	bh=TMMNF4oeHLpVR78wJNPdWVk/5IE6eKuo+RWIJ5PmHWI=;
	h=To:Subject:From:Date:From;
	b=frlpZk2IOgm6UqrCFBa3pzPuBxpnMIWwNTrxykyAvimV/GcTfkITtYACzPtro8rHg
	 xCyXjQJtYTjybOjN7FCHWIONGbkgw0YQNs38gq7GzaN7QBa8xB7DTlOdV7kY4nMSsO
	 MPVd8mLps55k28JUqFsDcNJSvh0UwZkiZXQsD3m/TXC9Hi9F02sCfzKe3kL8WuQ1HX
	 eETmgbG/V4S0LT5YiNS+mFMrO5zN2ni7VUENhzhJurB1sdctmwKsVT8RzTH7DbJ6Xk
	 5XC0CwS+X5mP2plN4PWLKDHYUwfDjmQxWlXlqzF2uErHCmeB0c6Kf+B3Q+tAA7fNe0
	 1UcwcLKgauOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC69CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707839358.27057.8435855516452968707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f573b5a14d6e9d211bce20e9b5ed6f65038a3dbea1ace97f1138c9f16ca96212
Date: Fri, 05 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757078393
