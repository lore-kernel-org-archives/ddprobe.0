Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5196933987
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721066723; cv=none; b=bo7er6JGb82IpPPS28ugAIQGLxVtfZZUnuqFidfDc49mFp/HAD1cSfOOdSBuG3hRZVYEZhOrfc/B7l9DgjXz0VWfggKVKce+RzbRAzHBOQrPRiKeMAG9vyhYWj4unJGsO4ZlNKWu9KHTOB8sEitD6dp1GJbA1Whlt0W7hek0WmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721066723; c=relaxed/simple;
	bh=ETKGGAu7NV+ZEePIBCIZhQUWTGp/bGa6OLXkvolMrgI=;
	h=To:Subject:From:Message-Id:Date; b=AGtxjFGi8OsDrPN2NFYMsQ75CRQ53x6zTkjQNc3uhyWcHikN1z14HtFeOTZJsi/IevkSKCv8wW4r8q3RbEuEeAh5aqW7NlP6jVx1hSOln1IIFB+OlPlfxgyYE75UU1V36Z+Dr8vU3muCQFyZLPX36ChgTRiTxn/O3UCFE6kawcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2eUwfxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2eUwfxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45C5C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721066722;
	bh=ETKGGAu7NV+ZEePIBCIZhQUWTGp/bGa6OLXkvolMrgI=;
	h=To:Subject:From:Date:From;
	b=Y2eUwfxsDC4cyn28AefSNPoomZOh/CO3hEvlxPrGKhkVlJPSe0GCPd53e2Qz+YXRO
	 CdIdRkJDAAogHXR/IV13lpAFy32Pp9kO9uHGStBuF3XplWh9ftiAH87/3YUYAlxoPs
	 kTgN5g9beRIGhsSdUNp43v2mXuUvD6ZXZFUUK2N90mt2yrs5ebH4uIbJLOh8a7joOY
	 mCpotm8+XgbZ00c1UpN0HG0r83Ax36V2/4IYqBOkf6yHsZHnLYG3mENfvJvT8lz3LM
	 OnoX+VkekNiidZtpcCQJWAniddjxr+qyBhV49bZ7avm0lcgi2xQUqHEtfZrlr/Krfl
	 R2g08keCdKAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C155DC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106672278.31697.15882385821192165845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc05002292d378176b4591d9994beca64ca85e846e71ab2795ddeb0c7e269c7
Date: Mon, 15 Jul 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721066722
