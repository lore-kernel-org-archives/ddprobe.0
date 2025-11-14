Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0592F39D1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763162394; cv=none; b=FyAadZhtAxMCPLczrjDNtQd+SvYF2a2dfm8CqgANQrdFpI4S3o6xJWg+GfOHaej1uvnLkvu+VDbzW5RgNDcZhWMbQ5TleIV7FOnEKiphTuiOGg+36fk9svduTn+ti9mK1QGESLVi+aDAN76ME0YJH77AWL1W2ZUKZkFOkhNJA0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763162394; c=relaxed/simple;
	bh=2+w1LI9tFqXVsFWrS9UcRY1FmkScCOq9eMrc7X6ch8E=;
	h=To:Subject:From:Message-Id:Date; b=YxzTBekQBU8wIif8iYuV3RBGGbsC71xhkPlY7aJzYlaZhkn2OeaOOWT6377NGomSp1l5e8R5jNXxWAK/SgZu3AdR/JFFapP998zDVd+hje7dSrd3zdeXneWtK5BOdNkWua2PIvtM9NPEJLllXcR8LEj1CU8toIrdVVoCLFhW+ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEGJJ1yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEGJJ1yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49C9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763162393;
	bh=2+w1LI9tFqXVsFWrS9UcRY1FmkScCOq9eMrc7X6ch8E=;
	h=To:Subject:From:Date:From;
	b=GEGJJ1yTWl3XVFeAk4RU6Zrb6q873A6RMkA0R6S5xTUls5S19+Dbe/Di3gaFQsnd8
	 MlbccCsWU9p2X9YBGljlsHUI2BwVOjmcROciDOXBD502M/loGZxzBKu9Of3lGinWBy
	 uKYUO1iiKlcFCQ1UfdAO71WHibnK5jes6N6k3rKGgxLQvpKPf4tqHcGjfqJglLhzU9
	 QING4cvxq8BTj1WtHwRdsG69M85tmgmNZRi2PK08aqrIiJf+JHn+sm5VIAevhG/cDw
	 hevDg8GNQkYYxPHbVl7DxnVj73OuQCU2RoqSi4yB3OhxPwfVbzYy1DGlcfXbfKNPe3
	 jyJWiiWDowcDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9622FCEACFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316239358.15805.7006473159208541625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7225e1e6411e5ea7f2db0b68341be73874010a836ddcf06a9b6d378cbac74ce
Date: Fri, 14 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763162393
