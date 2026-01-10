Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFAE219EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768016034; cv=none; b=EDwAcjS6Rrb7HzabOLqEAaXXbyprt3JHNqFP7X48EsFb8przaNKN6FR77pNj4J5v89rOMOLFk8EcnGJ6eeNAnsm9l/nLjscSCAKoeajE4ktO8ZYpiuexgT7gA5UZy47lV3jg3TZhxJjiPH/u43Gdc2OnizwdULzxmwt/e5rfD5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768016034; c=relaxed/simple;
	bh=IBW/Kt1UhMgZLS2VMB/eaylitxzUzRHh/IVSFowha3A=;
	h=To:Subject:From:Message-Id:Date; b=iPzNiBH2qmD/34rQGMcyykLPeF45T7CJnsugHPR+9hJtBq0/D5ozNL/WauNNBfo8Op8/euB2oi0FTkmxjePHwzwYEDRuC9o636FJWoP141aPmbeZ09Ew+DrG5gLFV6ryK2crQSx/DUi50r2kArv4wHIqz4+xVKaJnd7hVQEUBLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vilmjb11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vilmjb11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C82C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768016033;
	bh=IBW/Kt1UhMgZLS2VMB/eaylitxzUzRHh/IVSFowha3A=;
	h=To:Subject:From:Date:From;
	b=Vilmjb11MlhGQcR/IIh1LLiNUgVT8nnbsv6NuxkPo7ZQNBQL22vGfZgCUyr+OKxFG
	 Fif5fhw1U0KQdXKB7CjTJQJrNSwcoFozUHOAGeSwbz+4IEhNqZWkwJ/+2eP4sKUfaR
	 dwyx9XVSR4Ms5DOsaQv9sPkLi1XaoXNW/xKJ51U17WT/0wGVsYAD7+rQOj3halB0hY
	 Jg/0TcFw6tzldC+FTiX65iBl4qLtYb0hSMl8y2bG2TX/cU5oTr7tGZZswhSbe3xwj6
	 sB50ANkTnqxGIxfXkFnAGa+Ba3X6YHtlE4ohdC0Kve6JgcKvq7g8RNtkvBM33/IORX
	 T7Vlt7MEOF8/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91643D277CD
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801603357.23065.3393169683345141427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4536f13c929ef8ddd061c196a648d6d6177d178850f8000aaed371783726a9e
Date: Sat, 10 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768016033
