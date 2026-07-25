Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2A037A85B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784948434; cv=none; b=QDQk/qtJ8M6qOGFQ/+j84TfppcmPd5dLmSjUydGrvO0iuQFUc0qsdNEoGREBYNEKBEE1nCqoWEHxSBn/bGbOqQ/Y9I9kzJdTDe2Ucxy41yP11mICS3zBKVPBR4RbXwMmKWSxAXaUR9QDIri4mrIauL/O6ClVTBNUEkL/IcJ6ZS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784948434; c=relaxed/simple;
	bh=kG3Jv48/z0aNu9MtLo1CVAJ66sgZ3piCwNZt4n+fZNE=;
	h=To:Subject:From:Message-Id:Date; b=VDASLKQ0jVrvw26feFCfIP7eNMI9IjVikOG54fMb2nqp7bCCfyoSTnAeIzEXbutxBexJesi72MupWnUUnqD3XDtkmcE6clxZVYt0HYrLBlRT6dXH/jwxtyGYGPhWhKS5cJCeRecdGPobjN+2VyOaJzPlnDGG+gRAhux4GlIQNIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDSiBiMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDSiBiMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC73FC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784948433;
	bh=kG3Jv48/z0aNu9MtLo1CVAJ66sgZ3piCwNZt4n+fZNE=;
	h=To:Subject:From:Date:From;
	b=bDSiBiMzsu0hBpLoGfRhbqrP1G4Y/K/qLL9Igz5iA84zBYd/NWTxi8MmKK1lW3N9a
	 kqegVmYw9av4jcKRRuKhFzNXGqYSvWYFZIo3fnUJk+gS4b6HOPfEXRkMZu+D32vNB0
	 6cB78+kGWlLsPgfGbKn+DVsdtlAy8ApB3LaepLpXoreH3KZmwWPfPC4OjMljdSMG4a
	 Ry0vzN3FucJ6JSFVLnU6AsvN3wzxBgSA+9z7x1GIt09hzYE+pKWgljnBoLoHrFg7pq
	 +DU70YEfVQxzNd1poXCe/IWvCd0nkPM/TDcWU/mB6xV8mN5jDt7U15Zcy2WyWz/yb+
	 lspwFywlG+ZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494843368.28510.1269542445918736552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba9d03e6aae00745d508d0f2bc7aa63aa1c5cb33f40e4836e3f4f7bebdadc92
Date: Sat, 25 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784948433
