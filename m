Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD3121D3FB
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751920794; cv=none; b=OpHRJ/qbEP2v7rXuOWc2pcQJkB6NuWbwLnmRo/SSXeXwhouG9BRTcW+YZFlpaH8+MSMcfcZCaulKP9/VpgPrPPAu+AG5UOyqFisEoQ94SBSrKeGrhoKgOX6lnoKZf16nFt9FdfV5qBygYNqm0mTG17ua4Xj6IzYxILTwkbnTsBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751920794; c=relaxed/simple;
	bh=gUehjMCilAcLDhnDUvPouGohBp/mFT//MGo8IQy9LTM=;
	h=To:Subject:From:Message-Id:Date; b=vBX3EZSKx6NL9VYaFOACzd/DjjFL4QqLFc7vrePELutSJo1fH0CFE51l5ettA8CUApgj4wrr96jxMFUXC0qQ9UE1afXlKA7ExpJR0J2XVP7gtQmfl9ZRx5TTt0/YgsBkvW4OWk6hZutDvnoxHOui8PbpIZ1MgSUhk5aVoRqZhqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoCezSaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoCezSaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4829C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751920793;
	bh=gUehjMCilAcLDhnDUvPouGohBp/mFT//MGo8IQy9LTM=;
	h=To:Subject:From:Date:From;
	b=YoCezSaVuvYcIWWBG4lJI8v4BwvSS5Tk4Rat+bZgWUmA0CPVc+iyBkvxndL/SCzEV
	 ryXwZTr/pYhATeZFinHap0KpiKmmM4cwbDNZ5iBLQUQAjDod3Ou0uA6pSLC7T42l/8
	 eXjn50Whrl9k4vdYUpretuornkt+eTFDQElXo4/hDEbftpbD8j3IVKqWeQdFNHhW8D
	 DlGkZ7RvpQGbNXTgbYrLTwDzjv47SekI1tXqLCbduXpuCniMrAQ65d1EJ0HiILZVSD
	 KgFjS6thqKnkBwtKx/Bl8qb+AyxZJfV0dGgRJ+zbuCl+FcRf/E1DrZP8mGyO3aYaQY
	 sL6uGEWJmNC0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBAC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192079357.3148.8775170259670663564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6e2b7b7b9fa570475864eada28a5c50b0e5ce0b6961fbd80d94fd5bf3ab96d
Date: Mon, 07 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751920793
