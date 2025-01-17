Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300E82890
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737102954; cv=none; b=cBfqo6vySubL1aOQ5G7PEBEh1dhqelnj/aQoNsu/GudeHwZIoADwAy14ujbDZ99cSeQfT1AwiY6jrEwZDBVPfm5OL6oxHFIJ1J2I21V8CIsVkNL67IfRzXhdLWh9Z81d8NvEsr4ii2fSMbrpGXEng2uZJ+gR/i7RjJfMu5zL+HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737102954; c=relaxed/simple;
	bh=MyJbOAXX8FEovtJOvJSjpL0Qy+QctglsS9Wscxx7GNM=;
	h=To:Subject:From:Message-Id:Date; b=gR5sOWQOIfYH8p97QlJsQJTQqHDxMNDpchd5DrnhikPo3CT8ljpy3ei+N5LSlMrYExI4Rd8WJ5UdCDCPm3JklQwDHJc4rgV09cZYIXgfVzSQSwyFkqxr5x9G/pB6lclnr+ZZDkym9JM9SRp9sWT7agZGmnmxvBvoLjtNDcQ+PW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9t+Wxce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9t+Wxce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98381C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737102953;
	bh=MyJbOAXX8FEovtJOvJSjpL0Qy+QctglsS9Wscxx7GNM=;
	h=To:Subject:From:Date:From;
	b=G9t+WxceeQoibqoEZUf5Bl+Uunzevm6wccNEg36f24ykWoM5N404LIutEkxXtJau9
	 rCKvHLOFx7/xxzXShgNTyU1wAvMwsTC0tIT6A/grhoPU9DOxRWfzqYzOsaohALEh76
	 j2sVOm8/0DoetQ8iXBZ9i5pRGJkW/mj/daBd9L+7vFANgS+si2y2V8Gd7hsZrwPn2N
	 4VRwJzGnNoWDLp8kdN4daZfda8lcEFYkTfwXlunwBkrdF7RYtJVvSB5HYCAabDCHm9
	 vDK0BH0sAm3OIhkfDMtz8ZBj+ZcoZ8wZU2z6eIU0JYobB9NsJxDQGMbkunV3BqcTHT
	 LbHyrwDpCa4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710295358.29117.14541933720382517081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1f05f1e2d0a75a9ff585becfd8b581671ab6b7ae4c9dec20dcb3b75f8a373f
Date: Fri, 17 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737102953
