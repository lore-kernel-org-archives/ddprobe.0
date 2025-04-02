Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED6623BCF8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743598194; cv=none; b=T+ECHUUZLYifzRMMEDo/PqTHzXaM19FIzFEJr3+ZDO2T2H5JirCdOjjQFAzHtK81nAhjFP+4qvRGpVNfaVCW9i6NCGlnWMv395BOmPC8gFZ1d9SadYQ1ZOnlGvjqezc7ETtrV2f9QFmCPZkMnPPymIes1G+im21tSsD60tp3DWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743598194; c=relaxed/simple;
	bh=M0reW4hGid+pEj+uJlDiMwjzvHdCqHoSNkKK0WdtgI0=;
	h=To:Subject:From:Message-Id:Date; b=gkSGE9d38I2sg0gtFlHvxdoydgMt29JGxN67y5xn9mbQUjFmyiagJiL3PgNPK96GbLYuXSaoxXpSUZQMUqthzvzuyHSVh00RcM9l56OWvu1lWI/9Ybl3HBmJBOMTlmLqaBNbz3FD94MCFuUbkfu486YzyrGN4cqQWjl5fl3TaL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODGbRcDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODGbRcDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D89C4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743598193;
	bh=M0reW4hGid+pEj+uJlDiMwjzvHdCqHoSNkKK0WdtgI0=;
	h=To:Subject:From:Date:From;
	b=ODGbRcDX810mx33sOd5nen+dozCkuuAuwy6GALm+aNBXso6RnZxE10oNWrKg1YRyh
	 /kz8tkRPK/7o6GDSniJbc0LxNcH4Ueu+Lih4+o4n+leL9OAe7w++N0OZDqRHd+vH0F
	 PB5SJxS+Cr0bIlsdGMfun25I1+f9v965YSRX4Kjm+8+a/g9J0c9czn+LUU5gGw9gyB
	 3CzaVJRZqBosjq5KoACBFvUr1QwZ5KDUduRWSjFZl5UjGxoDeLksabU4uBfwdR4pwW
	 kMr2GRiIy/4crm9KZBTRedKLWH3NAmMcB5R4goTzl/or+A3ICwsN3CtVEYDEF2CPQ6
	 uOJ0+rv6NxNQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1163C36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359819364.4567.243249699781395252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093491a4755ececeaa1382418eea45094bd2a4dc1e7e63bc607cbf68d6552e56
Date: Wed, 02 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743598193
