Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275E41C54A9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764247974; cv=none; b=Mu6+bUU3HvCbNOB2Z1Fo0W5Qh1QBkGa7JSeWRUcrPF9CgNP9eFqVT1QgTs11v2KoQQCh1Pgvn1mvBnmiP0aieDQvDEeH1735HZPj8wae4B1KhgZWOrHOFhNXgqW1TqlJZola1v3gwllPSDYg5PyR1AnnO/Ldl+T5T5BAR6Euozw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764247974; c=relaxed/simple;
	bh=fJ4HDxeSV5ZMt94F25Sl0Zuf86nQD8/cf8p485K7LC4=;
	h=To:Subject:From:Message-Id:Date; b=dUlxg1iqHi7xizR4NbcAWXkeLxCqFm9v3Ej/sL+XDcyp+WeaTYgGow8LRxB4oIUnH6XMizDdcAgCExVzuzoLxGa2BH3ChYCiUKJy77e6nq68BLQcBnfyi+ireJJmTuj2TsOLqOKjRxsKlZr69v8ZQ6KuHvHJtoowJrEvanPOVVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeYnqAb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeYnqAb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1029C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764247973;
	bh=fJ4HDxeSV5ZMt94F25Sl0Zuf86nQD8/cf8p485K7LC4=;
	h=To:Subject:From:Date:From;
	b=JeYnqAb8GClIrLFef/kzVjwEJxpIkVb5NKS/kgMMCnofjjfgR17JjcOfrZ5DnuXiZ
	 cPSeRHGEHr99YqPmzpVzFGmI6USRWLERHWT0v7gdAMYjCkRu78X0ZMSsoL1a0KRCHi
	 cufMhl12CksEEXiFChjcjwiX33nL6f1+wqSWhhXOAHLIfrbn74CL+pM/3wnpZaesQX
	 /5oVJhfhuNsbuj7r9qPjbK1CAdT9YDKBddO99txpoE4wO3xlgl83N4ptPqiluscQEN
	 /DYjQ4dq1XjTT0YJ1qPYxLIaIu5ib57ml2uTYmtL42wJptPMTbfrfGiS982NQg5wCp
	 iezhSvtW7VlUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C8CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424797358.2576.6161783571216583877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db067e649ffdfca73a0de619c5097e2355dbdb191b88704fb134120e40cdbc1
Date: Thu, 27 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764247973
