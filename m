Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41074329C61
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762889994; cv=none; b=of0pwHbqgBLjk3sQE9a+pzEjAIgW0arIFCuMkgu2eJE9h7jd5jyl+cSbDJ+ksEFJhaudEYlAys76bzrqhLsDin0i13nSCtit4I3ljJMgfp6EDG0MX9LYZSF7aC3/Pn98xL/QClpntT5lrm1Qa7Ae9d1uq1vyGVcocDfg3PBgTrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762889994; c=relaxed/simple;
	bh=iJ+tN+yxdWWPsS8lWPF8RdLEaHWvqYUfwe5aXZ5X8M4=;
	h=To:Subject:From:Message-Id:Date; b=jifXX2ukXS7XgIZnXzBP+nE4Pjj+t6G0K21xJiaTkAuuZseNAJgxaa7XOs0hSN2pm1bupZEvwXzWFOctKAlv8nU1zu4HBoOdxs9XX2AVf4vMkASwkDAaWLtUz2JS/nkrmO6uL0GMmqokL4ygWIX5BNM6X3E37r+rvAXoCG90CCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJVjBXzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJVjBXzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA6C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762889993;
	bh=iJ+tN+yxdWWPsS8lWPF8RdLEaHWvqYUfwe5aXZ5X8M4=;
	h=To:Subject:From:Date:From;
	b=qJVjBXzneFvr2dMufRZ3ZfXNvOyJEWxZYLoJAfOhyyvpqY2VNSqXpOGIdnGWNtQ0p
	 VOyQESB69nduWA+Dlt3A8k6W/oEBBJuZzdJGdkTetl+1Tx/EQ24pp7Km3gveVsekwG
	 aPWdkExOscJnxGQasmEnmg1Y/Yc5wdcNeP7fB4XAkfNJe7a3E8r/BEkOA0fSm+HIcc
	 BeQ13yioGbXM2bojcBgyk5cupHbip2p3iHVQhm/YPwR0iq/Jtc4dBj4BR5GyWtSL03
	 dhZr68e51NwcssA1C0P8J4eRSVfqcHlI/lqetoKWbpgO1LYQYvoGpRe0KEQrMsUQqr
	 eXivBeoizByOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998BFCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288999362.3162.8496815417704199773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7994772f59b9be95974e0e385cf6d18c1c7165551bef4afd978a6fbe1daf0362
Date: Tue, 11 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762889993
