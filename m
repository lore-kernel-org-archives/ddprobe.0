Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D46614286
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745185794; cv=none; b=pSPtwr0BCIGu0JlpISeE97KsmR35M5QPD/WIuNdtXPGUQzXv2yKFxHxoTq1gth5LaQTqk+D/3hiUH/IoMae6D3Jeza8ttB5alvIMXGeF3Gy2qSLtK1UGEAg3JUl8OgOQGA1rYYxyJNEUhacL3Wim583hml045DziWJFxJ4T/3QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745185794; c=relaxed/simple;
	bh=BU4v8z9bzM0A6vhkbbTLDBdlO9aRLNLVdxOAc3HS6Oo=;
	h=To:Subject:From:Message-Id:Date; b=snT/HYQu1oeryknAjE+jWpbO5DlAHZufzxr/VAXM80aZzfWVIeFVzTF7CUFx1xungAP2dxaJ+jH7yqyutukjUjDtOgXSV2ysBNo3lsOxxMn/cBo5MosOcB9tRrTy+eNc6ovzwaLJvsY0QOYUMVJaAuvylaXD4tF+C9+xYwbp564=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu2H7Tw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu2H7Tw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AF1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745185793;
	bh=BU4v8z9bzM0A6vhkbbTLDBdlO9aRLNLVdxOAc3HS6Oo=;
	h=To:Subject:From:Date:From;
	b=Tu2H7Tw50/GCNIb7uDbV1gUn07E/o79DR5mpAl8NOMhwmQYYidRpSnXVQpyot7ySJ
	 qtJBvI3cNO3N0kiTepfluQYZ57gAec3ZwWQzTWPMt2VY8c/NvNn38zkdjFYKMXAij5
	 P2uelFPJOQHEwquo3OpBu0SPTH5dUJ/vItDzCSIYsYHnApidIfHaIYz2QAYeBhjZh/
	 a6SaWnIU2f2dWk6eO5V3N/TNlXS8WjnEa9nqwRREb7ikcP5HkEth3vwAnFR7JMnIoh
	 VnlewqU5ITDBP2MTgpIuxrthhUq5uJRkEeDPrCkzwrObYy35n0pQihQnj7d1F+mowf
	 cNHa6AgIpXnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94457C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518579359.23957.6382240238789665132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5fc2ebc9c5f269b7aa59f628f378e79a9e55f6b63a6cdfd5e7e10154d5384c
Date: Sun, 20 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745185793
