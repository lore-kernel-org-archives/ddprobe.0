Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FD63321BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763637714; cv=none; b=jilZEXmIzFJlbLMX6mmI9pCnQbt0P98EYnNWRuUf4SOooGbxEpajKkh1vNoex3XKHabjnAsclF8pOUvx+7FEl89KaoZOmTAsQfpBO7SGn7wAjIWDJNaftukHuGQgEcUdF9tXRCNBWBKdwA4DLaZxnA6Q/40kwRUMCTnZe+9AEqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763637714; c=relaxed/simple;
	bh=3loOIDKo57YnhgzQH1EppPy7OJnMNZXPeJs5g/Og2AM=;
	h=To:Subject:From:Message-Id:Date; b=AizwJWgrQgej4RI/R4/8WPD9L1u3cL+gMGPzDp99q9nIUsxhGTiCrfct0F2az35IiRSyXpha+FBCm/95y5FkY0CTSrGOYjdiN5HbjlL4LF4OiwVorZcSt3LTHqxJOqVJ1QdGJa900NA6S2ifkbKcSao93zqgJyAdCFy81g/7Mvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUA1ReYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUA1ReYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763637713;
	bh=3loOIDKo57YnhgzQH1EppPy7OJnMNZXPeJs5g/Og2AM=;
	h=To:Subject:From:Date:From;
	b=tUA1ReYeR2stvzVeq1BJVN5lrPodvZeJtv7rrin+viNmovD6he7mtbMUPZqMkgGe+
	 P9zu5eOmZZus7APNrMjaSBymdmMf5hiFaC1Y8WE3BcscKCW4KURdh0vcdBz7yjvoF3
	 sbBIs4Bk25kSEscpG6xLTYgkdgVxkHhFrB7mpr4t2JWUFOk0wfEHLtZV+vfbfR6dpc
	 GuyOr9QN6HK4dqtCJLH/EWdA6Q9uI6bvn/WuNuTtYvcYFxIxW1DTBIJlSrDRA2H1r9
	 uuDClsw3eLYqI28YRBQp34Ea1w56VvwkPoxU14xkIBWckLx5SMgNnAYkD/c4S5+itl
	 PWVXS9dhG1rYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C44CF8843
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363771361.12331.5787503080989444592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7774bfb42eecb46f26b8c370cca1754157e53e21150cfbe846e90e6ba976d43
Date: Thu, 20 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763637713
