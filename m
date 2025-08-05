Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D94277011
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754401794; cv=none; b=kdmoAY3HrRR28pqcjUH38SoPlQEm3Hn19kWTY96fyby9evJE6G3FutkJgX6v0w/z/yQr9sgJXGUiv0vfpGLPiFoXr4q+xQk+bdgssaH3/bGWdxZeYEngLZ3KvxPayhZUe86T2kmAS4lNdAH/gPlUhSVB+oWciFbd9MA6jyXM1es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754401794; c=relaxed/simple;
	bh=6Bu97vX7WLkFqPq9OASTtTYO3TftaDHTyZsr81s/ZO4=;
	h=To:Subject:From:Message-Id:Date; b=CW0fZJ8nDdbUYotP8uzsmROB/IiSn/RWqtdeMrJbddIPuT16Xs8L0K74PAFX5kh0DjKFWTVl41aJrPdHlTLThAGT26zGOdLrL+vCytujQLrm7JtO8feCkUlm5yjqBswe5XpnpUWG4evngwC3qP/Ac2b3iLKHEL9QVfU7UQpvMME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4DVgKPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4DVgKPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA3DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754401793;
	bh=6Bu97vX7WLkFqPq9OASTtTYO3TftaDHTyZsr81s/ZO4=;
	h=To:Subject:From:Date:From;
	b=D4DVgKPmaDcoP4X1ff1WDUjnJq59Kl5ygAGwJnp5Ol54AH8h/6lz0Rl0acz7gb5+6
	 bYmTvrsbkSg+90sBsmqg8zxux+NibpqrjUdzF5DpGgmddBH3BOLm3dyuQrctim2bKA
	 K0reDFVafS9z3s4UOgU4GIaVZt+ZqmwjPDwoKvgobE+70jBe7Ks/kwRTz6Eju/FaeP
	 EX8WBZN4p4ixjao7ss31MVMwEfyMInFtAIK+A6KBr1CgPPnsHvVucoHCUMH9G7L1lA
	 zsELi741O87ol8TkN7YRguaUaw9DJjERJ0i0S89fXxdq0fI5Cz/GuBu6FyumKHfrFU
	 2essQywLRC2/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F420C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440179357.14029.5951387359545843992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9c8628b45999ecf4d07c4ac09c5a48e0be2ae5a8debd4e11d9494543387c93
Date: Tue, 05 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754401793
