Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EC710EE
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705796297; cv=none; b=Hrq361ij27DlD0h1OXpIRgMgqnb7kolDTZPiJjo9zEsqQ3eIwvCw0YoHqC+QovmUyuslkkAbr5m3gaBGEfQ4KfyHyga0dpb5lQzBXxXwao1LoYNFN3EJ7yzYSftVLRRJsuQRtIq9FeTg0RZKxPLiOpNXr1ndzaBYfKSAA6N35wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705796297; c=relaxed/simple;
	bh=GY+pFjbNsBJIa7cgLTxDBMLFa4WKiDfjBFtRbDESlx8=;
	h=To:Subject:From:Message-Id:Date; b=cWmry41txEfF/gu/a7ZQjZeyp17L7VYwr1Y7qUqdMQbE+iu+oKpoWl9uBEWaldellSx1IvYPcNqmBTD/B/5B6KBVq0wtQvyE3naP56mLp9EL2urCT/AYWom3snSa489NG1iaqnH/zpH4BmDz+N5GBSGhZX7fpdGw+0p3HvT/wx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1wO0Xz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1wO0Xz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A29EC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705796296;
	bh=GY+pFjbNsBJIa7cgLTxDBMLFa4WKiDfjBFtRbDESlx8=;
	h=To:Subject:From:Date:From;
	b=C1wO0Xz0VS5SSf1QS4DKrKbR+UFeMSDHA4cZE825oL8cCOkUDIsTjorWIy9i08r74
	 gcpS3ZRMp1IsiYa12NIN5Lztv4vJu9vIiamVXpr2rhZDJCARlwkyXQwJXad5Gmnpxo
	 s2jql5s7xVrLinF8R7G5dumgrgug8TRxe0RepzHVV4Pgw8VPgS8VOv3PavpWm35ZfZ
	 joyHtOEt2EbruT5i3viNxsL4UpEPp9sEPR7nR6pCnAsq6kNU5plmTxJ8sG6LYD8wQU
	 Snoyp0o5VxTfklUXOcf3H+ohqFjkvLhgR0VyUUS2Hwv9it43rha2BxvV2rbDuJoX3T
	 PUNCAKvSbfofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEFEC47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579629636.10047.14532472556443318971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0148559408e2c9e54dc674dca110f4f92418e6087cb32121addd618b88daa34
Date: Sun, 21 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705796296
