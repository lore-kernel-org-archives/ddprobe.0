Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF54A05
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742819994; cv=none; b=hMx0tENDqCGzPRsVOkIQX3GRsHytIiG0VWQXqozRpgfxqv7caUmhkdDrf9NHNMz/m/43N/XzTCsZF1SyQLaGW8LJTd2u/FZPi18hQwbNL3egbkU8LnuL3o1z3pxDCl2QHeCpFCZL7zFrADcU8kw1GyqBuYrnvaWFTvS4Wx+Ufns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742819994; c=relaxed/simple;
	bh=7uCSQIq3XfCyQ4IWOscnrnbQ2Es/oHUMt3m6dbsxR0Q=;
	h=To:Subject:From:Message-Id:Date; b=tImDnQgaOq9fQIOBblhLxr4FBexOSkF85b8moC8vGDXn3b92GsiHl8DTSWvTS9ULCr07Ujio88tZpEhYfudm5kjGOcLqMlH8qE61LM+ZbIw1fT0TokL9JXQxSgU0evqYlmpz20L1+otpulx+8i6pQsopksNJgYmudw/dqB5trmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf4EPOlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf4EPOlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA8EC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742819993;
	bh=7uCSQIq3XfCyQ4IWOscnrnbQ2Es/oHUMt3m6dbsxR0Q=;
	h=To:Subject:From:Date:From;
	b=Rf4EPOlWPVP9vnGnV5hNMFujQ53gbCnGuKKRkrBhtgf8EXcIQ0KD34cB6SlvbjVTj
	 t/qeOJVxdqG1U94wNVRYjo76mcJy7vQTU7Vc7gBwN0fnVjE6h4eQNS0PEz4AOfXBEg
	 2BV/+KXX6GymXgZGFL/8o0duxcXz/txUrrrhZwmzkaBFejfs1vhRi/D3if5k+FXwpU
	 VZyxouoHmGplFHrUApM2Q0pZ0gkRaC6S49U6tZmpl3TpvzfeYS1CXrfdfOirBvurag
	 hF/JD2yG9jq8mJvgDF9mlUo+1SFfWtThegNumbdI1Q7QMu+r/sKXb5XzlqW6Z2Koa8
	 WGtbVa+SCbUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B72C36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281999362.28483.7737350867651578449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b70a565c247a11d1237040dd2216a9c9bf0ef1fac9695064da7a9eed49399e
Date: Mon, 24 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742819993
