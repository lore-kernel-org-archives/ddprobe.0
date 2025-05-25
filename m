Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3CF320F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748148594; cv=none; b=s/xTkNY/cJO3nEE+cFUcMyQwCVWkQ2PEhx7hxMmBUH1a6v6Of3BfIpspO3mvynP8nDdpwB0E5nbDE1gAgDBHBHzSHX1Mw7qaD8yjzFztKL/YTUP6vroL7mRW1kTxDKUFfb3WrCH5XcVZMKMAMjPFkkF//hbUTNjxJJXDV91IKW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748148594; c=relaxed/simple;
	bh=BAapetal+k+pd09aNSGEqrIAACzgeh2/nOh2UEX6GYU=;
	h=To:Subject:From:Message-Id:Date; b=bRBMecpKWbbjcOxeMRIZbU+UyiVJh5G9eRhadDoQEv5/aHTpoydwmd9UE0gddc3U63Jd6yjpKQOqARPHv40yR/WS12bLbVcjoFpjGYLy2td5QfENNydEG8msXVrP+2u+mTZHtK9W2TooDOziKtuFFLEIWCWc8RT48msW4QXcv/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKezqYq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKezqYq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748148593;
	bh=BAapetal+k+pd09aNSGEqrIAACzgeh2/nOh2UEX6GYU=;
	h=To:Subject:From:Date:From;
	b=MKezqYq1YYL7dezexOROjrRyCqEVlmdQytYugEJUQodZKRkA/KqviNGlVHjC45Mka
	 FU6bqAcWZiHNnx5YjNq1MJJSjEcbx+VBNor5Seh5bmDbxw0urGXw2I9AK/Uep8G7QE
	 3b/wbkaOW7ubiCtl0vlcE+gMt9GtL99EQDAFvWum1KYlnEYyaRiOWK3bOAWQE9jCbi
	 rGN4nbbXxWkYQLo7kI9gAqXsxwg7QNeCvXC16NOnnhHn/7KxA5qpdezTkqRfXdkmlO
	 WairJGaff0S8CNEV2wEjM8kqN9iGgZALJBCjhtJzPz9R25+U7Ou2ajwrE3lwc3K+Mv
	 rIILbaK+a1zvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92198C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814859357.17037.9682408635048116828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c61e79486d3dd0204d1f3f672ef4c1225f86ca9aadf12d23ab7c222b3e08f6a
Date: Sun, 25 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748148593
