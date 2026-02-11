Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB0B207A32
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770819894; cv=none; b=HHo5YIOjRu/aYxpPtrNT5oJS3bqP5Z7mXMjYRY3yH6KmkDTbKJms128zltGmTfrnomr5TJQqPuYPXNmc2bJ3houJD0mw6xu6W/FdgjWHTPaRPcETCbAmUOBZNcGzk2K61PjrrRQBU9FGM8Qg4rMj7N41aIJQQbQx39hdLxzNzeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770819894; c=relaxed/simple;
	bh=89RHUK2jW+x09g63DLKGvXUTlx4GqFm73lHPCbF7U4o=;
	h=To:Subject:From:Message-Id:Date; b=DaGcoQcO6sUDBsDl6KJpZohgPCKxaDcCAogZ6LOO+BY9N4vTRwmEUnHwcF8/SEpVQg0OI64TDByZlbE24LM0Fgf5R5QosU8ojtxV0WJ0HeBXb+FTztfPQzBe3PvJf6Fyr0tOeLuFNFwq7MCq5b4aJ5Es6+r0ngHAtKQ/U/Tu6V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUSyGE/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUSyGE/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CA5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770819893;
	bh=89RHUK2jW+x09g63DLKGvXUTlx4GqFm73lHPCbF7U4o=;
	h=To:Subject:From:Date:From;
	b=GUSyGE/Wg1HsNxjellcMVNe1XXxGvccxxcC1Jq3UmzMKxq4Vz7ZWm7clCytRwIwxf
	 b9MX+Be1D0x/LPuiMOeeEutXdEeKP2wo0uQ9p77PAScnm+UlMysyMwjKrmqhF/3PTR
	 s5JKbFO7rNaL73Pc/eL6u0xHYNKFaxgDzBqWZ0YlyFTlr2EVdCw+UrG3zvpqgoCGJ9
	 aiTmF3rtOjoZqCjNk2sgdCgqgpRUPDcGjLYxZv9JHDFEFgegZpWrnu4Ns+G/Q+Gy+s
	 sTRyKP8YLrdt/4tKFXj3mRXaz/IUEzvByfEginwMA0+xQjwUYWM3YEBSOnLhLkEuDd
	 mbDZ8v2ormZGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B4FE9E310
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081989364.23224.12645441995940837595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e9bbcb5aea35993281855ac9aa63c7214b0f35f520d7e543af46235d495604
Date: Wed, 11 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770819893
