Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035D1D7995
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777697254; cv=none; b=eYQg+lc8CZX0ROZlLjR4vUSm5SQKsKPoClMTxN72a+SWmnNSXbzWb+pow13U0/Q1Ul4M1H4w2/sCRO4fEki11m2fEmav3IWJgCUEwDy8a+YroELN741hxpKnhF7J71MioQlqrJakqiAaBWgz6ItQT7Fee9wXk7aK/nBK0NJHw/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777697254; c=relaxed/simple;
	bh=xkfY/t5nCBULXoW+rmleEDA+8G/4Lim86swY3+hv2YU=;
	h=To:Subject:From:Message-Id:Date; b=IIdFGRGhuvUIjVybEwvx971FJB+BmG3yGPQvI7pZNLcktSDRWiyo4nFWKO4LtM8+3vPF7UMsO7oaZLDOQq88/xUBHGB0OaN51PdtkGewWuYRzEMS1xv970uP33tCUGgvop+IqyW9mQbqICsdPUXVUgGd2cM7rFX5JeZPL1e1sGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaeDbvKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaeDbvKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B4C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777697253;
	bh=xkfY/t5nCBULXoW+rmleEDA+8G/4Lim86swY3+hv2YU=;
	h=To:Subject:From:Date:From;
	b=XaeDbvKHg9nK8rxNO+5c8Ss97phDT+oTenOOwDVLWcK0q8rnq10guijXzCtIixLaY
	 tNmTQEuRYXIXLs1/koUALo9KIWjzkjQffyR0jIOOWmmDsEYEMp5UpCYMgFMbfdOyPv
	 vThaLwCvZR2AGu5JGUBc6z3gyN0r2JtmCkH8AhpnklXYQ8PwqU0/Z/o3w2AlvlexdG
	 wacX50WUTvRdSle6r6SkUoFGYCK54n1pIjstqAo1oY5COJP3X7002J2xh2G2s07H6J
	 45L60/RApMwMi3BJpcNZP+xjKzZHdAUoIj1Gs8eEJ62hTxk4h1RBzB6ioIKxEoIEyz
	 QE2fWP9uGut9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9824CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769725368.17048.12352815281605980560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf9b1adcb090a6f775aa9e8e7dc64cbb1990302044a0f641f1a27f4dfac5964
Date: Sat, 02 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777697253
