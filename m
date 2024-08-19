Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EA3ECF
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724026554; cv=none; b=Cc0wboNS5lHVZ9Cq6KdBTNPGY/gx7GvAh/eP3zoEXHYwJzCgsi3LYRrxqOCk5H8PG0YL6ibUmi5MAv5KMHBgNoO4ufnueNx3BfvGyb7pbrFY1Xd/jseARtAFaJM0zQNa9vNXaciEIB0vTBwwPQdX+aRRYrZ5Zgoz4pbKdrWAp70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724026554; c=relaxed/simple;
	bh=aoGuCAV5H80Ru7N7HkOOu8FrMku5rjLF1UraYK+gOxY=;
	h=To:Subject:From:Message-Id:Date; b=JulOTdAa8NwbRTS8BT86C5CJHDBaGbbn3kJBi14dAxf94k0ogfaaNuI0BqzTyXDR7h3mSwYHkFgpEUHljDl211ex/9H6cVmsTf/z1pTjFjF4hGO1GqNY4S92ho6DXlLH53cFXMvztV6bfwyN2Rk3uT0MiD02ocXXyRWm2F5fejU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7aNbyJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7aNbyJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21E9C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724026553;
	bh=aoGuCAV5H80Ru7N7HkOOu8FrMku5rjLF1UraYK+gOxY=;
	h=To:Subject:From:Date:From;
	b=X7aNbyJ+7bntdrAhIJ1FaorO+2sJ+tTKeXw0Ip4uwWQ9q27mN+iDUlmjTomILhckc
	 gsUilSdw74sG5DUUcjup7dnJNE9gFi+WGIH2wcRCNT1He6SgahL+zRMBGjZrG8laIK
	 FsLtOcfEJlA40SF/yUs9J/JgFuRVtwafc2MGdutsALunJv0oUJxXiZzQ3ksbc27tYb
	 h+wm/Xjy169186OS6uSUnTJUQF0oILmtpuQfvcZo5scScm0BT6rDN01sFWoRpYrhVM
	 PKgyYvzjwUg8h/fwMEMAu86H5mKQ2L9IQjUFcMZuTkHHHEzqrs7bzIztVtpId0bDRp
	 uIRGRDP8X/GCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08CBC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402655361.1551.10372107326229452235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab264386d765f725c0738aa37943a8411e0bd47366b589cd2c7d819d7e145f1
Date: Mon, 19 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724026553
