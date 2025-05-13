Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302CF290F
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747096195; cv=none; b=ceNvYsMwZy7kHWEj5PbQB9FmSfWLstkH1gKqLi5jf/FZpxRXNk6QXsxwA0nSiTc6oo67DwY2eRjK4PFUOFNvdBUhpxUqziLK3CKLHTqrP/OaIHHHWF5L4BAGLKQgbTy9BVBmBSY0ZDHl4iYTt+PhYocdG0Kkk4llrsBEJBMjzp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747096195; c=relaxed/simple;
	bh=3Iwrwafn2gLmzr0JYmXQoEeyKSr79ClzMGC0L+YF960=;
	h=To:Subject:From:Message-Id:Date; b=ExaxE6z1Hg+kGkNv+6y+IWkMe61NBbkWNE87cPnMq6XtfliwohhXIWm81YhZf3JYJS5d21M6XIzmfnEajYUtNmLtuh3WDK+n84dS9xWOhiYE38XCi6/0NBRszQ51xgRiZVWZm6qkI8ScuTpv3Q425xKdhmwJh9Io2HdZAla1bns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG7DrLOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG7DrLOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C09C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747096193;
	bh=3Iwrwafn2gLmzr0JYmXQoEeyKSr79ClzMGC0L+YF960=;
	h=To:Subject:From:Date:From;
	b=eG7DrLOe/xBYQ4shhQy5iDc3iaq7JOWP14I79Mvd8ixxaL35DYf/QRRD3kR/m2l/E
	 DitEDSa3SJY8qELFWi7UKrfANyIuZiIwJg1SDL7UKrrg5anLY69YcPVDKGmTdUNnh/
	 +RkXOhKeBuyHUOqyQ6cOVbaKLXyColrIpbR4X8QB+bIkHLJ+RehHUr7tSv1tkzjEYf
	 79qSldDGsOHKHDxsFqGcatfFERK5QrTtT19Ot/xguFkj4uutnQFhhx5yhdaP9PM7EE
	 wizfLS8fHdFOnbPrCl/60WHA89tqOVOyflo9BQhFUBTxQG0CYNRxZXtHrd4N4qEAd+
	 ggKmzWNuqJQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F321C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709619357.21253.2008058602992712256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4281252fbe60bb54f3f568499331b6b304b5d9a188b6bd2cbb3dd2e56f1b7d
Date: Tue, 13 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747096193
