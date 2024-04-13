Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771E34C97
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712971763; cv=none; b=NrLLdunLhrLXK0MXvBz89kHemldSS5iC9kd2kwFTuheHKI9acrHzuDB/6PZv+hOaBEZY6j95E+DD57fRwf5Fh7JeDt8AiLmxkIABUO8JRvJGfJW1icsx2qBb/N7xmwQxqtwSkBNXXiH/EP6m1fUJDfwKGGu7/p1M91zNYLbT8xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712971763; c=relaxed/simple;
	bh=CrBck/++E2iaxr6KWMFk0V+ujtyOtm5s0pYHR+Mmpn8=;
	h=To:Subject:From:Message-Id:Date; b=sRqDMO8QaSPACnJlX3EAXK7HvK7klLp3z8xoKUZmIfp565XoHSMO52ceZYDXs0MF5RI+r1Lt2/KTy3cL62DJU3JY+ySY66mpYsX9FyXObJJQ7oNlo1wS12icPzDWXlZFjOspQNICdtftlq1j6t79cGktnQzmVrdbLKvW+QfCQR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c42vyztR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c42vyztR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD18DC113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712971762;
	bh=CrBck/++E2iaxr6KWMFk0V+ujtyOtm5s0pYHR+Mmpn8=;
	h=To:Subject:From:Date:From;
	b=c42vyztR2rFAl+cFu2UfK76zvK/lWsktF3V1O9EEpkm9Az5NK4hrbzN+rTxhtvyqq
	 Vd9gmIYvX23ZtDnSq7j3dkw9afc61q8SQ2veHfhuZTDth6CdMqOqjVA20qOvbhoEbu
	 pVfSSb5fJMiSGlxWy9efT43WqvKgbWnkCXEonbMbsEotxtuQwzVyvZT9ykzLe0V01p
	 rYC5xr7gXi4IPZlu9+E20gmcjUCL5YFirzKnjoHVKWGoD+cqdDzMyrF7auczQzI0WA
	 +YRA9U01bbAsFC2nGN1r43GMXzBtwnVQG950P61dkrNdQkB7D3/pQO7K5VmwCWHCjh
	 M/pEJHDJuhk1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9325C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297176276.23059.126111036688517260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90470a15b219c9faccde8d8a912129aed2192b7b522d508bef980eb907984cdf
Date: Sat, 13 Apr 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712971762
