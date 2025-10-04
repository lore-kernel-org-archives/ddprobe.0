Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A5A4A00
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759536594; cv=none; b=n7yj0Zwk1I9z3RCnM0EqbVzZY0A1UhETJOiQMrjrpHkwf10pWKdGQ2xym5MorHeTjvLt4Ik/FNCRViJ3KXfiq/OLF6pNhQrhn3+aIDWlsQSoJQJz23ZNoEkFIV3vFkmGnoD8/+QIKNZSFAGaR1eaQvq1XziYF3Oj3xkBgJiV81M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759536594; c=relaxed/simple;
	bh=WeG7rVE8vulRKO5xO12/CuCy6U5upj8BjVN4ryA51q4=;
	h=To:Subject:From:Message-Id:Date; b=b5eUYyb+1MO/gtEN5h4YiyZEaMAR30EqXTF1L87gmiAlFGa12CaaJ1xkG+9O6pQZAvnnYD5/FAevSFil+/RCH5PswGnKwMd9Q0XqwdrBc/RORwQxR11KGzAshq9ZfaWTxm6lms4jtPira/1p2eT3VY5vUXGBcvyr0e8q6dSR1mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxzYJgAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxzYJgAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF9C4CEFA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759536593;
	bh=WeG7rVE8vulRKO5xO12/CuCy6U5upj8BjVN4ryA51q4=;
	h=To:Subject:From:Date:From;
	b=uxzYJgAy5nA/zm9myTh7YGcQleQ/OJD12CxEKBSdCGz8c4oPzu83CgFsff4xk4oCL
	 zsNzKX/fM0voHSFrkArocVgn46jXae9E1rVFRWqg6UI2dLiCFmiAKYghwaX6BYt9W4
	 mYltNkNTQ2IIEbkoCPMxXS6CLac1+o7BATP2G6d6/IBE2doaK57xrE/tf+r7Gi0fcD
	 CkneevNYHiQNFBJismy7+iZMiobuKB1Wy+mz52BcTOj9c7WXnSoJYBjBjzjv9H4ury
	 HPcgmvj/dQqWmeXrXI1j/5DiMmElWC+VNYZqH5Ir6uIT6ZoUlY/7wDSqjoj4afTCFv
	 1xqRl7x/eZVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93541CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953659358.26895.4734255576182559065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04819bc2a183b69065282d4fffe303e4922c4f2a3f4787374abd84330ba58e1
Date: Sat, 04 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759536593
