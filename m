Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E2F50A8B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705973897; cv=none; b=W4rekjijDPoFwy18B8SaBAbf1+6qfwvXTFk4778FQUvi3JIwb+ZhjbhRVLFzmm+t/GV0AWAA5EVeFADtJQ7oW4E/KtjGTQ3zaEHzdB7gZDY6CNGSm6S1vN/Qb2bhUBO+Fh8AolHCT2YCFN40glX3CBmhITLGmhNZtwHGyzbhHxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705973897; c=relaxed/simple;
	bh=5csTGSG+3Z/56t6CFCe0AQd4wwTr+AQUJ821DA4uXzY=;
	h=To:Subject:From:Message-Id:Date; b=VAVKDWehv6h7EcBa+eFlH2D7opTjtdXg8oKKT8i7U59DTf007jxGNJMZcJ3wZgwt8AhcMfwJDouza9Gm/SBvfYQJbGTKL6K3ZUyx4AzYqk8k1vxZrLdrguJwyApA1NqljFPe0HFzYpJ9TOuWnRSNlzCepgxMTLA6c1pSfZds0/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n05i201B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n05i201B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7392CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705973896;
	bh=5csTGSG+3Z/56t6CFCe0AQd4wwTr+AQUJ821DA4uXzY=;
	h=To:Subject:From:Date:From;
	b=n05i201BDEZ1r/U8k/Dm6hMOB6CSQwKnlquuwaWRjgu2GKSr8rBKUzxa5yeyQSW+P
	 esDeKhKeVkra+4bafScUXmVCtqcZtKrXqRsoBpmBVEoszV2BaOsEAtcKpBcRTYTRNs
	 Q0CrpEprfMr/JVw7SocM9hDLPp/2fO8UIzgqWuZPS4dcOIQQqKGyLchDg+fx2+oVYD
	 vRSG/hedwR7chbFEQFWAgr2lkcoBV1hUsMQxhKDNtnf7ZEjX38rbjfYDjkUgN2ZXNL
	 tXGdUQAQ+dvUQP0v+BIMcUaJxIcuyZvFs+Jpepbv8/XgTNZdyetLiUtR/CI/GqXMsO
	 y2axCTAgRtm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD2FC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170597389637.13005.6988840146322909062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79573453b95e342037e68aa39a45c6ce19822b5147da93d93f1b56ad4cda3de
Date: Tue, 23 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705973896
