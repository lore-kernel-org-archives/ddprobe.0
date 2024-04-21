Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F463D527
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713711023; cv=none; b=dFdZa7dpA3/fS/n0pSKLb0is0f1Fq5VcGZCXmWJMkyDwYaJlm7FltMr7dHQCVrNo8UFCCnVsfU+TaLUUzuuxjJ/2kz/WgQYXcfF6+fb5pKkLqyDIa27E2vb8uti+zFJDlQdgcVdBefP6BmvDYddWbWItbPMLIrmQVhlosStSoMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713711023; c=relaxed/simple;
	bh=RjzsSEAnG0zQ2CtW66WOpuBXlzTmxw6reFtEuSkJXiU=;
	h=To:Subject:From:Message-Id:Date; b=KCR6NmHh3+6IlEvvIlUQBArOnbIbW3glEjEdeZBZ+aBzzM7TBu18+MZkxTxDTpsvS5gOMKuGOimUWHluniVASmQlnUGCJdoGhjIw6EkCtp+4yYPykWc2uMZsdNXlJhFvJkvvLTh1H73+UK2RKmeNvUJWbk/CpQHCrXM3Q0aFg+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnceFwrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnceFwrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02AABC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713711023;
	bh=RjzsSEAnG0zQ2CtW66WOpuBXlzTmxw6reFtEuSkJXiU=;
	h=To:Subject:From:Date:From;
	b=nnceFwrIuG7gAC1w+K9wPNr7TVlTxcg/dmCACvcfNM/91dYvUDoN3VldslU6crB1Y
	 1nNarXbRLMHZ/bM1vhbsIyUgM8LLVF4qjgdHofKOs5+rHsTAFpMNfkzUpGStWJGdEH
	 Ren20EfoAupNyrayF0YAbuP8Aor88SVOvp2SM2HjLpyjPM/43TfhMLCfnEpbjo0Vze
	 yNPU9J4ENY/6bD63Gtfuxkj6qewkP4qKTlXg3ZHUHOACkZZ+0Usy//RByqD8ydD+Xn
	 cFWDR7I8ACrvKchjRw8Y5J9kcRuamsvHEU7J9jHahyV6aKkf/JSXaPyGxbkZuDGkZw
	 ut1cw4bkEtHnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9E8EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371102286.6673.7469592907299390778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6d58f475ef5662e2f9de0c00d2b05ee222cf204c4c07e46fcb4e79744ce659
Date: Sun, 21 Apr 2024 14:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713711022
