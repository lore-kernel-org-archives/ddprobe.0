Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AEF26B2CE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787236234; cv=none; b=qbv+wJ8NwD2yqDTAibNS5OBEbEa0WnMDRRTdeBw0h/x9zHzr7r52KxZ2IwyoN1YKOfBxeVNC2Q8juLA1Jf8mWfhYOuImvWy1+l05NllpNDqXETnbz+is5ExivhMkw7/32IlR5yEj59oLEnc0ypTGGZKWRi4ovWW3WLrN4xzlc9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787236234; c=relaxed/simple;
	bh=0shmFSCxlDPWhfU61Rv1n/ZEvpNV4IHQwgwC2CSA8eU=;
	h=To:Subject:From:Message-Id:Date; b=gBH6dAtGjKtCz5npIn4GTiN4XsdMk41NUv/OrVi6PdN7GeMvOltELi58O8cZaZ3JEMDAss2wU4dfAiXSnqBLEiykcQ4Ka4voL/bymf8nLP49nMX7l13mk9D8OTvNcUDrht0nIXvCX3CTkaYuSkyGY+fa21o1yCxFh0htOLe3qxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzayXw04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzayXw04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA37BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787236233;
	bh=0shmFSCxlDPWhfU61Rv1n/ZEvpNV4IHQwgwC2CSA8eU=;
	h=To:Subject:From:Date:From;
	b=AzayXw04kSJ1bheP5jtkGJ4o+GCGcL6X+1mxx/OfUtQjOEJN7dcKgu8R2H6SF7sWc
	 7CM+l7B1gFcUCXFVVYp4HsKFhAh7TIT4w27+j+1/2Nt1kYB1XRlJ4qulPUsfcdMKYm
	 5mJGb9smer7hKz3BHkKDqA7qN5bHAC+3BBppQUUiXqFdkK/Zm4aXEECRci9rqS+/sg
	 zjs1oWT4jkXYTOftZWNLf46BM9qc9HJO5vwHDWaW5G9c7+tjGqGCF67AM+RDaYTDO2
	 ljXHVxEhiN6YzJAeeVP98/ANCEtBRlO480cAzvkBbJf9CUZPiKqTN/KfmudUXYVxjq
	 F983sYoV0BScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5343C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723623373.32420.7277214492393541073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5520d52393b112d481334e45c6f795afba1ca75dc2f08dc6718dad99a81c051a
Date: Thu, 20 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787236233
