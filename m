Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B51218AB9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759371594; cv=none; b=S6tlcIZihAx5hNw9xmrP4ApIc4GT2iKv4ouF6YI3OJ93XoGkVrP1+lleTmLZCE9lra3CUv6hnzDL/OXdt6dyymOXoUjwi2V1kfspqDfoi3Yb38N4z1KLcXeULHwxevPzgjtwXCiSpt1zElF+4mNaedgePeENiW8cZdl9pppxzlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759371594; c=relaxed/simple;
	bh=uggB2lgd5eTwBMgeZU/Fj+2XqZ+5uCfWg77tSkoJAqc=;
	h=To:Subject:From:Message-Id:Date; b=O2kbyLMCZAG5uLduwVCAQsFdQDX/0nq7clq9sQWG+kmbHvuJTBCi+pQvIFyLEIASDIgLK03qvS8SddcL7QsjzMBkmUuHReZBagIW7GFhd8uqv6OpfbXN0EIf+M32/eeOqVW/nYA6hgakEBwMhZ4pV2bbl9JlzYzNY+9Oq0hvETo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPkDWasT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPkDWasT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759371593;
	bh=uggB2lgd5eTwBMgeZU/Fj+2XqZ+5uCfWg77tSkoJAqc=;
	h=To:Subject:From:Date:From;
	b=vPkDWasTd8JIL+vue++kE1UaIKygHb77xIscaXCxnzCpU4/hfIhQM7WzG3e3HS0VR
	 JcM9h8Vup9ZPQqb+KksqnVUBeg0Kh9OarAe9YmGiyrxV0Pto2Lebd0f+O3JmXdDRtg
	 uACkMIu6t0o2gvMmCDnewYsoLxccamX8xdUP+eBMxxyAv9uJV3k/33mV/LfLxUjwFO
	 3Y7tnqRkX6duSKTdlDevlAd+nBt64Eadgc7B6YLZn+D0e575WJIllSP3vjBKM4d4zq
	 ZU4TyujeKqq2CAhE8KY53D+fBKRGQwxKVkpnxVyB1tqex5DCFWm7kuwg/PKRErBdLt
	 hUT7umK1UbZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97207CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937159358.32465.8637136621811103638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db973345125d2753c549513ff7e52f94635c226143418cb1f300b2c471634f04
Date: Thu, 02 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759371593
