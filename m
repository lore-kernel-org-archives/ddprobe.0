Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F322101DE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756668596; cv=none; b=i9GM3qrrVbhL5d1XE4sdMx2BEDVIEJrNpN2D5+nQNtPHeTbr6xF8+dHLVdr9qvNLfEV0kjGW17mgiyG/Pw9f5F/lwifmcQygtFUnWvdKvIASKvMW0IOa7RgGmNglPO45PYwtZwFGWRi9k3Xr3KQd6GUwbvfIeey02+ny0DGPD/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756668596; c=relaxed/simple;
	bh=k72CEApD2sr8+Msp6CkbC34A/aBckcSQYOO9L941+1A=;
	h=To:Subject:From:Message-Id:Date; b=Eg+FoIXcXP7GrYx2KIFj7nSVBf21zCUwTbk3g6/LYYYAP+Ke10ldFxufYU8z8Sf2mzf31zBmO0vwzebz77+GKdEFR57rVZ1EwEKEzdrKb/DR4uyXzKN6+6IfqL8tyzv5nwpaRfLGAmu76lsyIekhgR6fyGtoZNX5Mh9Zy/L6D7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwRfawLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwRfawLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECDC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756668593;
	bh=k72CEApD2sr8+Msp6CkbC34A/aBckcSQYOO9L941+1A=;
	h=To:Subject:From:Date:From;
	b=mwRfawLE5JIGW7ZPtK7cevZbOaJ7nQJLPqkV1DFKEKNyu6ctXeerlkIwYspkseJ/C
	 K05yx1HqJ8uIGjcRofGU+ivSqtgzRlP4khY54h+kTBmUuufMamnibrn+1iAmPu602i
	 ldt2mj4LBkXuPwfPnyAspmQ793RqKFSCWRG9e8u8fBMDv9yvioDQ8TnZL+2vP/M0m1
	 YTQay2tkdVdIX0AN3N85I7ixy5r3qumaCOB/iWmCfnVki140p3txrWnt5UReZyjVuZ
	 O6Ap0p0bcns9XGdmwYGlD5ivrqjpKNTSe4DfByVj5XYVKdUEFaAlvY2Q8wjWbRMJ/P
	 sO0KqvUj2hVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9DCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666859357.16354.7723875567580671466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb5aa5cac9e9a2ff47ddb402047fe801e089b756d361976627461425ceffd89
Date: Sun, 31 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756668593
