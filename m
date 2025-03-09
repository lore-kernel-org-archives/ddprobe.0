Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424CE199949
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741557534; cv=none; b=VbjTIN7980BGXh70+LgBRtKXZndqt/V9Vpz+SOLK9AWLn2+uM/aqIcbXI+WlyCHcELdLEQ1ipNexMYYqjq4cAxSkv2MzsqhfMkcipZd0BxMyR4EVRPKec0ywy/ZC09zs4VSp7H7OFOdAMHaE0mVlIUIdWuwxZmJA+8lW/6C1cgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741557534; c=relaxed/simple;
	bh=LsPPiMlAsS9bs16slwIk380Pw7b6aDGkhlG9ubEA+3k=;
	h=To:Subject:From:Message-Id:Date; b=rkkTq3ise90vtrN2ZLjdal6iR/mN2NqBuQKv6Oz5ujnGV7+n00gD2kbTqsKniBvxN0wmf5iP1DiJ/zRWo9H5MupU1rYUbxO64Dm47wv1fmfQ1bVx6MRrogX/CCgTzN+3CWJYUty9w/nMcipSWWXByyFoB+jv/qMleoWsMJU64Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M//LRw0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M//LRw0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53E4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741557533;
	bh=LsPPiMlAsS9bs16slwIk380Pw7b6aDGkhlG9ubEA+3k=;
	h=To:Subject:From:Date:From;
	b=M//LRw0Do9R60oF6PO3MoRC8wiXWh7QmGzg/afTUpskrinv3occ+BiDVZ5qTy8n1u
	 TTEEkGIcU0rY+zUFT4bI+/JnKKu2sbRox23j7wBC1oC8N1m1YL5AL4gNQf1WKwHWW7
	 AW543GoeJyH0OrCB5g0QMK5B2QTTwxe2W9PTjhbhWYZHo2FGTmQXXKT84KHjGzW5B6
	 gGw2DhqyENpM9gbNsfGnAbtspvN0tK32Yu96mjYVMBKVAHcu50ZlEcO0Nf3T+FvHCB
	 oLY3qgj7jGR3E5O18G/qR5RFVzq7zG5AQmc54lk5lTrsRB6AmR8JOPF2HPjniVlkFG
	 7ViWKHvoPEEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1388C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155753361.16305.1026532027433430473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d058d9dbf17993f2eb5527e0bf9834adb010d409abf8e2614f4e6cc929ae0b
Date: Sun, 09 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741557533
