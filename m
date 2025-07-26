Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE77207A0B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753565394; cv=none; b=LBnqsKwNxtlZMipQziAFfY3rK26mnzZJSVkyZePYP0fIK4Rnqu/sUNDIzCTeKkTQ8pAmGtn79vlPUXhS0QqkS1TC3fazhRZQErVc+I7hHhuCWo6yW6+PhI27SkKezQMs+hpjorVfuJHtC5JNvjxJFiad/5ewR1OHqqh6otznazE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753565394; c=relaxed/simple;
	bh=MEqlwDQo0xWB9rf7IhbMyAxehwA9VyEwECjmPQn2Cfk=;
	h=To:Subject:From:Message-Id:Date; b=fRgWr6B3nWgGiTaueqSMvLB4gXHZ8ZliREgRY8pklaMBZKIMIE2RE2Aa+hCGRZGElIi6gtxOoPqg6ypYotO9fnKOpHPUJS8+tLQuVPspgs5lwYqBd0VVqswoF9q8cVtS2IEt7laWNhFPlwje1y9ljUMK4ev/BwV3owoK5lEVBqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3QfR8NL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3QfR8NL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD49C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753565393;
	bh=MEqlwDQo0xWB9rf7IhbMyAxehwA9VyEwECjmPQn2Cfk=;
	h=To:Subject:From:Date:From;
	b=u3QfR8NLrdoOQP55a4aD1W13SaZMSfFzzBw0ZROAxyNUh4tFYILRMJsDytx9YRotl
	 tekuazZxxBeNNOS8H7vY+F9cki3YOMOflHV17bPKiwlDIjJupGJD2NxVPyyS1JriKs
	 qZrIJkR/1hKSmJI3vEa4N4cF7wKNGlVxs9Htg9qUjTuHcKSDIKQ+ConJX/dd5xavYd
	 zVpGCPL5kEnc9u90V9gPLSDevPc+7ncR7C+EyIAATQVveTcUrejcFBJqr19dpqilCa
	 Nxt1Ue+Lq7MOWeE8W59xJD0DTUd7nzfRVs+Oq0uCahkIu2QH7YBFN/6g8XBmzC1b9l
	 dpFGCgxSFBmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F942C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356539358.9756.4402504035343285533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11289e675f24cd30c2ae81217432090c685f9808f51492264a1c3adab8a881a5
Date: Sat, 26 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753565393
