Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C28535949
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739420335; cv=none; b=VN/xYav7DPUpht85lzh3WvaeQ/q+0H0cROtHbFrUlHjmBrdNoo3xZVzS4xmv8IHA4iVUKeXOv1dEe8cGY9OuaXTD9/3ftFktrTaL7xMuIIGIspPdbTalWQLDzsNPvWgWiNkJwJh/9r4nQh1XwivYgYlCOorqzHpSZMwvxK2F9dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739420335; c=relaxed/simple;
	bh=4ic2GUMU19aYiZuS4QHMCJm3niz08msP4rARuH0DIMs=;
	h=To:Subject:From:Message-Id:Date; b=PCREybnofWQF+gQbOQ+YKs4Pyvh+8RtRDri3LEA2I9s90pEJCaJSMqJQUn9DgTCW3YmOgFeS2CEBnoRQZ2L3IFoEUEnA8p+2fSyWoKf4SxIeRuHnpigZicBzv7Jpv62P3XQMQP2Lc07O6Ujpy85ySETVjPfbrUhhSqCLnw9Cefc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6otBvun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6otBvun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5E2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739420333;
	bh=4ic2GUMU19aYiZuS4QHMCJm3niz08msP4rARuH0DIMs=;
	h=To:Subject:From:Date:From;
	b=I6otBvunJlSPresQFsBlFkwdLKDjigFD0dAutUkDgkrbehRkqRvn0poMH9HC3DGEz
	 xGeQp2s/MuMW6W5bR4ONhJeZDdu0ok3nBzjYhduYkx1Dq6iGbnpDrzjZ7jZvKQBWC0
	 nzhBt33DAdF/GWRvXAdKrpdsKX+pb7b1w83qFm//OozumsYUawRUAGPvg5vvTmhBFS
	 p85/zakukRcowH4QIKIugE/dmXEUwYsqWLXfQYvKF+yFvttVR7a7tyRR6GpP0Zz1Hv
	 V2bCc/UIxDMPoT6xnpA1jkzKNqFCbrSOvP9xoqXX5W+9770h/exM0uVZjaaLEGVmb3
	 pRul5Yxg8VzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF35C021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942033366.14274.16598616539793296698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0c858938b4d6b5e1bab30482f51690122f1795acf720ab0932327bedf0cfd0
Date: Thu, 13 Feb 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739420333
