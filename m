Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C7747F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759816194; cv=none; b=oS2Hm1sbpFVHKYycxNtc7oRht6VKcu4LYK2+WBVU95Bqw7dxUwA9ZJydC+8AHUIOZUdforZb8SdqJYL4nbumqygV6WWEitYCoLArEupEXd/GhOcbaIwUBPHi5om7+y/H90ReJ2W4L2AML92RLKoHxv3RGuYMuWBCAZqd+Irja68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759816194; c=relaxed/simple;
	bh=2oNkzBfiSChBzclhVAuhs6MEJsj8vZyyqkvlb+r5pBE=;
	h=To:Subject:From:Message-Id:Date; b=ioo2rvssKfojcL5+DLMiOwHTKK9PDKHG2B/BriXWjMRX12sB0T5u9IiCIwSfCEh2T+CB0CZpuBEMmN0EvDEFd8tOEhV+gFV9bK5DZvF8LCTmaPrODfJRfykKuVkyeNWH6h6Uz+Bnwx9AWgJqn+oTL7I1BjrN4XiQ0MRWQoOwC5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQsEl7Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQsEl7Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE878C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759816193;
	bh=2oNkzBfiSChBzclhVAuhs6MEJsj8vZyyqkvlb+r5pBE=;
	h=To:Subject:From:Date:From;
	b=hQsEl7IwBayXUpbdJ9fYI96gzU+KO6bWP0tKm0mLtmatCM90pU+Ex+6VUlFl0tzmg
	 IU3+m8BTpoInccCUAlf+DqP2QpwvpNKLQvYvrb/n83MMyObS2fnG/pY2t+qF9Xub6E
	 IFO6CMfZHXNA4xl/2oyh2WY7UnqLsd/r/yrk4P/am45qcFFDiEO+rENaEVhgvegVKL
	 3vZKl8ysKAZcSztiohstL7p3f3CH9rZ7nP1Gr/EMIXfFdWXH9Sbbbb48Oqc+vJwUXp
	 i+mUzhVMrobvAyahIlX4w+S+TM11VyYolUCQDnUNY6Ss+RInn+QvAq92Cfl32IgmfI
	 hKhpOVjiQlVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4E4CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981619358.29538.16369251220430434712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44607f3472703dab802fdcc4db92c0e27f956c6886b78ebac7c97e154849c80d
Date: Tue, 07 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759816193
