Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787F1AAA00
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734735954; cv=none; b=PSJgcnI5+AWdFpXP7Nxwbzcv8yR68e7iIbkr523vAzF7g1bphzMrQLjcJb1fY3q7HMPc15XMatb+mlAXZhVCW7RHnvvvRrb2/FuYKg9LMh/vGQRc+U4sWslvdKXAszERfMRdeR9kb5lA9aWIbEnqoqYr1ftwtJdmZTOM9DxBUKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734735954; c=relaxed/simple;
	bh=S2gOgxiMS0Sm9EORR55e1hKptIyyoDuz5KjOWniMLXI=;
	h=To:Subject:From:Message-Id:Date; b=G6XbpB0WTtTd73eUwopI1XdcdCINrmTeNCLMTCHVQd+AdFTU7uvWtQvymiOkwd2TB12MJf0++uwe/X9ESQFJYp11l1oPI+h2mIowYqSGY7XFO4n2qS7CFjpBkxD1dZAqQDAWYaNttO7J00iyljF6Y8Nha5KhjDHA59gG3SBjhC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxHAhU7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxHAhU7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89ABC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734735953;
	bh=S2gOgxiMS0Sm9EORR55e1hKptIyyoDuz5KjOWniMLXI=;
	h=To:Subject:From:Date:From;
	b=gxHAhU7BGEMO7zE00QaissZHyJ8Yg8Qi7AQz7Z92fkNVDfPXVWJIlT6zgMCU8lszB
	 CSlUpizdRVw56ZOpbwc5s2P9y12dJHzLwDN0P54bXlDJGJqYE46xQBkQ8zjEA/ZmMm
	 6Ft0u7j6IVl4O7q+iRzIbMIij8IqPCQnEz2sHPrEG2w5c1v4vlaHu5GwRq4Z9nUEPE
	 j/831yrXoFh8/rSuHeMPZ3Qm5f1XcBCZiq0NEg8xGhASDmR079skp6SqEwsGVjnDac
	 o+HLQtGZW1K/o6R3c4TosVxtbg4qTstFReU5+GADBQyF/GxA/7CXF2zooJdrlyw3VX
	 Or+i6QS9qAm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93037E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473595359.22967.10389864798060905645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5afe85a65442b170ff114db27386a84a6e0be056507610cfa6ae45148de502f
Date: Fri, 20 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734735953
