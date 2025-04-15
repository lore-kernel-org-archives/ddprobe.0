Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520C927511C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744697994; cv=none; b=RJkcrMM2YT2znW9KPFuGicy7ybIDsWjKhXjP+MPrM2XLX1vO01QDHkRGbrOQbrVuKYtiBNQTJx5BSAKgzJxLTpUwiPtq2QgFCFRRSYYU8v4OJwWvkI98g1bIy71B4k5lIYLjp/P2rArsJ3cz7XixsiS5CkJJrC622LQQpz6amko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744697994; c=relaxed/simple;
	bh=MVkfSZRL9hayZwMVhkojx0pQ7Ezf4e8+WRyCLgTnPNQ=;
	h=To:Subject:From:Message-Id:Date; b=pDL0UvbTusTaBHwJXhmF+caojXp5PGSROjIZJcw4q9/cKqy3+WcVpFoWzk8ERZbvjf7d2J2zNOOq9LIY55MDfXtql3km0ZfUgpEliLm1MveLpJR/6JNtTxsGdbv5BIYWBEI+/2zRKqLMOgDqMD9DRDly8+T3W+rpwnlZoCrGbtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngCgDH3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngCgDH3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9001C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744697993;
	bh=MVkfSZRL9hayZwMVhkojx0pQ7Ezf4e8+WRyCLgTnPNQ=;
	h=To:Subject:From:Date:From;
	b=ngCgDH3i2eji+06hK/fECtzuxnZQYn3ulV2e7XdwwgBI/JOM1fKWwsZrhzxWrnK7B
	 nHY+fEBtbWE8iCgzgELdMO5NwIr0sgmA69lBoiqDCwxfCMxXwpn5dHB3sfspDEsYA5
	 oay2BL9t7drL+0Up1BPdHIOZEcuzVT6OpC4dq1J4snKWMy0ubohT/KSSmVsDoRkWcN
	 x+pqxcCvGbqZIXdEFgPWmY/OpPO6qphR/MOJc3jXMjfBgOwmvmR/7MNODL1Jv9PRN+
	 P7Yz5PUfnuyNQFy0NMloh0vXEHjHQzfki6GRUUQ+7atmVB8/Sh+Z6wILbK5PlAiXvn
	 UeusV++RvDp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E51C369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469799366.5995.595745553783588967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec03e1b6468c8978f3a77d9e47408a73f96569682bf1cefb9067440f7e6219b6
Date: Tue, 15 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744697993
