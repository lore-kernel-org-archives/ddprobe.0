Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC7301460
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756204794; cv=none; b=LIEYsu3/10TZSSGXFbtq7lxs67qJ1Xzi7pcp76Vya4jYXNYVMjvpJ+BZvq/lL2tyStRe9VFX4cH/Mqpf3QcrSLjNRseLOogK1AZHGgwav0d6C+4JXyszqXDPW+vm5DlkNW/mZA566787WdLRQY2WgQQulVga5JAsdi3yKDivUGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756204794; c=relaxed/simple;
	bh=mOqqs0B15weW58YuZcnANQPenP+gGkaJXsPQIowwzo0=;
	h=To:Subject:From:Message-Id:Date; b=OUySpZK+2EKpuu11aiOGM1rLS30oyRidtXASGw3d3/fslYVfPqJVnR6b2yPI0UgtfppDNsTEZ9XLYcgVFD419F6DFHso/QCF8PsZTYOBI/1FtIMCoRwbKrY0ftO8+jTq2RTAozsHMa36ZPLwWuLhNsRD9q/uZky3Rg2br5OPxIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCFCOGhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCFCOGhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFDDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756204793;
	bh=mOqqs0B15weW58YuZcnANQPenP+gGkaJXsPQIowwzo0=;
	h=To:Subject:From:Date:From;
	b=WCFCOGhuF+smdNGSq7eyFrsvi8c5Y/4OE8gG0sg/1sNLlvcDGi0tiEZ3W6c6rYuaG
	 UcxOFEm0/EHT8WQvHtKGKBZWuN0bkpKyDp+c6Q5NQm547rk39Njeg8g98wOIy/Mal/
	 OcrBtsvMn+MfLJzHFgINBQfON0IDIrbB6e33mAi69T6WsDnCGq1so781Qb/D9bWfpr
	 vobeHvTsFOdfXuBOnGQcWlHrMqjeY95Iicgy09B3J6QKbPxyiVpcmqVCG3hKha5fCw
	 ag04o4dFGzgZINeqEUHhz8eSfNXmjcGzTD9AzilmrKMnJCQFq1sQgJVAumDM7iQJPn
	 6FlBnyGSjegWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C3CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620479358.14729.8928970110410505553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c1b03763b6a5c2ce1758ab2cede40d5ee8fe9225aa5a47ee87ea78eabdcc50
Date: Tue, 26 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756204793
