Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D9E128816
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783817914; cv=none; b=hnRe1uHnaM2q5oL/D+vtEHCZkzJTrUnqUavnx+oK9wAsQO36Sjw+VglhJdLkbWacs889qS9F5mvYqRVYHV7MO2lUBH6Dcc4Y5dF5nrGpFknSsHh7OV+kRdV8sKmy/YyB7jnMMmmPWdNJEos8rLba6kDs5MeJl65ywc5YyxGCPdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783817914; c=relaxed/simple;
	bh=Mno7k55n4HbTa+8c/hSo4PP3fIYSJujLqVfACYzpYa0=;
	h=To:Subject:From:Message-Id:Date; b=ANsPPwysYuya0SjjHWjdRWPXC720ELWdHbU2LsCDW3tspUL8pFMjf2byXZKnU2EHwM2xaZuyqpevmUPI5tjyxx4sEOVLe9WNIsVHcuCaQSNIAPGSI0PuCUUoIerBCAIH+FP/keGi2RY9JkNDVEcvbOORYUE8G5cTScS6NRvz78Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd78oWTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd78oWTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CD5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783817913;
	bh=Mno7k55n4HbTa+8c/hSo4PP3fIYSJujLqVfACYzpYa0=;
	h=To:Subject:From:Date:From;
	b=Zd78oWThOpMHPKqOTQyu/tHc2PznOlcWDS3797OsZuiEgNdUSkWlwFL7HDtrtpAMB
	 o9AKcQRttLCCt5dvrv28Hp+pahHxHA13/Gg/64Lgi7fQf5TxFywWYqIE1WWdNhzzil
	 qgO72GzXH5InWM482KLLHttXkESCxYoj1W1QLiz139fajXBXtFEGOPNR7gaYjLGddZ
	 Sol+TTkme9+5dAtoVzfr3GSZcPvayGNDy8i7/VHnkFrBOIVeAkwZ/Pyq7AM1MqUZ1h
	 Wd08TtOVqHbW3CM3GQlLMEHvg5YSKRAJQv2GUGpqcj7kXSWhp9ep6+8nX9hMYOIjqc
	 H84OTgpxpYBxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D9C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381791368.27998.4539160204374680706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada1ca45f3e71724eb9a279d680cfb280191c699f02c9124ad49069c903986ab
Date: Sun, 12 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783817913
