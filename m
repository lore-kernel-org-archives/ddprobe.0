Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177EC19BBC
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753008595; cv=none; b=V4MXKJiYVsB9qwV7/Z26C3AyWRFykEhBLX67r5m2NNL8uKR5GyD/nhuACDm7B2J15WUNYqg3AzlUfJjpnywek2rVEIkAj8NKD2HSdqQeEoOKk5CzrsO1UC8X+r8KduR1wP/vVs1F2sRz2GfSjSJsDCJajPmy42Qwud4o9ilSCAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753008595; c=relaxed/simple;
	bh=oT8DXzNQHahDZhBlXjAnOxZIhLEhc5Pq5R0iWmbzXuQ=;
	h=To:Subject:From:Message-Id:Date; b=FGu5sRMvPO4a61Wsta0cCW2qzIeECOYisZCKI+5JctwEax5uGVG9WQRBgZLb2KacRhYquSXC3C3yhM7znjIFNYCWaT9QF4HTr/CHfeA8EZuC1UiBR8lVOsKE9wBwtt4GxOUZTT3NWzemnbumqEmysiUTHztcBE3OaOyyja8aWww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNGw+Dsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNGw+Dsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753008593;
	bh=oT8DXzNQHahDZhBlXjAnOxZIhLEhc5Pq5R0iWmbzXuQ=;
	h=To:Subject:From:Date:From;
	b=CNGw+Dsn5rNiOnnNBIv+DnyqMCoxnXzS3uBcFTxc9YrqsZ1k9nYq4fxQjXZlNp0Nc
	 sZE7WoY3oMpmeyfmOrz8wBMjJuwgl1D+BZhKyUx2bHcnkGL+ZFeiZmoWZRUXxX3afk
	 jluusiSwU6a1dUtNqnk/FRWQsLJ2NVhwlj7rCPn7aMgsOVwyBTOB6T2AE3JewHyxN+
	 7ThHz4HEzPgXAoPSgy19uWVD/FU54nrYWN0paeqE/oDIpR0Mgv5ytUD8JTdyI7NLwY
	 uvdfiWlJpWg/fH6c+hP7y8TWJItE2YO4B0yxmDGxL0HUDK+Nw1BeM26i2LaXjhYf3N
	 qUiKD/J8E//Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9439CC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300859357.9465.10228108714210298956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1bc4aa550ceca393399baf88b8c0ae56e1057f5cd7c0c770616ecea6a3ae58
Date: Sun, 20 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753008593
