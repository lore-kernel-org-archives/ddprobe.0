Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5F419047A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756643993; cv=none; b=UIUWNlLWg3y6g1yCp0vzwU0zcmtDVgc0nTlj2CxBuouzQ04CHvI0Ns+maR6nqMA1zHGytV+pDtXDXeyhZVrq99BuUMKTLilTFMoMiP7lkdELWShhTB21P4CqckJ8pzQsZK+KvwoOgDLU1v/q0jzFtErhSStIFA3va83RcjscLMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756643993; c=relaxed/simple;
	bh=VSl52KQopzrXgvPugY0Z/J3pSjsNKqau4pnPKqh5HMo=;
	h=To:Subject:From:Message-Id:Date; b=BrrbTYA4fAl5bInM7o0uAA8EPDeb5DN3b+R07HdWjO78gimIeFQbJhCAl23AHSZTI2Qo8mi7Aegl6oWLIvRYTwTmsoRe/1bqwqUXcM6Mbgfyo7w2MCzfUKfd0FO5aUJR5j5msOn4rLXksHFg1AEyuFn+V5mCSDB6e0R4EbYgc+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejfytXZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejfytXZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB21C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756643993;
	bh=VSl52KQopzrXgvPugY0Z/J3pSjsNKqau4pnPKqh5HMo=;
	h=To:Subject:From:Date:From;
	b=ejfytXZoIKvqw2CaBsv9DimUpy3PK4lH7OY2H2JKiHmkejiQgGN3sIq7tlxBIiH3D
	 3VKK3A0iM+t/Pf7Pq5wPrFkMbtc/lq5VYcPN34ocTVL1shu0vx2ahm2sqOXS9RQPrh
	 QJQc/pKeiQ5Tm34DQdgFCSoauw+Idzu824+DMMRujb0NmWUcubp8wRrsUstPc0fB4V
	 8CBGKd6OlsWmTlmsDh9QSek8zuzFCiwyHvQDTutDO4d50bxHRXL80A//MxFUB7xzUI
	 YdModJFwBKLXdoCtj3ZFz154qVyuXtLPo/4mCCAU4p3052v9u1Xww7kBOFmGZ/WugW
	 qlZ6k3h1xNbKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70CCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664399357.19829.9853657951600898506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7e1f376e2c6bc6ce3e0f71e018d06bbb7718b7f9d7b6b2b7596562075cf170
Date: Sun, 31 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756643993
