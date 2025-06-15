Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24393946C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749946194; cv=none; b=EyVJZ5wOcCdQ+sRXmfFf+bfi5U8Lny/SoSC/cviRblHhvFBeXkfRbiHk3smFK4kqBNaiNTrWq9lgipL6gcWkTLFQuufo2M6XeLP5hOG5ySywdy+dS/wJeIf8W+1qVqi4n6dwM131uwR3xvy6taoQ/cWa4/vNT3gSWiqCqOz9qIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749946194; c=relaxed/simple;
	bh=t8y8XBC3jvyUJYSFgTRuqbgbtdnCb6p0Py0PDyNGGqM=;
	h=To:Subject:From:Message-Id:Date; b=mjojcmSRKr+VRBnE65RcpAXl/vQspx1BfAL8qPlX2xAjdIOI1Gh6TK5y4cvxqkqTxeYrJtWP/QuUCRwIjCGcpoAJJ8AzLjICHaISYdynIwuPB6dqbHPG8H5e6WBo9dd1e5p0QUhpYxWchbqinF6BlmY4+Szyuj6wQd9dcWouBjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZmTBT+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZmTBT+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC976C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749946193;
	bh=t8y8XBC3jvyUJYSFgTRuqbgbtdnCb6p0Py0PDyNGGqM=;
	h=To:Subject:From:Date:From;
	b=pZmTBT+BlJOHpXPQaSzlaDVNm7T0dhigm3cbETloKD2KJ+0p/uLQkYjF258h4W6Eu
	 HV8U7Hot1762mx584iHruB5fM3YzofyDvN7qhjST5kiWeEWragFuMeM63m0YG0QUAS
	 1HjF7rwaur5UfQixcz1ULezeYbhv0t2nNKQc+BTEwBoo3fiJvgZB/WKRHj3b7z6AXB
	 SCLYEOe5QQBU9+QMbavVpl6Y9QM6zlstv548NqYacWNnvggM8Sz0Grs4b6+ihagVSx
	 4OA+IHdAugCopl4iepchVsAFTNnBRyi+1uI7IzcBYNs2EGiEq8jDLbLzyjgvDhyWjx
	 kmSyfTLvLzyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99706C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994619358.25512.14788852993757604576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8018dfb8abac2ceeae638d4452bb7cb8d94d7ac270d01d73bbbe62edee804641
Date: Sun, 15 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749946193
