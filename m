Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9F144AB91
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784698114; cv=none; b=aiSisZyyA2UdxUk8yzpVXxgtw9L2N749uh8xuySrfjkx8zSWjIuXIwmr0AudXrY5s/2LEoZ6Zn+Dqt+iiVLvYRiNJ2mvACe8m8PInWXg+2u44iPnx+uMLHNoyVgP4YTr9B3Fl12mItBBDUzeLS+CZryPGXRtkmzt8C4GqQXkX90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784698114; c=relaxed/simple;
	bh=T24jY8yZ6Oe0uxJiZHdqgaUYPlJuGXO8zd+nwiXh+Fo=;
	h=To:Subject:From:Message-Id:Date; b=EDAQCGW2xcu2dzOBJ2V1N8Z3Er0v4aPB1GnmVZKKwLHCAfVRICUF4/sXzOpSlupvr9K2gNzeM/Hcers8dWmZ2YtGv7zVvW+zB1l0iRJCn3nS97b55N7NRRiRqLUhJbZKNNa19POSITq+3e9x8PsIppmi+skQNuQg3pL1/THaibw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGnb128N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGnb128N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 510F9C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784698114;
	bh=T24jY8yZ6Oe0uxJiZHdqgaUYPlJuGXO8zd+nwiXh+Fo=;
	h=To:Subject:From:Date:From;
	b=YGnb128NQQJwgFHLRYi3+FkMQtz1IZ107OAbSz9smRft2PAzQ/FwMEpnyKhCJ+l3a
	 +rK40eL5px7+DlaOspqFR/ZyWsKEhtp1brBykmn2kkCBU3zyLzM1rzvGx2X5P29x64
	 2/5MQigfINwqHuW3eyaZf7UHoW8uiHr6fkfcXbFa/857uBx1KPFcSfuJ/rhpMG9bWV
	 s8ZZ8ow6E6bjfqOeVbV8XGFIjgQ2V6Z5uAtjZVRkNaTns9vvjrH9cJs+PmZID2+XU7
	 D2AtqiApT5yaRhGriNss7LB3YCbx2aHcdxGKcsX4c4xsaYjnqDSAnT4ovIpMltT6Gz
	 ZqiIgi2IaAlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F14A2C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469811396.5808.16354824819814078517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620bdae5cb2498194ed0274cecff38ed846153b4945d3f99cf2834d7140efce2
Date: Wed, 22 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784698113
