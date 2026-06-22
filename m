Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA1133BBB9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782153394; cv=none; b=QzxAXbB5N+JtIXLgPOay1XiaFIsY+qsBV1bMAd39I9gtaWrrvgJlRE1IFfIF91uvf3NQnIi+8vhzTk8MH1MJkXvrJf4gMKvHpvyCqQG4z4od1NlqCiSL7wY1SJTso/B7ebEtguqNw2VEayAi7eu1bcnKEXjvvbn1emv/qv9WfuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782153394; c=relaxed/simple;
	bh=V3pEVSOgZW3HBgUY99W6XuJkEd3dCwKqB9hIzNyewqo=;
	h=To:Subject:From:Message-Id:Date; b=rp7lboYoa7Q33lvDJWhIJSGrTxARkgaCSfT/t7orz6AuvdFLnfXnpViXpZIxkgDtkfc2qu5GRnGGudLOc6jZUYzksTAg6a9jmLRej6bKSBVEjGiv6HCOrGqpFv6X7QEQ1oWf45oBrpeXW/tAbK07bVflfsyEaaK7HAgstWVgWQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcoccC5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcoccC5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3556C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782153393;
	bh=V3pEVSOgZW3HBgUY99W6XuJkEd3dCwKqB9hIzNyewqo=;
	h=To:Subject:From:Date:From;
	b=TcoccC5Uaavah2JONF492FxPGvh5Hm3nQ0RLzyqNXT4ZUjqzFkv7V9+2lIErN0Jzq
	 PYog1MsAsXqNdQZp9PQ8sZoCyl5iJ0xfzbaY+pUCt9oHZNObPKoxKGZ+71NNV7ff6E
	 0ySeGk/CJaFm+9AH9YJYnR0fawnnzZ4ulfIgOl0UMiQueOQ7nu5wE0PEYQnQViardU
	 umHHylNYBmvND+pAgnHiLR6a1Xyqxw5/iVhq6cuUuWDPbEAyK9O4YCTUktDznVd2bJ
	 Iapk1tN4YsoJH6ZBrzsA/b8GyUfZdEOTmBFXStQ2aAtx1fsPGRWrWp4kHJwNs8+tqy
	 QZgjPSfv/9b/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C5DCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215339369.8710.13947002975545588690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb22d9458ff3f3987f4ff9d04b04164b004b1c3717d8aff80db61ed4a2ba8f8f
Date: Mon, 22 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782153393
