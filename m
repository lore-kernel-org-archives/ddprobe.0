Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F95021A453
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766991834; cv=none; b=pTsWru7FLkw5kb+WVk+qCmMWpDO9qoTHDI1aeB7Nc01R+y38IlShYcciLakrXi0n2Tl01yoVI3bO22wQ2thn1bPOXV5hoZ6+SrKkMKo6jsUbabHPafp13RFlGlHEQ+RWG+0Dp0EosG6rJyY3xJjKkTVqVL3jYLUG/OqoFm90BTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766991834; c=relaxed/simple;
	bh=YPZrc+pT3Pq3oLmH7wFlywJLxmzsKsItJSNCYvHdwF0=;
	h=To:Subject:From:Message-Id:Date; b=rEjef79Vp0cpe0y7YeVj3/OiurmqZEKmtYFU2djQKzVV+kmvqBQUlAYt1OdtyIg3MDqjYEB+abUbh2doMFBdpP6IK1frm3cHnRH8RYWRcwO4JSWNjKURZTc0aLmg7h0WCHg29xKFwkV65A2XZZ7EnNgXGItHEvIzUxOINW+a3Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/KSp95E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/KSp95E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D64C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766991833;
	bh=YPZrc+pT3Pq3oLmH7wFlywJLxmzsKsItJSNCYvHdwF0=;
	h=To:Subject:From:Date:From;
	b=E/KSp95EqbfrfDwyVJ1iDMJyvGm3l9RW1cwJODT+ncT7/aoCFelZlGpxVd4HQMUNO
	 bARczjYzL8jwupk6njQvxFatT9j4K08Hw2QWaa+5q31lTwkddtCWVuNMedoQfWD/x7
	 4w/84g0L8nz7nQzZ8ZFqf3l1Jtog27MSegNqMBCNoHCqwtsB2kRfD/5gPCpe776qAG
	 SQpbbDSVIHlnQfm0rykCRaydIopqupgUkEG+anYigY/ipfq5O/rzQ5gBr4KMx1Gan0
	 kOn63yWaBkWq/jPlKemBG2/boUmm36fg2/1b2YQXhB6YV5fXl7Y56kfIeISHyne/bi
	 V1EcVqOOuMRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C74CD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699183360.3492.10511532238544659246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f92bd1bfb3dc39c456f4131416139ab576a49d57542d7cf5dd9bfc2f55f2e0
Date: Mon, 29 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766991833
