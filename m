Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC9A95E
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759573794; cv=none; b=TCW8oIqO8dSVNtRqefIDBjIrlBJancKBHLthPSRzZtx5B3PLMSLuTztPxKzYAe9ufJ3FscoU7M1ows7Uhxfy8Gc42ZdEJGlRiyeqepXI4w7vqlYXQlw9+N6MaNVzu01tc67ReJb7Bu38U7bWjqT1BfrgTyms8fOaLOGUYUcbOHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759573794; c=relaxed/simple;
	bh=W3AJ51R9E956tNqjFFIfmrmRzCt3gxnFrURs2SAmz4w=;
	h=To:Subject:From:Message-Id:Date; b=K5GF29B0HzWb7LxPvjPLBxSgCiQcfR3XMRxAWn0LbnB5fTFdr+23BPI6y6Q0bhVib6SdgLcLbYoXjfZlZEYGmoK1K5BSy4bIDUVLeFBJOcQfh9FyOi+2AzN8jzzizcQvxAgz+Oh6ZQNU1b0ETMYvhE0n2DVPPm5XdMBWv0GSwIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVozOc2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVozOc2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9701C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759573793;
	bh=W3AJ51R9E956tNqjFFIfmrmRzCt3gxnFrURs2SAmz4w=;
	h=To:Subject:From:Date:From;
	b=CVozOc2T3R8ayhbvTMf+JUqQWZ9Icc/ZWjwrrcsN0+dM0rDnHrB9l+uZ3TdusN/zv
	 M/KKzxgWPN6SjxnNIrINn7plfs59ljcJbBoCc/FJFhHkBtHXpSS1kmM+bStD3gdpKK
	 ub5cZGEjVdmpo3JAMzXdzJnwTSHxVNNrxmbYzdGNLarCvBEAvlmZ7jAd0xR2xIRAmY
	 PRrMQGCC4cK30jyz0GItBXS2GyhSMu6QcerNwGt8Ka5aGAJ6mslhA28orOAiC8NaAl
	 HnfwJKnpDuMcnPGDFiOYrFvjv3mklLlURIipgReVDiIYOPmxWHjrEpzXB4J/M7IpMq
	 ZRiQhmasJKYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7DCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957379358.2971.13513904586589916999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c324f920bd0a896c9af4f2fe1660bc6ef8d25e71b2213302f0f63b74ec8f49
Date: Sat, 04 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759573793
