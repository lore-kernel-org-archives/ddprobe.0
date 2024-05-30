Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A79A186E26
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717078463; cv=none; b=i2TGoj9gK3rNukCCu9q6U77iVpB58GKTdUZ82MGepNwL+R173kXXKjPtsNoFEEgB3nbpBc6XGy1NcrV69PV70tBAvyRrceO2eUeZtDMAr5wsjhF32Rx1rkmTLY4ENZZV3aogtpMi4SMDqKFvgAmtq650c/GKb1LUCOrFRioA808=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717078463; c=relaxed/simple;
	bh=wt1Jc/Fv+QW5ddzUaQIeyZcPnR5u9RHoy9CB723Gy0k=;
	h=To:Subject:From:Message-Id:Date; b=e49088uilo28g5Si3ogEg6LmRyGhR2aMRQ2YW3Msh6tTRH2dwePgZsnn4NmMg+WpHKvx5Kks4OKW4t9QgUSzCAeDFwKkl1oQNd360V3959dVM+HCMeQJ5oMeN3HfqtlxINeGIsuDvE7AuY6fgNQlu/RGe8k7Q/bk/GsrOio8d6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7b5enC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7b5enC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDCC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717078462;
	bh=wt1Jc/Fv+QW5ddzUaQIeyZcPnR5u9RHoy9CB723Gy0k=;
	h=To:Subject:From:Date:From;
	b=c7b5enC1Tcytl4m5dCMGPpOgEB7mODii9uKrcjLxEjTDVmRWATdoRL4/nX40h21lY
	 nEoourwxgkwlYYYlUImbW1ayfmzr6eX7FuraS6837RvXUfVJqh8d3g97SjzUNKhQDA
	 zDM3HeNvu6U7qxcbY+RsoGAC2liru11PIg5wZePXLloFf9mIBxPOzX6nGdLGjnFVRk
	 C2iP0nSEINcvB91T6Xa1J0g6vdc79mVClCWmq5zN6krN76C6VeP1D5xWWBpTsWlO1U
	 yNp7qkvbyEAIXMgq6eiIroCTBpc1XoF/IEmC0xR/HtHlJf4X/TiU+XZMu2gL7F+gtY
	 f5sDrWBEbFEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF418C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707846277.3845.2018851860044093200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370422fb0750f85211bbd70ec433df193bb2ea06e785c56c7fc2a24c4a5e596d
Date: Thu, 30 May 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717078462
