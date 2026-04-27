Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F692E7635
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777257454; cv=none; b=pa6LzpcwIHn3iZLyBqk3rT3kKAsqNm5pn++R2jJA6lkr8pCfvBbE2sbqsg3sjInd8c36pUe62XfGJ4v/D6ViYwtVelpYv0RTBoPB0ToDVMvHL31aVetufMRz0rF3+/6L2cEcSJcS6HZKsY42VOJ0bWIikqLFnImKE5inVYExONc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777257454; c=relaxed/simple;
	bh=RBX2prFZra0nvn48mzBugmBPpYRoM7wRZQp3/mDbB18=;
	h=To:Subject:From:Message-Id:Date; b=PqvAc7Ceo6tavZXFoGVlTBPhhKeN+NlUkPwIWotOI819yFrJdKnWLAQrz9W47tJn3H/GKkBaWXXTDGbc/PoNeTNK5xOxAlsQY3HFhrozTQluRcKD11M0Ajh7eolk1mth8U1yjLI33OQxug45Vt7uCgVrOWBx3CWkc63LXuI4X3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeAUTIFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeAUTIFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4173C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777257453;
	bh=RBX2prFZra0nvn48mzBugmBPpYRoM7wRZQp3/mDbB18=;
	h=To:Subject:From:Date:From;
	b=DeAUTIFlPqH+BmRBgXhT/q9vXHsxnFmh2DL/boOy/2F8qZ2paWh83lsRtGNen6IE4
	 T3L/P15awkVyiZxtpuWg2ImCo6wJ/0qHpXF8bEh3bRvV0rHGTATQ9/hcEWzoXxO+OT
	 WTIx+1pC7/oU+by0v79SAwbyHctLy/KIIFrfTBjP1sluyM9hF6T27fLoYQIrp7+3S5
	 XNrIZysetHDFL4bF9kDDMu/ZmsFUJeck4Dwcm4rW1XOd1GpgiksrmY31MJiJA0fBa+
	 kgJeXhXGZa1+RqIzWJwtLxefbL0F31JM1UhZNlu+Lg6AiGTRmojYYUDXczizHOby8T
	 ZH/ny/0yonSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAFDFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725745368.20586.11904031373370160779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf05545251cd15025d0fa6132b773d9f329de7578c503e56c4013461668a018
Date: Mon, 27 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777257453
