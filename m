Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C641FC107
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736883354; cv=none; b=N89uqrdC8Nuf42aGydYFCL6v0goqJcM/lqEkyIEOZW3DV6DxSZ5ntFzDp2uKuqhQIoi/22C/ksHXSPcElJtvCEloKzECN1rOtcHvd1FmRiiwnBVVkx0BeUbxqecO9yituKg0AHeXxyjsmrmkUaVUat6K+JMbkTuoyFnqeY+suvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736883354; c=relaxed/simple;
	bh=MjfpCNXGVpCH75lyZinsJ4hkDqndCTpWxcDsD/Iq3/M=;
	h=To:Subject:From:Message-Id:Date; b=oJJTbLj6by0wRwIG4CW/l45/C4LmABpmq8MXWrYLARBIjfqSL7XT33VnzsaYz/KRU1uAYGYfkj6G+oJtUcpebBUFQuBQOfyvkM178MdDz4NhLgx1HDarpOHaJas8z5Eefp28sAiF9og4fqEGXS0W17BTXMlkZS8tFnxGUKfM/hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF0MVTpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF0MVTpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22E5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736883353;
	bh=MjfpCNXGVpCH75lyZinsJ4hkDqndCTpWxcDsD/Iq3/M=;
	h=To:Subject:From:Date:From;
	b=lF0MVTpHNcIOtO5uMnqFp42QvqA1K4qiLmmfMw+gEOZIEHv7fjcyOHSWsVZOPH8Db
	 YCHFyLqpTHkgkM4zECA8WymOlsZtQCGkKE6/3FcktrPTGC39tswF0piIdXhXHTBDj2
	 2LZcxHr4IjZNRYJkUxs0Z8bpE7vk+sfVH1kEatTbMoqGJlrGF9me2Wwu0A1mLx38B8
	 nJ76sv5CXreN8fpdzqWxOdM/SwrLINpU7vsEt/47Ey48ITpgF/XnR0LV9Xi8GVsmVH
	 Yg/j6cRP1GF6r4tuCIukE+VhOSqnDMPgypW4ygvJ0xSfQZzz6ee8jfBWJf8eHT+V8h
	 u2UAQA/bFkRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87FE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688335363.23273.1626739326863516240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343b10b761e1e08aa1c19f13025aafc2956dc2e845e9ed4275412e5db7006304
Date: Tue, 14 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736883353
