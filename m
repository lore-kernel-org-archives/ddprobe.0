Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6281E1422B5
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716398603; cv=none; b=J/CkyhG7+DDGO9DShi0Qx//BMBXCck7U1vHHXLLAHj/K65tp9/EeLFz/PTcQYKfGg+4M+xa3QGjugahL9V2U1kiV/0NjlorO+kNUNVjkrFvCSxaHgSPIzTemSinMjB/sWTaCTwk9xPq3jzkzrFh6nR9k2ttQw98JvkvhWLyXGZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716398603; c=relaxed/simple;
	bh=9fuNgIevkSuHYg0p4/ESzMaSLtLE43XSSLKiGP4k+TY=;
	h=To:Subject:From:Message-Id:Date; b=iWptX8kIRiPFjwx9HTls2tddMllimts+nLOtoCGF+OdWui2fasnlviz/eTSDP+jYfO0OkgsKJxe2/qMlFGWalWnbrtJfpgHABaS5GkgHb3BFSRoPAfMCuyoIihrCaqM/T1YIpH9xEYqas/44sRwBEeQLrvcu/q78Ar9ZwZRAdgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTXut5tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTXut5tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DC6C32789
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716398602;
	bh=9fuNgIevkSuHYg0p4/ESzMaSLtLE43XSSLKiGP4k+TY=;
	h=To:Subject:From:Date:From;
	b=GTXut5tZ2KpwLsRPdc5/4xG5whIJtLt5Jt+wXH4HT/1oyWsyyc1PjHrIiQeAG+JpZ
	 ZZQCHuaAsX6udvqXcs2gbJOnjl10N5GH3MFEST4ZgzERHoNWbo9l2QZVoUWPVXJClk
	 9GytPjcrUAp+IWCUzfreybo+z29mB5PdZGMEeawSwwsuHpd8gC2I4/HNOdlikJ2HAm
	 O1UwlodyH85gLSH7JFmjq9mNfiJu7pb2xq6DzEH0PR8nGPZIdaHP7zpMOHxuq8CU09
	 ZVQnS/3ZOUIL3HKEiM14JSo9gGQXLfpykg1UlMom0q1MTmSLCeO/KgSTjz3WVytBlr
	 sPPVXprXb2RNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA83FC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639860282.18994.13340198134576324048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852df58056629dd904055d1b1e03531a97d1b87ce0e322532c57963b5b98112d
Date: Wed, 22 May 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716398602
