Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1E1191497
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720616783; cv=none; b=d904rtQkOGbQ9Dgc08osIVBLyn/3GheLKdH4ZCg2J0UxM6+eDE/D7Nt76VrezHKJHeQXbNIvqTrALIppCjKO5KG0Uo3n67sPOGv6Vn24QX0j1v2raLjYzaYpBbIAp0Qv3Z6Zn/X73FkTudzXxPhOnwmMcIiW45XAtMLBVs5TFbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720616783; c=relaxed/simple;
	bh=sp6Whb5vuFq+pAX6BZi1mE4Yb9bm0mGmFAUPTCM8Iss=;
	h=To:Subject:From:Message-Id:Date; b=HNzn9Y85C7CuOzuvPYNGYYIHjeIz4kYdH7nVa2spXXHJbZ2fx9imHz+nfKMgUPeuMBr9dHYs56X0eO+sjs5KHQOAKUjC3PJ1p2wc1cpWFGO8gDqZESPR40f+XrSPODn5pBOmYuonGqFPtTItBLPpqHQB25DcAK7Xj6sWiibKW8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdw+qx0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdw+qx0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC93C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720616782;
	bh=sp6Whb5vuFq+pAX6BZi1mE4Yb9bm0mGmFAUPTCM8Iss=;
	h=To:Subject:From:Date:From;
	b=kdw+qx0hHmnGh07NI3QL6JnnFDZtSKJJggavP99SyD+pxsH8BxHpXyyi1WoSMVsDX
	 //fJhKYmH0HDFkMkSpZVisMUNrkthu5ISFVns1GtrW3S0D0w2KMvLqzCvPCJYgpJWr
	 ttpk72j7n42vHVlgb8b5n/YYsf+OO2tmKw29PMUxNNK8rlrhFbhC+zCSOCaFIa2Yjh
	 TzxUTm91Q8oMWgS4cmjsCDBCamraMwyIgKDAjVJlMMZkO9gHEH9djAKUUmUVQc+dwG
	 gIFE3dzAHLW7CZNlTCfLtO8R+4WGo58YxmRQvFLPVPWm0zb1HBgpgmVirIS4SugSJC
	 UvOqz8n80hRgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5B9C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061678277.12750.5868041907081512802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2f9e63c945054d33f0dffaf40e0ea0b9a32b56e4864d41003278e8fc82313e
Date: Wed, 10 Jul 2024 13:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720616782
