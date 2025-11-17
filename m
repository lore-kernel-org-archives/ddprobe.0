Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DFF329C58
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383314; cv=none; b=pjgRfPp85Su8YA0euFat0QLk5Y3do9XfwrKM2tBjnUnr688TkEl9lLl3Be1zInRN/s/2tGoEXyAX2jtJZTQKB4beIWzVpXrggNCiQE6XIR7U632D2Pul/LhjWoLSWT30Meb4LMDrgRsdxzQXB9aGFUend3I82/1bgUoN8dtRlAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383314; c=relaxed/simple;
	bh=3rsE0xm9BW6wBv7ADOg8/kpFs5kaZxz/2M7iBJH1QBQ=;
	h=To:Subject:From:Message-Id:Date; b=Kc2YQo2/QcAsEldDQ/420fH5gDOZwNLUXzPCwypzmRE2Dyxm3ixfqnV16AYQ09zP5IZB7yvXQk5ScdTgZvDn670Xp0ohHVs1ECCRTw2ASLNaubK1Qv0EuGs/oXY5D4Dj/oAsM9Q2IZPfsuUuAuNNhjgt2X02nGuwzBd0jxd0j4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUV0Ind5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUV0Ind5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE936C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763383313;
	bh=3rsE0xm9BW6wBv7ADOg8/kpFs5kaZxz/2M7iBJH1QBQ=;
	h=To:Subject:From:Date:From;
	b=CUV0Ind5bZN84exS/FG0WMYeBIO0xtuW1Xk5UTyGNlwUQ83kHZGjgpg3lP/N2tuvZ
	 90Q0HVSPbEc9x5e2OPeqMNt/13vZhpyFeL0wm1i9bCSf2elO4teB69vFFSsH4RPTbt
	 CwtsiH7Wa/x0tJxHaaHntJxMz07Bo6Y5EvHB9bChKbmH7H+oxZAhH/9+8ho+j0ytxg
	 z7pxzHoX7esPUwV7sRlaExFDgO8YuMAZb/O3gmW1YNTDkVOu3iifWoku+4LfUuk9c6
	 vLbwq4g4Vh0o2FLa7gtN4KH5SPgYS76uYnXojMakGgAgHGX9RRXaaLcN9W9fHheE+u
	 RDEOUNWQqRcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A859CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338331361.3901.10136602246572041769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb456aa8ebbede0d30ce5775adb67efd06bf4f523e00853d2be63eb32c402f4
Date: Mon, 17 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763383313
