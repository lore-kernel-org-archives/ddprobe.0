Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0C02E36E0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751692794; cv=none; b=VkDlrlbX3qfHpTJRws7bKAdOOKqKiWX8MZNxt4jX/dqHqwUCxgm9+1/m0k7pTxef4+9Z8PvxbyGL2vIcJc6o+pVr2i2ds1A1EF524ddUXUb5sA/fD2cjH6bILx5yU49iQ7djsS8J7s0I1g9eZtV+D/SmA6Pax4AxMxOGEWmf+uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751692794; c=relaxed/simple;
	bh=aSIYkWLqG1aRoJt+c5lIfEERM8J/06b9k50qhtxiaZY=;
	h=To:Subject:From:Message-Id:Date; b=VxOzOOazeCEPUvVexZ1+ShnFx2t/HC1LkZSQXsl/EtzjSvGJ6iQ/aOVsbAeIiKBe5enpV8oHJJvvIxuLhouXEZIEkUTzSHgVi1X9zctApJqlOS5qXtkQrpQXw5cHFdbd8SHNYE0hsKiY8T4+rvYflJKEF4nJgtlQE4VpstNrUj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3zbT3Zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3zbT3Zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751692793;
	bh=aSIYkWLqG1aRoJt+c5lIfEERM8J/06b9k50qhtxiaZY=;
	h=To:Subject:From:Date:From;
	b=r3zbT3ZuQs7MeqhrZIcxsL64zh7ZQpvf2VD3ze7IfSXUqy3xJp6Db9WNJIotyEkFq
	 GwuiJ9sMKfxijr8UttRw0daexlA/A30m6/7Yj+qdL8bkDJFGkOudfBhDtf9hL7aJYT
	 bZrLHN/RmxU93sUeCiQDxGsnyfBtj45+khMp32mOv4hHthq86z4t6H628CorHrZv0R
	 1H29xXdGNwgyDu2Rb0FPgNlcMNo2FSD2z/9ZyUJwY10GhPzw3bF6VLDsAZA/nhYRKV
	 2j/GoydtXF3IDOM3oT+bGtMR+Pzlvb9280MHNyvUM12oHIayLf6nj0u0k5oEFRfU0z
	 5u76b/7Don4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169279357.678.5427711035180092530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6e6f0d6fed938ccda1b24982658c39915c3ef77ff24a0cd574c560ee3ba6f1
Date: Sat, 05 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751692793
