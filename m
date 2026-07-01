Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8E3367283
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782938314; cv=none; b=m4H1+IYY1KSoQTU55vBEyoG6Rj1wVIElW/Zxd6rwExcSfw2Mw7FwUVF3CU98zWISIlXV7U0wjwlWQYvWiAPdcKBDFa0rJT9I+hR8NA8fAI5rAjxgulYyMugixNca9Hh/920uD3uWxLsdEhMB5q5PW1KjnIWI1H/PgENAPc3VCRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782938314; c=relaxed/simple;
	bh=lH2kIrxC2zpnadc1wg5X+e3bkSJVIafSVQJg944I9UY=;
	h=To:Subject:From:Message-Id:Date; b=s/wIs9A0Ph90bWDo5AZ36RBtYBhopQlpTsswBeagw1X1sTm5WU/2LO5CzOsHZA1Jh8BBpD3GZYB+w4VhVhW1U0vsuGQr0AyckhgpHDYtNmJ+Tp8oQcjSHFl/ycICSkO7D7NDE3HNoC6M5Fi4OGgWOhT+vZ4QdpvuBiDBIoT80ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXc6i+Xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXc6i+Xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE03C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782938313;
	bh=lH2kIrxC2zpnadc1wg5X+e3bkSJVIafSVQJg944I9UY=;
	h=To:Subject:From:Date:From;
	b=lXc6i+XmD2Fr2LOM6su9zZaNKL6iz8hU3+vY7/4qgSyG0sZmdltKubFUGu7d1lel7
	 EDP+hN/ouckGQPP5/0ckuwq408MH9AfFNmzhpyHscUhZwZdRL6b/6PzNlLKAQcN9F0
	 yviZSjlHEBowar5rcMhzT1glOXj2IH9XRHCGvM3O1X63GcqnT3/tyOZq0jozRIYdKw
	 vcdCZ5vrVmtiHMxVvvmY44nkBgIw6Wn583ZVgig23ZB8Kjt+hqbYyWHdo+0rQcqgph
	 Kp+lqj+5GIw30vb2ZdP8r2OsW9FL67Fp5O09D1DcV57y3SqEdeH/ehfKbMA7QJAQVr
	 n+EDr+pJKPFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF48C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293831369.2044.6955606861880429040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f33eca8b98eb61ecfc5bec2087272687ef135e6ef275d0b45494e269306947
Date: Wed, 01 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782938313
