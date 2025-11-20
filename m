Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205EF286D4B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763608914; cv=none; b=oUwHX7P7Jtl41tQxWRy4aejAK/7u6GdWM1lZ6bwVT2XpniQRutVCJOK1i7afzvzkmPNqxLiaOlp91b8QsDs4fRcYxWdYCUVQl9s02n6CYV55AIp0zabDqZOr+AoteOg8CCOvekWBX95Po8TN5HAw7saRt6VCtRI/e8I/r5dKvYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763608914; c=relaxed/simple;
	bh=DO2ziWffI+cZvK7ndnKEZghoxVfspyy5zTA6MtPYjWE=;
	h=To:Subject:From:Message-Id:Date; b=dh13O0bngvu7FHIIRf2xXP+3vM18RKwZMW+lEgFd5vWj+fftt0TWltI+CV9qgPr4X5lY9K/pMBelLt0LzvKbhc91R6/TAtLheX13eosAOrSbkRoc1blb4mWEga/vp4lAl/yW2+/wwe7oVWAnfB5tBTvcxdcXiMjB2psXCqGUQxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSGZinng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSGZinng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1ABC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763608913;
	bh=DO2ziWffI+cZvK7ndnKEZghoxVfspyy5zTA6MtPYjWE=;
	h=To:Subject:From:Date:From;
	b=RSGZinngPUadC0BZ6GOKwsqp88r73Ct8fT4EAMJfYpGubEzIvIBLfRYmcWemwvIDU
	 fvh9ZCEjmcfLbvR9d+wbX5M6i2E7K5lpRiYd27zi079v0WlBqedYmUjkj+rDqdhHLu
	 NV7yRfGxF1C6FKwkHg0vO6Ri3tLe8zzv6PuoB0IgAhdb7ZEWZtmlLPUlqkuENMy2V5
	 dZIW9gyThoh+l5XvQlBGbs+JYf0cEE4yLukpea4/ku7xQuU6VlTzpU3aUVzhO7uMgw
	 TIicgr1S733IeuY1qX19qV7mPKvxK4ESBSFndDlANOo0/x1XzovkHgPG+IcDAqBunO
	 d1++kX7Kwl7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961BACF64AE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360891360.4733.12549425555482876768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f33ef52e88d3e5853274676f534e9063686318060c7183e5ccc3a640cdad467
Date: Thu, 20 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763608913
