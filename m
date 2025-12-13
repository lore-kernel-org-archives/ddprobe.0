Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3EF12CDBE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765597374; cv=none; b=RB37mnUgjG5GJP6W/nIpPnl+LExGS7vkHABNhHEp2AwZPMmyxQ/OzKrrOz6jc5DF29R0DSe/Anf8iqZ5piSsck5KfNIhK+Peq5qg+WIdVuua40jXcqrimnHNSFrFjZ7SoRjeh7V9T7D1xIZAxjWn+sE7QLCYS25t8d/zyYIKI9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765597374; c=relaxed/simple;
	bh=Ph8uPU7SAGXb2fHrZGz/dRUfgDYL8fYbnXNf2oBfoCo=;
	h=To:Subject:From:Message-Id:Date; b=UP+C5w4FGogQzJRmZKpWf/yzanDZAutASJLdQQBLRJzTrMX02xdjcMCgGWs3ecA6zC9yU49avVhXsT+6mdKv2nryjT9mEGEBfu3OOt4BH5G5knw9sO4H87D3orG/6rhkQhnrWukjaMYBhknj/XaT1a4zXhKyXKt1E1m0kYXkrjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh1KB6m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh1KB6m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765597373;
	bh=Ph8uPU7SAGXb2fHrZGz/dRUfgDYL8fYbnXNf2oBfoCo=;
	h=To:Subject:From:Date:From;
	b=dh1KB6m7RqIsMyFosYisgrckAx2RUgy527eGG87yzevkz6Uv9JBfV9YrJktWqfQaO
	 jaL66dVCdBg+yuYXSgv/hvSGWCRCTtBE+u7p+jD1+FJCR2L4tbdH55UE6RWiYo/WtL
	 UCqgqIlXDlEwEWA/s1m6xpjjdQEdr3W76vpOEAxdioe/nYvcGkohKnbfYmIPjHkGlM
	 5mDJAxDmEjQx98Q6gf/HxQ41gUTE7Aupp95A1/mu+vWKQpLdi6pc+WlQbph3qZJo7N
	 R2gIDFOE/D/PT0Lt3eoke0bu9J8b3bmDn1alW68mskpjVizizz2WaXG6YEJbH9zUjj
	 sEny+3rEiF8Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D13D3E78A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559737358.31642.4853371582011937643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d278bec6d2a100a88b304b2f0155fd9a021c267615c59fea42ea3d64a8ebb469
Date: Sat, 13 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765597373
