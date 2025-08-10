Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDCCEAD7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754815194; cv=none; b=jT9Rm1DOOkv6TfcIWfCXUMSMZ/0Rnts6dJEiOU+5/YQwSlhOKWknTq/BuznZJVuCKayW1bund3kKE6GancuhWFcc+LTGRGVzXi3BPg+q/Z/7O7Y3+lPxmH54ggOiuTWyFucK0UqF0EYc2uk54vzd0ZIzQ8di3UjHv80uoKrZ9eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754815194; c=relaxed/simple;
	bh=qKeiBp3tSAOkx72cttKAjDXxNlylkKjLM73nyrwKfo8=;
	h=To:Subject:From:Message-Id:Date; b=PgjePMwOc1YZXh4SmwixtqlawVkiXUHiIgj8rQSBDfQ7vWQuHZGUWKrZCy0BNCQ4Bl1mjNJm1XBH+I9aaXJwX2ldzr+2SGpk1l3cyLVNG2ngnc+KIXKUzdR7Toj61J8UYeSefK0RVWsN+TXkkRNSjbUiNzZTR4MvC1V9+jl1qZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQOFA3gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQOFA3gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B87C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754815193;
	bh=qKeiBp3tSAOkx72cttKAjDXxNlylkKjLM73nyrwKfo8=;
	h=To:Subject:From:Date:From;
	b=DQOFA3gBqFvexk9fczsN2umWR8rrgA2Hy/cpkqXhu+7RXHoZ4LvbIVBQ3pqxKXAhY
	 /8sd/O6x8NJdVpjUgFuvT0vZJFn1PkcYkgEXd/FM0v0WlOIuFdf0AZ6fOlT4KVThQA
	 5zyb3UqiqdEpAdKb6CuF5QTfDw0D4WVdNIU2A+0gBhfVYUaL80mnXEtO5gymdABusC
	 IWIN7LgvHyJWifRtR3+RSU/nZbXxV9AqTYtoFy9OBHrth6dg0Cb1E1vliyWZQB4e2g
	 gZzJPNj5UIIeeLxb53HYkG3IMEESL37x02UMYT6FPZSRwUZhBfIF0IiwJokXJjQIiZ
	 ZBn+d0OlAEeIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93070C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481519358.29615.11884052092750559018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f993250db671879cdf6797f302f30891a2247bd591254236bf2b240fabbad90
Date: Sun, 10 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754815193
