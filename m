Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B64D1BD9E1
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731945954; cv=none; b=HG+LxLvGPM1dc053zjc7zKR2eY33a7zNZe20vCL3mO+bKHdG3skCpR91B00HpHTJN/OIbneoHCxYRFk9nMSdf1KxoGVlzHja0MkcNuQDbEHSTccQv57ogAmaq9hS1xnG9AivIk0fqO8Vz4MLg9R8vsr3ocVg1nCWX6ZQdeerdDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731945954; c=relaxed/simple;
	bh=UigJNpvv4w6o2q4w7yhtMvxFrNlGZXotq5tjMsrL7kU=;
	h=To:Subject:From:Message-Id:Date; b=EVT3rqo6TfkuVIeZ8zko5azzwRez6WyHnSq7XcrIh2kdSqDfjlC+d12LX6Xk2MC6mVLeeUY9S1ZBq5PPyvZh3PaqNePgXzO+3W5CZYgPwawq8nILqpUSzW3+cIpvcA4bW/HjptYJ3LojO+p31wCy9P/p4Udb8klfp1g1nCM3SGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0xRQ0g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0xRQ0g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5533C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731945953;
	bh=UigJNpvv4w6o2q4w7yhtMvxFrNlGZXotq5tjMsrL7kU=;
	h=To:Subject:From:Date:From;
	b=M0xRQ0g4Qyv+Ci4q52GaXK8zFaq7xwLP3biempIEbED0yk/x3lbiJcLVrReE4H/lJ
	 Tqlz2LdYSpGffFQq8O8BSNAp/6hJXzQWitAs2JIpKV9SLa0Z85w8umayZT1YLlN9GE
	 nkHqDYiJjxLeaP7nfdVX5gFn8QtG+yYa91Z6hdGLbmx/wLW9ASrLpju5JVRWqbCGvr
	 66oWqGb8Kuqu37eFSkP/72Bu9zAbQXieftzZN+ssyeV2aNsp7usra5/LmtespKXdu2
	 /UKReUe7aL9SXy97YU++ov0VhmrWI5Wz8fTNFgStWl6Siyhu5Sc1KL7+Eal2HyzpRr
	 16j+z+nKZ+OCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955F3D10F5B
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173194595359.9180.3897051802675643160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6101f392c84f18529f6e6775d8b655646e95171256c733df9832e4a6301ac1
Date: Mon, 18 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731945953
