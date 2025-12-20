Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1252F5498
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766219034; cv=none; b=JLHgXi0AwvdfDQe7OZhCw8vpPJSKaDb08CcFFf+jF4fi62gsFYN7iC0JIOAOS/2ylHM8mHNdLiHTUDDQO3RtTBFBgCocH5JpnE3rj8seVRDdnlXQyk5Gi2pA0XTTJ7mxQ0sNq4lEMMZ6/fx6iyQVwvwfAVwvyd0xj6XGr85fMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766219034; c=relaxed/simple;
	bh=euWojBqw2f5zewvjAiYyuxq1d9g9Dj6ajW1ahDjzPkU=;
	h=To:Subject:From:Message-Id:Date; b=sVNwgOWlbGsRVYlYgDCDpYkVv4KPdyfOimGQjsXUB+rgSHs01INJ74DblG+jOlOuD8wUpVsYBiF6oP618pwpPh2w6fX9uKDxlRSJuOXpNycvESy6zh7d+edEaOuw4sjYHp39OaJnmPri0HFQQZH+A2WqO/f89uH9fuAT3L1Jx+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1hPzoPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1hPzoPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24FFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766219033;
	bh=euWojBqw2f5zewvjAiYyuxq1d9g9Dj6ajW1ahDjzPkU=;
	h=To:Subject:From:Date:From;
	b=b1hPzoPwzjw25jzeQnlUvrCzYpBVjeMp03jfbuZHXvy5YNwNIuf227tgiRYj7A94U
	 iYDRsARU/w9m+IBT3NDFibj3cIpoKufGWIiSBoXy+zQxuncHADLV2XprXryMzMO9K4
	 4Z0JIozinHOaaaCqkQaoYigQM6u+r9xeWwIbtOdXqG8ankgrNXc7B1looR4R7TZEr1
	 emjStC/P/tpvBTaAOAgkzl1WonNbo1jboW6D+KGe7FTttaHw4yu7p4qoB15ZUV+3BX
	 eC2yvA4qH//LbKuamykpF0rfOoNoPkCn1woPJzvP2GIWKUMDAYvbV24UY24QCSJ8qJ
	 J9Q1bQM+ULI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F897E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621903357.11488.4953267172491188052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fa645a03603429bf34b7874755c36f79f39feabee3b6df121039b157ffe8bb
Date: Sat, 20 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766219033
