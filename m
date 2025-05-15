Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2F282F1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747292994; cv=none; b=o7WAxd76b5n3fVSeKWHbP0qP4ls6y9sYYXjF/S4Z+UzmwXy+GZUNvivGgup9xR9I9XxnIuGqRZ8AMeXBP/cm/bvy2M6F+5Eg4GL54qR4CGQLYAJIcHXcqr/cdjDk6GMPC8yMU1eQe6rM5oSWPnuWPtsc+tdexXFBsJi/GjwUF2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747292994; c=relaxed/simple;
	bh=BVc2rjSUJ7QuYDuNzJNbor3uEdu1HVcx9YY9QPdZ5lU=;
	h=To:Subject:From:Message-Id:Date; b=rG4v9FHR7wiTBxvzl84giFbHfiOAzNJROCTdKLKjqoMlw8ajTa3FQirpzPKc3A6hAm/uYRNg3No4saogUJb2VtXK7OXHkhSNWQGJXcDUs81ScXaOtX4ckAtFcmcW+4GumBkUwsSn5COjiC0xD1SShdtvc4/KQVyRlXEjtChg6ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbbtEymm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbbtEymm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F248C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747292993;
	bh=BVc2rjSUJ7QuYDuNzJNbor3uEdu1HVcx9YY9QPdZ5lU=;
	h=To:Subject:From:Date:From;
	b=WbbtEymmJz0cdznHVUWwI/+AUbiE1e1Q8CdnlzkKJYo0Tg7sVSJQ8075N5YrxQxdR
	 vFmMCR/R2Yzdffo+c7qF1VnOrwHXjGzEELnqZU9S5wPf94m+ebk+cIfPj1xgm5Q6zD
	 CCwtOexjR3VXIhnPlt297OczxQgZM7t/9Kxe2Lor/a9Nx0cfeDnD9gdH7CLCM0SkoR
	 AOEWGC+axT/LPUZ5QAuQG/IFqUDCYxZRAreIW5KWa3X0KJZWANsq0/0BZY3mTBqVG4
	 2vBkqJgDm1qhB9TM2rHlvw4DZcdi8RUyfFEaEM1HlkjRk1geyoduo5uUP/TnupfJYy
	 WTyPyarmDfHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA54C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729299357.8330.14376635786122885098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f374a93b5c7dc93752079592b18803a9744b228999480c1029a21fc1550a3
Date: Thu, 15 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747292993
