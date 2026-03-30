Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFDB33CE92
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774844694; cv=none; b=XDyrFK615UtsBV+r1xan0wJFlupg2QKR2iTyEWYbfYTtM7oxTca2gSWf6awXLIeuKqYRWxAmaRO8J7d8YiPjNF13o4+IidNHUKyf1hb72MFlDuZRV8hl1gFHlSoOdGUE7eqsKivuTpAE1AAG/jHFvSXqbpQEXOf/ZtAlZfijkLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774844694; c=relaxed/simple;
	bh=zD+6ExDJ6tX64r9P81roF6TPvcFqUJP7AkDEpkR/7t0=;
	h=To:Subject:From:Message-Id:Date; b=PXAQOCcflFtG1uXsXrdGd7JQUGkBHlLB/1AN/XoOgtHIBlSbIvU/knocJ48+xQ9aavfa4wnBg1JNhXZRe+XaQAjqekram7zrk1TwNTi1ZlZMRsmJPe95bqNbdkQqB7OcVE8/j03v6lkdC6I55NYu2c7bDxzEL5MHMF+K2UbmgbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hr0UmFkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hr0UmFkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF64C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774844693;
	bh=zD+6ExDJ6tX64r9P81roF6TPvcFqUJP7AkDEpkR/7t0=;
	h=To:Subject:From:Date:From;
	b=hr0UmFkYrI1NVnAt3kd6o7DdJS4NDTrnsSeUBr75q422msYCrEa4LuoJgQbfJZnuk
	 Um2a2MgY7m9pmjbacCAXT1bcUOdRpgT2lqjUzb2efX52p0c2JmkdRHn7YfegEh2ZJ0
	 EOq+I99LFllkbbHTSAgJLvDPJwerrB3FpjWOPvcUG0kvO4ThgOYVXlZDZxqTvJakNc
	 aXdLRTJnYrmzTePPLMHCRioaXkDh6VYuCWuOtrDRHn1MghTR7xnIu5uMx5WjIjpnSB
	 z8bTzvw/fI4g1k3R4GINs6d6IZSYiZpaGtyV42BtoKKd0hCY3lfAI14wEhoR7kFDBq
	 ElX3+rxa+mJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E78FF4940
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484469361.16031.4038793733311024171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1ebab9d2442e1b5a65cb9bb24be1b2ef02f0d5f133ff3f417f689e1d75254a
Date: Mon, 30 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774844693
