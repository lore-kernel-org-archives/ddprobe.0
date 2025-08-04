Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A154F81
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754287794; cv=none; b=oLhJJSSFH9NQgbvXdXCl8cDigqI7FWb8f2vhKXdDnOK/CMVAAb8d1yEJi+o3CuxEoE/3WnE8806HIRDmFqh1k69IphWngbeMibJA9CHNdXLqc5yZnNcbwiZGFIwgqCcwnhIPKBHQ4oPPUzZJfbVpB0uVtOsoQM55GZVOR9Q9tCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754287794; c=relaxed/simple;
	bh=zndbrSWMsY95jYLZ6Bg5KcdPvYmUxTNUr+mt+jlGzV0=;
	h=To:Subject:From:Message-Id:Date; b=NaaNFqvTYGsxHgjAmRASitENIJaGuuBlWPEsvZt/wECwMtnQ62zqfzwJCY5sr4gEt3/aTVlWAWwa53FB3OozK60xbx/NpIUdUmOkcOhr9WseT45SuF6BBBQ5wKRgGC6rW+lora/a9+w2fm+HUgKgjZnIgGVuNo79GOMvD0KIFw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjQLvStt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjQLvStt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A55C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754287793;
	bh=zndbrSWMsY95jYLZ6Bg5KcdPvYmUxTNUr+mt+jlGzV0=;
	h=To:Subject:From:Date:From;
	b=AjQLvSttDpDcFHVid9hu8EuJtCCJiuK0cmOryXsNfvQx8SkgTjvdiiCU0NjtEus4y
	 IgZI8k9BKtVU34iZNLQsVWesgmsYL+GhVdEm/f8Ei6RqRXVkS62nuGFk2BnmRIb0CF
	 kf6YxNpkCTYiNGRufmqnXb63Ix5cUP6zYlXzDQ8LL9G9Q8W1x95tJ7PwWdKdtRniMu
	 auyBsJ9g7FjEq89PgDGm84ny8IBJ22Jq9B5PX4n2LTvT5EafPhkTBi6ZtsuJocZ1Qw
	 BJzgpOKMc1H57fjzWdi1gzyXZb07UoznKj7eUGRvx4F1n22ayqejEFJdebklrlEyis
	 MaAiyR/vD1OGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099DC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428779358.23842.8948978176579795353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dd073ee1afd1808a48136120d6c2477ccf1e2365ff250154c579462911cccb
Date: Mon, 04 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754287793
