Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BA032BF4B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768893834; cv=none; b=YErB2P0fi8gCggBCR1utuXtLkOXCnNPc0nhf2WcY9y00YxXkbz+p3Ac/mUQF2LrqiSsPjDDBrYuSU797AY+Wocs6sHmJs2YzNmggzEMcwDE0x1TNQtxZm51H8VmkzZxfLJZREWEhWuzf+mW39M1SLPS7iJxPvZBAzIVO5LPSL04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768893834; c=relaxed/simple;
	bh=U/LMdCovyDwjojOzWn21N/iGLX/Sf7HDYyO8EORuB7E=;
	h=To:Subject:From:Message-Id:Date; b=PUDO2BrKFx04RhL1bSz7QxRV0NBgZRX5a7cC9wAbZyK8E5lpXgfhqBEVDgG9MQtMvOcp83Bv9oxVwlh9i1VWIfByQK5WGgmx3qpE/jHWhKxO+dIYAr4tjIGAIJa/lxtrteKN+SpLRqxgVDfC+2C5Rq43QuLyIj/mpBll0Hsqd3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zhlg/TLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zhlg/TLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E8C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768893833;
	bh=U/LMdCovyDwjojOzWn21N/iGLX/Sf7HDYyO8EORuB7E=;
	h=To:Subject:From:Date:From;
	b=Zhlg/TLoWUhAUNAC1sXOFKKdsujuo3eC41NFanQ4BoK9mPqBrN4q2cT9A1tZwV48v
	 as4hTPZKsw1CPY0ynQhXkiogkI/n7JETlk3nXX0H8JKpwd4IQG8zqgrTNUn/KSma8q
	 2HD8ORePVFO+gIixOMhK6V4EhWgFMCqOEVubtDqlOO3ve/G+5d/acfiD/QZUa5ZjSU
	 xuc285lFd7cjOah0P/DEDU00zbqtJ9zxXg8B5kZ5M5QkiwCo9Tg1ZiDqPGrokfAbkd
	 Z8txP8grXzJ6ThEW8trULQckQ4W5EoGq7C3qW3JaVUGwMraG4R/O7nBrhM0/n1fY8n
	 ITHeWqvpxLqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4ECD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889383362.28659.9552736691723673306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d34fd784e0a35dcd1680131cdc4fabd9dacb301862b916c7c9fad9da7b2fa7
Date: Tue, 20 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768893833
