Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26615218845
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767989034; cv=none; b=PvDrFmn0oWFku8VqGB573CbHK0UY+MkI7YU6CmWdLdIsNtmt+RfZjLqd4JmmkUBQvjg8dfr698r6xKEmF0Dxbl7X1IvHl4UTGnkZ9cQN++Rtwmt8gVFifp9+SBJeZrBsksWCKTN9jaD88+2f8VLIPdkJRJIorl+hiC8l69DNCyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767989034; c=relaxed/simple;
	bh=uE79sLbsUDMnuMl1KPt3RspQhy6XHNJJ+JDJboCubHo=;
	h=To:Subject:From:Message-Id:Date; b=kUJyg7fCXjEd4aqL35rnb17Nfnz83BsbKe7piKKX2kYUsDLfBKSggOvdLybDLCOkFjxsXENStx8O94fCmp9M5rc2EDjFBSM/lYoEe3s4erd5d4ieIFu/ISzPC6Fxwu4AqxzhKcPGHPgV95ODECFZDwwNIwMfzSe0GybVk/+TCG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7JNB+Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7JNB+Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C12C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767989033;
	bh=uE79sLbsUDMnuMl1KPt3RspQhy6XHNJJ+JDJboCubHo=;
	h=To:Subject:From:Date:From;
	b=N7JNB+Xc6PjyWkaaXks6IoXSssLDsZCFANX3xuaQ7qbIE3Gzb9KJUtc5rmGzWZgTN
	 4x2scpnMEribKi0178hvO5NWxtUnq4ZRDi9NppHU01WCu4tdzfpWnmczmHDJlrSxsl
	 CA3YknqJUiI7DcKWaaVNefoqF64LZ9WRqiUZlhUgXV3IEPFhaizju19E2IVImoaHJC
	 gJZJQxJovWleD+WDVYn+LWajs7uXU3cOZWev0k+o2xTnhvFW1rxEkUsb8KgiTCKwJQ
	 Tyh/MMmOq+IBxu+Ksg5Su+AyPjKdcjGQaFdNzIEXUpxebfwWXpf9pZ027muSIVMvck
	 vHFkZ9ziaTnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9AD26D9B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798903358.18941.1206926434506307837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33df1f2046fc593e5850613d2027246e96a12e19ca006a77361bf700dadc9f6
Date: Fri, 09 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767989033
