Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCD4271464
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764940374; cv=none; b=V/hkdEjCS8EamH3CXhWvOYrfsg2PTUkZ+RdAwG7dl7/mjSUHhTxoYADyRt5kSM7U4TscA54dCLX+L+0BKFqaRt0DWUGHdrBOYgUQKWMw5d2s7kJhVB0VB5Qqz5MJon6zS1ipmqjWC/3zL2BIsMI+9fcUQRmvfV4ogIRUTSVbMxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764940374; c=relaxed/simple;
	bh=DIGOQrE+cIK3CwfTU3/wptOHhN63PyePpolAs3FWowo=;
	h=To:Subject:From:Message-Id:Date; b=tmR2qxA5aHzMnRaftb3zAxnQfwYCDQLcI9+d9RNL30rTkAOjAoWZrF/wy6BvgvjdgBrkl3nRxZD+cyx+Gi7IT8Tsw91eLklOu5ir58yRs+NY54QjhZukVe5/0i0/etK+Thl4YZKy9AtO8s8G7WfValBz+xOq/b8zefeIAg8Zdv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPK3+IqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPK3+IqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA11C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764940373;
	bh=DIGOQrE+cIK3CwfTU3/wptOHhN63PyePpolAs3FWowo=;
	h=To:Subject:From:Date:From;
	b=RPK3+IqN+pRHLQlq6XbKajbqMO2KJ96+QRXPKMUlrtWCSsd5B0K4gPqtXu8Y6PM6A
	 +SdK/zBOSOH+qqscey6+f3xTLCqkkT3QFuFK3AZ8P8wqwQrAaYuEdC/pZK916umE0e
	 TNAXr7EyrGTLgsQk5Y5d2pz+D6L3mzUzcYSsYPQtZCcYQ5vF1eK3LPiAh6BEcjqZQT
	 qZFKm6sSuWCq9V3gMs7wti557udMirEKGW2M8ucv28MnG0dAiEtUTiJxApCQVMFFjh
	 Z7YcODCm+wcKrZUkosXOwnzUE2Sp6DngLuH4PKbBTZzzv92HRdcbs3t5M3MpVpORtL
	 rtshI2cJw5e7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94951D2F7EF
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494037358.16672.10336152321841744606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54450c2915eb2932cbd9a77bdc5a52d746c51e1c866a44fe17a48595375c879
Date: Fri, 05 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764940373
