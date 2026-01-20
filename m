Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49AF274659
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768953233; cv=none; b=aXzQUhVBpA/Jb1q8WLJNQLSdkkn5GvShQoRKtmg8ftabxbbNweAwL0ak5IeqQ6B++f4kJPYR+6bc+2qqh8FrEE5RdRCB3jjhXsJFS89pYQDegHHVGirtbazlw4cwAUjd/aPp4vWQzMcskYcMPAf0BsHKZuKtz/0OXJzWufVaEnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768953233; c=relaxed/simple;
	bh=/6z60bmvaQ7z2uPlFynSsSks0aTVhO2JuYM1HPT8C48=;
	h=To:Subject:From:Message-Id:Date; b=VBdFkn65+xa/GT89kCA08vpTarbWwp//cJgaDv/dDN99bQxnLeI85raVsk39s7no3Bj+5e/6jx40das5JqxorvVmnKuFUyDpL2f419IgBxY6GBs4773UdsisWAE4C+rrdoFi6l3VJtxsNWQPqsIKfiiQF2gG7iEnbBVyt4en8gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlWSdtLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlWSdtLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC51BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768953233;
	bh=/6z60bmvaQ7z2uPlFynSsSks0aTVhO2JuYM1HPT8C48=;
	h=To:Subject:From:Date:From;
	b=TlWSdtLvm6SmX6R+mLkNvwTOkqa9a1+f2ampby2jrf7dgZngQW6lc/vwi44658NqV
	 y118iXao/T+2gkKbmL9e3pzHCiq9KeDPr4IgdslDwEs8+fT87p8rQNFlok8p1b5Ppd
	 /+0ie4P0RdWCyi+mS4yYRhdb6FfVBAVafT1DzaHKn2kZU4fLHJ04jX3bkwGF8kDppX
	 vAtF2IchfJtOZpoGLZpU2/MnFQ9Kfd/8SBmUiRbH2KcsXPr+m/C0aLiQGLp2wWgB8a
	 bbY/G5z1Lzxpstysm64cckQ5/RaihYG02ADFIURzJCAmQFOrpj0kbeKkqAk+SFtDoo
	 lHMFRo2UlQPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE34D2629F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895323360.23199.9590491092420984921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1384e04cb9616d347da5e766084de34375f2ee459625320a36554eb3e2d34a21
Date: Tue, 20 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768953233
