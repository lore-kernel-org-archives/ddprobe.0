Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1AB8175F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722223554; cv=none; b=b2irONett04q/8988gBZNPOReZ1w8EU+9sDBzESDHRPfGwh2VpDunoP9jSzZY66bx7MyeD+x5RTsf6jjWO09Q3ZfqLYRsOHb6w0am06CQIgH2vDaE6RvYgBCNkBOOhCdcJBCjjbNK9BxHR4J/CCvRS0PgzOtHBTDm4iGlxJFv30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722223554; c=relaxed/simple;
	bh=KVVBY9XC9bE/MUiz/OfXJd5xbQf0CByLf3n+3lDQNuM=;
	h=To:Subject:From:Message-Id:Date; b=CC3h8mDhiaMOE8zyT+uT3AWf67IxbIQqW95AWE6Fok+66jnS79mkBWSaTrGoOBYdqKqcm4Rb1bWZDF6yrXPbuRxsoqFMlcP5ZqcWwzETcU/NaP0978fLYYZ2Nl0VCkqA+Zw+abx5Np4xkjS62wgz/+ZsiDotO6cRjIpevqSXGR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQGBmgUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQGBmgUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6802C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722223553;
	bh=KVVBY9XC9bE/MUiz/OfXJd5xbQf0CByLf3n+3lDQNuM=;
	h=To:Subject:From:Date:From;
	b=MQGBmgUllqLLHKF9gKWlPTri/CCSVtNMIdJHC/jGR33oZ3fhXpJF9rVIMgILCW3b0
	 xyl2PGZH6uiQsaxE2pAV69H8JhnB1KgeFf48cONN0gd+IUJf0uaZJnpTtYum9TWA/p
	 6PPADzYu5MOl1+7I7SI2wHF6z4SgVxoDatn68Ny6dz837z+KLTXh+yShVVK7fIPPgp
	 Zl14R0VV3c7TREW+PqrjcJvpyjVx+ju3JP6k2ie9tqRVjIFvKPZv9R9E5eH+xMaB1/
	 PzH1/n6wYhA5aFoIDu0Fh7tYJ62cp4ECQmlIupciMywZOjGcjoeJ+AuN45apioHnE6
	 mWYJeNuw3YM0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED8C3DA64
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222355359.13266.4482004033509950961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dbe8a538919e0419350859c3c38be2d97affdf763f93a9dcea86256fbeb5c0
Date: Mon, 29 Jul 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722223553
