Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C7C1C860C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743124195; cv=none; b=ssHHVUyEMiFgU01nAGe+U88AoxKbuMHE8VhqRh/WTd867Ds/tHKxk9p0n7Av+6dVdmW2lPsZnncw32Cq5Cglor01vzrHiJzhNRJ3vLHZCArrnSahBmGClV761BUKkEfRwn1MDzr1+yhFwcyOUh0PANQReg9uu8EGVtv6HxNlXow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743124195; c=relaxed/simple;
	bh=Mkg7wGRckT73e25vVJH3rhtWb2408PkLAVRVf2SK2UU=;
	h=To:Subject:From:Message-Id:Date; b=gVZWsPmoY7JUnjbM4BShtm+b2POrxr3l2ynJVjIZZJAwMIGRObFu98lB9+vsyMXDW1047lsljKQdy47e/P2gJ1xlHGeQKdYudbTxKfe04vhTZ3rqmYmXkTXG8kaf5uMDVuJRsNEbsm0hDPyars4rRrW/K5/BwZtx8cLFuU2fl5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipkpHUNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipkpHUNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A21C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743124193;
	bh=Mkg7wGRckT73e25vVJH3rhtWb2408PkLAVRVf2SK2UU=;
	h=To:Subject:From:Date:From;
	b=ipkpHUNl/jlBzCt3QX3iud8pxxwsACWnkauV4ikx5z+wlNKBOTsK6mVgPKN1I1LEQ
	 jRNhA8xl/9QMzxwoCK2RyTtYxJCb6GpvGK2vFdXZseuvCuD/fuWtN2GygSqLL7sOxm
	 qSrQH+UeLrwfJwEgk+bUxQrWm9gRJUtrBuEPtJsKSVv29l85bnWWVij4nBWpVeczXK
	 zB2USdqqNgjzbGsITLM3ucW1uOmyl39fj3H4S4V7bX04nP7DppIATHDWyTI15JKpEB
	 kYHzuf7ODao3kfBtazqa+JSWJzyaObXY4VLWjHSvo/O4VlBI1saFP8iH0fOkaJ+GtM
	 +w9px+82F/Now==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A0C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312419359.19139.872625025929824357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5944aa99a16074545aacd06eaa5606133a9e9bfa649e408ed3be85925cc6a1d9
Date: Fri, 28 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743124193
