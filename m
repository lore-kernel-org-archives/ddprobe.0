Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F0418D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752349195; cv=none; b=M+OMVzfOcqfsPyf/mjQSPF6Y5QjKEBnNGUAeqhwWtL83Uv4ApAgS7IJT1za28NqRAtNNY1z6uFVcMAuvzjdInABOShnT6h8MmQQlgidOnGDDc7FAtRKU5I+la+ys8m1z3O2KDzPK69s6AUB7DSuzERk+nmV4pGONkBQ96A5Hgnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752349195; c=relaxed/simple;
	bh=Ibkk546Xob7Y1Q7pT1svuAHJ4hXbPYKZE36npupNcH4=;
	h=To:Subject:From:Message-Id:Date; b=WCKv6eziFEVYBTgb5YYIG/Ir3AZCk/8dMNBB8EDpmgYbJqQ4hWCtcySbexj7YteHZvivAeXQhchf42MpB5wUKQHMiiaH2q+Isdl49wqq46KWXJkRNDLyf5OKY3NtunO16AjLnuFn+Xx6du/RF3gZOPOmjjCWOzm0ZZ8GIFe5MNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSYUr1SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSYUr1SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752349193;
	bh=Ibkk546Xob7Y1Q7pT1svuAHJ4hXbPYKZE36npupNcH4=;
	h=To:Subject:From:Date:From;
	b=rSYUr1SLHx+E+IAyAzxDDRVOaME/cv1DDX6eTbeGjoY7kyr89fD1KHUbyJRbx/eOQ
	 GPA02Fsl0t1DsDZBPhC7D/IZc0YkPkXBlMGR52sKtbjQnCIiXBQ0YJ+SgXO0/1fzN1
	 eUKwbfxKS6mWvJgF84fiXaPYTr6EgUcjPLstqpqJDkC5ff52YBdppXFHmsA+LTZMZt
	 jkH4Aoe1zcMuzavYyMvugnV3MsNO3zTDypyvU8wEObr0YrTFwROR+Z9/kTOSOSMBoj
	 4Zpi2XhLvM+0VPCWCfd11eVi0Lm1KdTNfWSpMuffQfbf5wS2gzr3UsNDgh2yFDIEFT
	 fQDmwi1SIgKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91803C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234919357.19442.12208050047218944631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af73fdf5d90a61105973746202a64552bbe908eb3cb2fb9853285a7c52b4045
Date: Sat, 12 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752349193
