Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D16197558
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743652794; cv=none; b=dWe96WUqf7o3q16Veur/8+qyeB/zCSBxx7NvqYbuV064pL4goSEN6GteuHTSv+sukAUWMfHZ4nBovuDqXhRy/tiKkj4WT5hPkeeN8LJGT94MQiXLphH5MH8FD001XiUj1Bx2MhhT0xqhsJ0ipwOH19/g67Sb9O2/OyZNSZoKpg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743652794; c=relaxed/simple;
	bh=DUEdgPvlrJQOjSz0iiQRvM6E4UNkx8M8DY6OKO6l8cA=;
	h=To:Subject:From:Message-Id:Date; b=pYDGprj69RnDr6oJQDZcAHuvR6K7e/vSGcFdaBTTSsR3zctIwhj04qcTc1y4q/wIVx4uHde4m5VC0/ooKcnvJiGjrk9K8bT6I9MQU/JFwy+P3LGoOcO6cWHsTDR4gPdjC2kiOX2lPS6zR6/A4T+BqrrQ8dAGNw2TPoT9akk4cOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb4+dvXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb4+dvXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743652793;
	bh=DUEdgPvlrJQOjSz0iiQRvM6E4UNkx8M8DY6OKO6l8cA=;
	h=To:Subject:From:Date:From;
	b=gb4+dvXX+ftC/vl9kxPvpqPen8rmNVXbA/LkYKrxYvuNTl0B9MJKHHL1NuaPybeUd
	 wq4H/sOqg4f6nrlDZmTS+iOoXLpwBSW4Uu5tXZXLWebXUlFvk0uOI9KtBnXlMtGHkr
	 1p9K8JEGwj0XGIdI7RlS4UOyrCQvw+9J2FK/GkCD1qPzf6Bz5WKG2Bvz1dPp9/DzYC
	 EzYS5Kzk5sG054SKYCPbW5OiFBIeOZCinVOM/mw28R5dMv5s5k3NSPWX/bhPptshG3
	 r9A6DZigZm7Yf5YCo4tTF9EbF1mgTr4yWasSv5eUU7y9VaAAGiJsKI/8JWbK2HHRsm
	 rtANz9v12VG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973EEC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365279359.31196.17780025422039985985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea63565b230c07d485bd0e1267489fe523271175274c0c87a62747047fb20b5e
Date: Thu, 03 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743652793
