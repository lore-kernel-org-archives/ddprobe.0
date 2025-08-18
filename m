Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CFA223DD1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755556795; cv=none; b=LrtptbXX6dBTjyDx7kBPy0iuDuDFf8hbB23TmqWYo6HoNlViP+tf8LgjzPt38Q7nUoQnYGm9UsDyVuxowLBdtYElVUwA9SEfa7MSInqCCjVrCu4VzwDrspl22ikZzqrGFZMnluEObjb8z+NEysQ76IXvUcV+wwXgrx00g0haW2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755556795; c=relaxed/simple;
	bh=JaFWs7h7Ama3VvMRSAH0nR5AAs685B4ZlOjyUX03/PE=;
	h=To:Subject:From:Message-Id:Date; b=sfyUnLCE7Y/trmRVGGbN1aa/zebqcyfRPaFuIlz2NI3UIdTcpmC+YPN3dvDdlXBJSOXsW4YntFY9VF3sbD39mzvoty21lq+a+Mnw3SaJehHWp5kW2yMvQD3JMDrpOzl7S12fthKtNA0D9yNrLc46DmSo71Yi3ArlG6aZ/OnSqRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGzhbzmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGzhbzmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755556793;
	bh=JaFWs7h7Ama3VvMRSAH0nR5AAs685B4ZlOjyUX03/PE=;
	h=To:Subject:From:Date:From;
	b=uGzhbzmm9Yrg7Xuqys5piZqrgHwc7J1YZgnAaqQ8OpziX680rfxwGetIc/6VjNbL0
	 C9BtgOdDTfKQ6t/HRYTyJZ3N8RkLirJtcbBGUS0AgvGIahAj+mJvqnGg5eewzvhKOE
	 LjB8kDO1n2LyfbRv8Olj1tG7dQ7ZZCLmDBVUORk5J2CkL8AG/Jmb/J4Qc6Y+s0M5tm
	 Lo3qrl6dvIblHnO68+A8MFCdV5jg5ziqQGfQrYtr90bV/ugOInWi8SwGH/P4Fk5Ijq
	 HYtruS1Gvc3sz6z6Yqe+dEkOYNGRqs0VfATxxUgeWZLZCitjkPF071XbW1rd8ZkeaD
	 CqIQMt3UnV6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4CCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555679357.22608.11113646169912836967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f78d81779d3d554b006a2c4697e218486d1849831ad136423cc2561b565780
Date: Mon, 18 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755556793
