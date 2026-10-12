Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CC03BED6A
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791843634; cv=none; b=W9EebQeCHQ/zqaKt/jdV3S+4ayppvoH48YNmCFcD7veHNi0uf3HZgORPbBwfUYihrzcr3LAuUIink02AaM9RtLXNFfJW7K1T2aKYJoobFxPuhmof5hJq8kE8oAsSca515+NJ5nonTthAh+jjX6w4JKLf84pDTed5uxJVZX8imnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791843634; c=relaxed/simple;
	bh=41zhRVimZy9jbH2byBLUpdo25sqkmE750436ZQnIuC0=;
	h=To:Subject:From:Message-Id:Date; b=Pv+cPkZyDOa2OlD0cI38sSs1aKYEByapEyBONN+2Em3KfWX4bJicKuxgZ2fSOHIsCL3KE+Il9HHXwdzsCaR6NHJsHh+zB27TgnW3RUpFuRUY37bP3myVyRancebupKpVolopPIDWUpj8HwPnimHmX3NJccW8hh6HhN+ZICxcCLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPpClYMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPpClYMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D600BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791843633;
	bh=41zhRVimZy9jbH2byBLUpdo25sqkmE750436ZQnIuC0=;
	h=To:Subject:From:Date:From;
	b=fPpClYMVV/3J1lk6tGwFWTRhRs0AggLQPmLwSDO703Ofq/qmDJFg6ZdNRLEVGqRGR
	 lvIWdHM8IY+iEbLU6Q5fOpLjjVlufBH9JByDf3c1qmjauV048J0jJvZdMXJkSUeszn
	 aCTWBwCCO214/ourcpgW4MbmFB0I4yryLHnnWuEkBPjH1BVJ874jPNc1onNROYj6q1
	 ejTYAEtKuMY25LyZGeX6L38k8FroFLXYvz5caR9/Jzp3QCAbIAQc/WuC7Lk8Dc5faZ
	 q1eWL4KhAJUbDHp194FeylBqhQFryFukZGK48FSQ9uO9wXB/ulhrqL6xOVc9lOebfG
	 RUNJwSI3rmXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6ECA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184363368.8133.9098437241899189158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad028089b357a3178066f5facf2bb385c0d2da88cf94931ef0d60202d0204f92
Date: Mon, 12 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791843633
