Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE4F1369A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727478954; cv=none; b=RE/polShFREZowibSCyXj/x86U0mcSbwFzAYBuKOtqpVtB9xEjIIZdPbo8Uqm6TROQlK7qP4GzGdJ3CD36Ti+l8mof9q8OxWZo+H4N6U84WcIrBEDdPfhHxQo+mJ910NnMBWTlLWCYiRqHkOFLJR3V/CDTN9zU0W/UxnKxh1cag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727478954; c=relaxed/simple;
	bh=6cZ5rTf3rAu4elH1gqscSO1r+2VLMNlkZTM0oIPHS9U=;
	h=To:Subject:From:Message-Id:Date; b=RebnLyw/tlJoXJL6BpuNekrycvkSj44xxaH9wMjzcXpoQdFTmRs7vz+PLVsixtFng9/rc9iclOQBaVWGfO+lt922axt25F0csn3zgJps1muy6Cg/M68Nmak5GQ+A8H0uYzPH8RLscTofUjvWj33ydhNEP/zf4OKuT8Zqag6jT0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OawT8dOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OawT8dOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4807C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727478953;
	bh=6cZ5rTf3rAu4elH1gqscSO1r+2VLMNlkZTM0oIPHS9U=;
	h=To:Subject:From:Date:From;
	b=OawT8dOkIwWs1QV7IjyPI25V1RUmqi3BkUHWMKYLhz6DZxi1uEq1/JW4ap7KYZ5k9
	 ArypWnUFLE+6uJ+dqFy2xuJcNrKoVsEbl6G5AP6b1ynvixwDbUGv/dFhUvLs/WZfYA
	 +vWltpLjv7wWBkW8GW3txwi8Bzsq3nQxoycmE4gCmrpZR5awTL16T7TbbsvbzWp41o
	 FgH01Fz4xYIaVgu2ymblFU4tZ3xdMGoKBrj8KTC3sXrVTKcqlO1NFsiU3YLWb9Srzy
	 v9vaubAGWDeForO8X+/3N5t1ZRnw1tBKAzI3jmVqeEuYh1BQx5EwU+DpTssQl6dZgB
	 E84yjKn5T+1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515DCF648D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747895360.32171.2434880776209191859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892a3c9647a0f5b9f7f6f6e822dd68b88c858e54a3bc62be6849eb53b5c7624a
Date: Fri, 27 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727478953
