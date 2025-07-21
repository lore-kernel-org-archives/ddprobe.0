Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF66222D790
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753097393; cv=none; b=PaVhVVtP9O1She+C+3+7cjWo7PR1OygnPt9YZEfzRRe+o8C1zXKxQP9jvCKRCiIbi2UoSgeTEFpMgBODBKoCKdjBmK9zJbLdLL91gKVnARl3lyeoLQm4ZDZ0AegYSJngTDGQTeMdpXGgzWIw6+HpInTrxFBXkrVvGpfAgRihZZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753097393; c=relaxed/simple;
	bh=wHYaxXLpFU+ru0jQ2w4OEGTVQ7BvpLiaTXXfIy6ss08=;
	h=To:Subject:From:Message-Id:Date; b=eTsox5ufbImA5kLGUExL/hxUPE60SPzYfE1wzmdRg0UM1z8/WLk2rux8jaL/ni9ZnY3jbGB+9Y7V9CxRBwrHWHalyFN9OBYnpUKtlXWeI6ziLKUJhN9udGSZDlqCmhgWrlEY0B3Yyt7VHz9Q1rh10I9HkL0g+CUsL4smtCln2tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9sE2cab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9sE2cab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753097393;
	bh=wHYaxXLpFU+ru0jQ2w4OEGTVQ7BvpLiaTXXfIy6ss08=;
	h=To:Subject:From:Date:From;
	b=K9sE2cabUPqG5zXukMMl6NBuqsKTGFRUZ32YNyzS5BKeK7hzkyRu2uvk6es5ssfyJ
	 97IL0iRuwwwErdG7sUOifyVo9qq28/eNmEDq2t5G6e4ID/YLNOgFdK5dWms1XlIqfM
	 SoZGJKMPmL8r8u7QO0XfDgK+oOZBwewfi0Ii0DqKMq/h1ITNrmeitevpZRrVk0nrVt
	 xUIpVjdahkd5OU30T4EisFkd2Du9ajRwz4YG8VjqO+woegK6WecDCCP8X0wLA8n/e8
	 /BhFTsrPQvTZzDeWIjoUbkRzVKPqutfvd1HOK+9vnHBH4I8D2MZEhYur3zyAcCwpaS
	 Bff50CNoBODrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90538C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309739358.2585.9663842601215647680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9a043ff3a875afa65d6482324d02ceabe67fe875c62eb089ac576f2f4449b5
Date: Mon, 21 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753097393
