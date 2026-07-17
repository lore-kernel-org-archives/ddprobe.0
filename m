Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43D43F88A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784290114; cv=none; b=MgyhH0/EEDJ6bFtwLoHtrlJusBJsIpSA9Gi/Bv04S3Wys007PHJMGiqFym9TMHpsHJHFbrUyxvLzTTEFkCIeYKuBrJ2xtyg5V3hq9Qd3XHgcKMXwK4CvVB2vYJkXjD2G78wtTdXuYuDPzkZ3bPMb/YzHrY6ZEZFIR40qZKY4uXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784290114; c=relaxed/simple;
	bh=W6666s8xcFTAdAmDuASi+T79Pi7XxsoMRJwei4nOAeU=;
	h=To:Subject:From:Message-Id:Date; b=RP4I5jtLfeaD7IiOuuYWbgwIFe0z4kQERNwvz5j+zhAQYf6PpfuKOzW00VdI6UjlL3EMcqjAVGQmvNe3SClM/7jCR3k+vu6qUjkBijLJV8ABZojQSKsFzdzymsDAtdFxO61/aSuDELslDiGCmrUCGrGOYN/lADSBvHKK6yTnHaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1qKaJdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1qKaJdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33FD1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784290114;
	bh=W6666s8xcFTAdAmDuASi+T79Pi7XxsoMRJwei4nOAeU=;
	h=To:Subject:From:Date:From;
	b=B1qKaJdCBVOhfq28VlA4XKPYIBgVnK1qt5eHAvlfKzwLK6n3zxq+mPYRAG+/YMeYi
	 6/6VGGrz18UNFEYio3dxCPY+8U8EAGyZL2lsLwsXl5w3pHnl7m+Nm5S6i8Ai60oUDS
	 x30VVUbcH9RSjq6hWoHl/BFSqtwsYkWWlziQAEbUjMpkk8vRRHp7etk8QqAme4+FoO
	 u0tpcMdvCsh6R1NLKijBS4Nt5HsBembjqvaeXX5o3k+Pi99mguDgF06CrHHFGEsnfh
	 RKJxovRarPuo3VGTmvX5fzI1GYdE44EX8DUcFFgcEzNEHPm8By8Ca9R++lh6tOqSvB
	 a5TSPy+yAxFyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED62BC44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429011395.10017.2751224283261551646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c7e0bfc05b8c604680135e36ba4b89a4b95aae9e73f26213ce477b6db8914
Date: Fri, 17 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784290113
