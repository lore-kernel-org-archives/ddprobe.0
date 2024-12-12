Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7271222D4F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734018354; cv=none; b=qODFXVQBqsoIS7ZNbiiz2seclEqw/bquVwotfzJwvztSC8ioaYOQnGq3XWLwsm93+RCw3GOw2hFXk2rG8/1dOoPShtDKq8Lrr98Fr7/nN7euLnNdlpZj/yG3O5E1kHryMtdyNNTttMOjXUaUepBt/x34el+9KkWVBetTcRl50Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734018354; c=relaxed/simple;
	bh=0ZTucMcXMjiGIZfQsvG3NyoRf8VWjfKPQL/gryYzhq0=;
	h=To:Subject:From:Message-Id:Date; b=RzLOL04KzQ5/INlV09qzbUCsPnZskoH018Q9C0X95eZ/wZnOWtzBuC81Vs2yNe7HLJ+jFHj9eLq+YN4tG16xid2qyCnAewvJWNQXeHejUp+0FpDJxyWXp7GLXQds91wptypU/cIQaqq/FfJJwEyNJ+oYzIw1GBqsdOjv3PCNouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knEewZt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knEewZt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA6AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734018353;
	bh=0ZTucMcXMjiGIZfQsvG3NyoRf8VWjfKPQL/gryYzhq0=;
	h=To:Subject:From:Date:From;
	b=knEewZt9FLL6LK+z0nmcKA4TLTIUIu5MZQQShCyGErYFo1xo6K0diKIjnbxalqkmZ
	 vS7SeDuMlhGylCKlQ/TV/eJKGgGtJA7A5TQ11BAf08JWrgHmN1SkSksX0cW+K6+ukT
	 /jVTfuv4AFGH/xlLbKVqRgn07c7mYEYDVnwjB3mkjcMBqqbILC69UKGScojmPmT0lT
	 FGQGu6TtdXf1r3v+3icjib0LhNiHTB16xEpIaM5m5/XXeP+GJxK3mTBuZpWm+OCqKd
	 okdQza16Aa60Ppkh7Pf5MzGCELD1yIbnFiujDat3M86rIsC16gI/zax3ILbYyaALlZ
	 r5tPJB6YQhwwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB7BE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401835362.26687.11096907224623357443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbff1451d2a8504c97b60b7c5d1ad94fe53e86eaf49b91c183d6ebdc37726a7d
Date: Thu, 12 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734018353
