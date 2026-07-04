Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449EB3A3804
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783167514; cv=none; b=RfuqUjM69I/fE213hk+iS0/u/RJhBVf5pm6i0Q9d7kEIYPoX9G1jiusNoXEYgJyVK6R3Na/fISqvzpaY4V1IDioiOseVY4Fxoo/p/xuY886tc/Oek0zdzxkq2QCg9/t2B9Ae8KFKznCVVXQDm83jg3MDFWo/hj7jxda1BR9vaC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783167514; c=relaxed/simple;
	bh=ZiKhath28tz7Qn4fwoMp0llSra3aek76H9Gre/SkYBY=;
	h=To:Subject:From:Message-Id:Date; b=Hf4Go6ranL8Jq/M/hxUUZj9k+jj83Ja9jGVSa0fRS1NaF5SiW99e7FYodBOxomWy5nV1hPnoB8/snQHzIG5mKcVx0cYYuFTtvv6Nc30tACneHv3nDKS+inptu3NKDfc3Z5LvPy8I+e9HpNUsocKiKvynwzAEFvZJnVEjwzklW10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZONYHBm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZONYHBm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA655C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783167513;
	bh=ZiKhath28tz7Qn4fwoMp0llSra3aek76H9Gre/SkYBY=;
	h=To:Subject:From:Date:From;
	b=ZONYHBm/me8f4JhED8XNZGpuaUhE/UiQ4N/LN7lPKuqVm/Z6QSsJvZqKxchxSc4rU
	 c5E8Jd2qSeDPL1EpzklyUe5Y2BvnVPjLue0ZhE2pHl/TAK8IdA5Hj9RhtmeuUeIHQi
	 sLfUcJyviVXuXRmUlkeGzVkVGrKSJctCJbJahuYOT7YsIUyd+Uv9inM6zP6548kB+P
	 vaEvY9kCQHUwmn9AYEJoOwQxWUIrlu6GozsfaBMmIczHuPMqbU0wT6cVKWuVcuFNLf
	 NP/p9sVOMGNC4ZypPXdBM64TxjvHEsq3Q5IpBG/4NlhnnD4hc1ErLeIQj2FZAAXWpj
	 Qu4NCCLtBb08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8848C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316751368.26386.9643269149201882601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c99a05dabe56984343e86c69156c7fc3120bef84903443c0cf90e7c7c23d95
Date: Sat, 04 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783167513
