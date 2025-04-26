Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7531DA612
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745674793; cv=none; b=pk0WNutgHX0JfplHLv5KWqXuY8nyEneNlPmhEw++S0bjTwT91n6fjDw41lmNu9LNt/lVUbquK1iwVVyB0ybcC1qlLi2dapoWZl1EIcuZIfJqi8N6j6shoWlJdXhv/T26DvK2fzX/bj1I4c39Z9Fln4hrGvbQTSC0X/3YNCQTEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745674793; c=relaxed/simple;
	bh=Rs18t3HYwI1G2Nw9DPoxYBJc0dnEDlJoPM6GvSjqhbo=;
	h=To:Subject:From:Message-Id:Date; b=So6xi4WpoBnoWKVpXz4N5eJuf86hLgx4DmKxFNKYnYePSw8RsDRBMAbW+RmMi04/fpeOTjeJp32/fW7tCb33gL91fZdEhTPhakgpWgrqRGQAEavvc1AKN+aix1FfIW/xB4ztCMlIsbXanoqsF9sd5Nobzq9TokMqgY1iGhwNVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWIYT6L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWIYT6L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745674793;
	bh=Rs18t3HYwI1G2Nw9DPoxYBJc0dnEDlJoPM6GvSjqhbo=;
	h=To:Subject:From:Date:From;
	b=YWIYT6L01Cx4+LT5f94qG5Qf7YWfY3CkrsMD6Epn+DGuvZ07UUKvd4t0FDkcrJl8F
	 C7VWvK7Z3TdWMEdZENiYIcs6sX4qjMPSySzjxLz5LtwNjBYpSY7tv5l2VLZLDirLgK
	 Iq7W6S0hcVXDOJl1tgeEydoQWsjPSSaqUpIqDP1xmr2tTGttxipSOSuTvfAUmfiemc
	 HtionhMVmhTmPmoCrPdA+B2c57c7CswqXsIhnAfPgOm2Lku7nd1yYj9eO/doNEpZVZ
	 hOvfQfW1MQfqWH5bHiK4t4dSGLIqk+nIMKXHn87ozoYfTyn28JZZlmhzxQG9JxZdtd
	 /cX8zITb9lugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91018C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567479358.8158.11534056966243164537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0915e5f8c0f0a8ec5c8b0ed5fae8fe89d8b3e5e791e7f26661ef2e1b15d158
Date: Sat, 26 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745674793
