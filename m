Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465F7192D7E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738416955; cv=none; b=bFEoKTCVhA3cHqpD399vaoIlQuf/Vkmrie5h3qrWpMSPFEhF9f6qI2jV1HyfXyyXQ3TKLQOnVHfKvwVOUraF7ovEPqfC+Jq/rZnJyP2JW6G9a4HeLBO8ZMaud9QgXMAf49HpAegguaHzAgD6pyIgTT6U9rHLGKepMc0ZJJ6tkdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738416955; c=relaxed/simple;
	bh=KKITL5gkhPXbKPYRZGykUfVS5xsfVApA+O3FaezuweE=;
	h=To:Subject:From:Message-Id:Date; b=U5gBjQa1M0usduhysYtEeVeN8Dg+J7TZ3Ua36GbFUQMcvi06MXPjA8QyrTh2VM/t+NQVUkm5rQAMbA+44pHxTcDViOhmB0gJXRVEusF2OnUjPj9zIiGMAK98v4CaHeON4pHVuUekk1lR390mCB6g9DY/RdnyuU2ys9NubVZQllE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApLRlMf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApLRlMf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44ACC4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738416953;
	bh=KKITL5gkhPXbKPYRZGykUfVS5xsfVApA+O3FaezuweE=;
	h=To:Subject:From:Date:From;
	b=ApLRlMf1xKdYjH2IJ9cdE9YVfT4xYRRYehLs9TvpOXeM2p/j///iYb7sQKA6aZStS
	 06HW81nKndddM+J3JXGA48Ay53mtD5bpfp+DpCoGYytKnYN+ZeR0NcFsdlG17zWwrl
	 siWzbSTGyLnf1pcSJa6GzXwwPce+ZCkpqUy9V3vpJnHs44PUONW9eeceUymXvn8ZqC
	 nc118LjFqxqK+Q2J2pW9zl5VD+LZDbeUe3Eqrd+oCc+bLIiAB7GZ1f0v+77tDD9kKv
	 xgeLOlwWBIpsc3d9wMzXaM51egFm2JV9B7swuNqV63gqCeaeK2Tj6s9ZSi5u5VNVty
	 PFgBKPnllbUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43BC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841695362.30582.2977157303264225503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c2e4c06abab797fdf48610c683b5617b3eac5689c7900114f4b146eef1b497
Date: Sat, 01 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738416953
