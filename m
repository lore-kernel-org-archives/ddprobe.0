Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4346220CCDC
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780539274; cv=none; b=HrKPODzA++/hexXcrMNKQn3b5zh+hbJhk0pIs+cK2kMSXtlYOhinUYmS8NDimJJZLNv33frus7fLfNHEwwhr4pIldSYqnEi2LxIa3H3MZVerKN6hwC5m/2Ix06FkJxmFmx39+L3gWD8ICLJGipdpLzMl/hmaSwaccMiP4PvWnrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780539274; c=relaxed/simple;
	bh=pRKP/ZmxO4uwwFkzIdM2l5DyK++lrtXE7rhAiKSODY0=;
	h=To:Subject:From:Message-Id:Date; b=JX+MMfgC3S6VtCYEIMiwfPQ7U0O/0GwLLtZ2fBn4tjdmcUF78TocG5Wdq6XOFSo2G8FZf7Nto3JyBT2Ex5i7mLGh7LDXWLjbRxAoUJ2fl5BZln2xD20JpJalvHFhKpT202I5kvQx0cR4I8mh2fSIbOcLNvYYyFvS76t7j/L5DlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dpvx4dQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dpvx4dQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD8CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780539273;
	bh=pRKP/ZmxO4uwwFkzIdM2l5DyK++lrtXE7rhAiKSODY0=;
	h=To:Subject:From:Date:From;
	b=Dpvx4dQjjFK4EbntOPDgBxWNy289QaUwfyH0cT75i+n3W2/nMAue8YifNINJTPsHs
	 fI1PwZKYFp6Yqin+yvv9JVnANLchFSR5Dwnc2PySpKgASNq2RR1k97TcTBxMKrEjsP
	 z1Z+wfClBk8S/MTBq8pFaSUF8WDyw8l7YqsTwnuwWbBaik7tNwxtvUyIM1X4hvcWeI
	 mVx/AMrOWfobbCfqtBFVKB0134hfYIfn0f4jrRcMN53OYrFvNIuUhyOG7P2O1GBHbJ
	 Ita+dG4Q4p3+L8yRrN2fmv/zvgSa1c9fZvGB5nmKebS21lCCbzytiO7IH14YYBKD4V
	 smgupsNlYASfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B185ACD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053927369.18899.16273090761603043528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf479cd5ac5e00a2b2749e434923d0bf5cf55561c6422eb99a48c76e28003d66
Date: Thu, 04 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780539273
