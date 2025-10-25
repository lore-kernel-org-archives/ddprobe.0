Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AC11B0F23
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761427194; cv=none; b=HVpjMRW66iMqhmYX5Llj5xfUYkRkkGcPlIP3oDkdh96mWsOD6kIIA3ExyoSA+gIu0CUVR1JSxXiRnKgKRSUXCdp54JKT+per5TJNreZu+68LMIMEBoERv3s3mjmYi9fFn0wxWaJhm+KsGv04MOBrCSprvSvWy/EjBbJD4yUFDqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761427194; c=relaxed/simple;
	bh=iYecsaLrPPnFvt2Da9YsS3wj0i5owKvbytcoiNjNKP8=;
	h=To:Subject:From:Message-Id:Date; b=pxRDfoGamgVhijoP9Wb5YJqODehWVgkbNWaCbblDuc29JXi/EftloMlxFODPYGTZuAVKKan2GH6wur84jLLmNYaeuJdHI3Ztpnbj8NELQcEnL8Q56flCrnD4tH2+odVAialkSwXFQcprp2ZgncTMqcYLiXMlv8zgxuWf5C48NPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k735LZRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k735LZRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761427193;
	bh=iYecsaLrPPnFvt2Da9YsS3wj0i5owKvbytcoiNjNKP8=;
	h=To:Subject:From:Date:From;
	b=k735LZRHAnsPDo3+KszgF5jeuACa2mlYTzl+G/EZk5gwBjYNKMPFdG2FkIf8D3HSl
	 3A34texo7mOua3sq/LEadWR6Iu93w+AaSDZoxYCEwTSb4rZz9Pp3a6Yn6bsRwTyy0M
	 AfMSQcsJtFPZJYmJI+XiOUtvyPqf1dxDxw6pWc9+S8fGMvadFH7ZAFxQ24xGnjaQhB
	 8q2nybdpEmh23krpE42LS74brCJqv5z/HcCvfRJxpdN0D+Yx+61XN9EEU225nHjJB+
	 Hcbg6Qk6h/9YAf6R+juU0icQUMuAsVH2pYnbMDBWcxiBzENp5Jn+StgH86MVhWV4fR
	 J775yp3Q4cSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142719358.6204.3207625537011191151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815b4c896ad4868f9c986245a6a9c6f55f70ba3044249c13bc21bec59aee05e7
Date: Sat, 25 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761427193
