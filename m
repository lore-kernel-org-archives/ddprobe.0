Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCD0598BEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789068634; cv=none; b=TTkBOule5JHEkNhrfDMt5+53e960C42FDAl+C/eBeBOFEWXjDVqiCNDk9p7/7ND9ZaBSJALhKlza6F4eJ+39/qROxIn1Wujd+5TJI7t7+r9G1wM/8DDLSmXwhVNUlN4Y+1QuXJCLeA4BjeIoA9EZIc9gTdGM7MKtNMZkzAT58Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789068634; c=relaxed/simple;
	bh=x06z/15e+5qCtLpHue87p15j5yZYlsxYYbAMwh6Vtd8=;
	h=To:Subject:From:Message-Id:Date; b=tPJnYzCQtjy+aLwRQwEX/y5LosegtFo10nkjuDB5q5esoxJ8GrODQUZbJE8TivwehaGfMjF/uLpGF0qtN8iu8XwxoW1+rb/9XgmwhUWSD6nH05jDMT2WbonRD2LgqW60SxcvJHp7wNqgGicCXlTFuWUhLne566UjBAAdWSHbBj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMcHtQlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMcHtQlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB057C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789068633;
	bh=x06z/15e+5qCtLpHue87p15j5yZYlsxYYbAMwh6Vtd8=;
	h=To:Subject:From:Date:From;
	b=jMcHtQlVtCf4ih+nmCxTuiWOjvhBQRpW4s436lI+j9mLGLRGx7l5To6ZJiYZO60ak
	 QDje2B3gkcFTk4qNOeynH4+9Rsgj/9hL3jbgDNZMYxkPTjUqrjZ4HeBEPACWEt1nAA
	 Ev9+JUeoh/dxreFyj1iwP0wcEhFKZqVcc9m5kcIAMfdDuQFrF99sYRh97ztxogFLCm
	 KnxBflv/uzqbkBzuqbuueTXHlL5lO7UrW1sqiQXGqSiUI9oxUp3ukx7FzByZm3uio5
	 K53aH386LvFPhaiq8dylNF4hvYALWRyW8FPFi7HgSaJyEdLxFae6lT/bBOgrrwyWRv
	 TGF9w5XVc9FnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE705C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906863368.20953.11106436172256899588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5da3340e8808f72f2ee53227c492c7fd884f0eead611b3685a2853e4f2fbf95
Date: Thu, 10 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789068633
