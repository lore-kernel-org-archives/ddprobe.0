Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388B91C695
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776521254; cv=none; b=IyCT74e4Of2Ubg4LANbgAu9QYS4aPVukw4JnuoNexHsV7cO9QD8EoaqLfR9SgHD4XaF1UhPsyUjcZPKG8r8ThRagsIwvgM5H3cEf9NTrFKHP85f9YOuItOrgAfJAmj+NjGgG21RScsJXeEbf3dv0qoojw9FfZyoDznLFakCXvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776521254; c=relaxed/simple;
	bh=LGCn/N5L4kdLhrKOpdjZX1Y86Z4C1oXjXBhIyyPr5Oc=;
	h=To:Subject:From:Message-Id:Date; b=k/kwpjCHoqjLNAl0u8vBWiLh1VnBfTG8g07d9WUvLsdpbImVyKlUBjFRNzeaku46DC4HXaql9y9MnUgd6i2GqlBpmdE89+cxwpkghXmN6SM8jYl5lFO5yUvnIKiirqgyPcPjGk72EcRRf/6cVW1ISJ2Ka6BFsVNtNHxxwOjfGcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpNnbq81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpNnbq81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE086C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776521253;
	bh=LGCn/N5L4kdLhrKOpdjZX1Y86Z4C1oXjXBhIyyPr5Oc=;
	h=To:Subject:From:Date:From;
	b=HpNnbq81TOzyvwlZWcoJTCE9Ri5PTFjGuzLZ8V6zAXjQacwhdBB2hOHU5OVTRSW//
	 8Y2wRFnIRVARt3AlX2jI+2bDYDHC70t+r0Y+2b0ZVrED4/v17DPWEtSV/Z2OsFTF27
	 S+zav/gJOEzQ35npX5Ty125nRzUuq+LyrdUriP/uDMB1OKx0FhJ8l6nvZ1z3QvYfE3
	 kZvdVcgTFA5y/loPL7jKzNzXKpNO1J6PGohOLpil4iEcOp1MFS8RnDbhTsJVFrwI5x
	 cAro5RFnFXn99YBXRymzGJMSEjQyPjyueWt1eY6PibQSsqVNvcj95AEvjd7S+DI4Ze
	 L4hZleJaDjsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC331F99C82
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652125368.24547.18322126960838226141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2135c0f200665467ea4c1e374d5a522d569369f385bac0b5367d303d6a0a35d0
Date: Sat, 18 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776521253
