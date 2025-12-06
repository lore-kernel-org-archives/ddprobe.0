Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5011E47A3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765021974; cv=none; b=RXy3ourBE8ysjmJTtXzGnhJTy5XsyQ9mZQJU6pS39sYu/q2LPotCJqkG69jXkwQhb0HZKcOZ2E5oPpp/c2sntFUtyHtDoh9gf/IM6JH6y2v+y7+rmTdLSyLCfAeKFOWp0chNvtz4SnLFIlxaa1nvLSferqVA4UQy9Yegy3octJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765021974; c=relaxed/simple;
	bh=u4e6KJ/rghiqChnBvSvB+coH8M3EM7ldqjOutrjFTmE=;
	h=To:Subject:From:Message-Id:Date; b=WlT1+9AzjIorqUG2el7N12osb51AHPxhxOGQBUj64J7LzyHHKgOJ5ufuNLSs3bJA8ckOjuws38F8eylcGCaWusbfbnycpInhZ75yIiL0kQMCs4OpEMIerDUlyhcCdsMBS/+Y7aEM4KNU7r4hYx1TjGRrWln/0ADjhKC4rJzjcmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0/6Cr7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0/6Cr7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD995C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765021973;
	bh=u4e6KJ/rghiqChnBvSvB+coH8M3EM7ldqjOutrjFTmE=;
	h=To:Subject:From:Date:From;
	b=m0/6Cr7AXvsyVL+SFFFho3A9JdsOQWjteTjArmpEM1gWFsNY5eoUEJkpGFIECZ1X7
	 TwyrErifuO7VszUEqXTZavbUw7UvMcbUhvg6r4ZazsGPGxObpDYD5bUeVnqwRWiibz
	 n7JnS+x5K09DYqTH5BQrkFG+x38ytUUJdy+bfjU0uhqII2Vn4XfyViN/nSNsnidWJ6
	 cq1j32MXTOZpm1hEQKrDSMT95Zni02dPOc4VckEKH7KIhkCd2WmdPoMDtCJDlNlk/7
	 rFQ7pvzaf2kgb1X3QoVNYkZwa1yHNm0i3y31hqRBxnJcKTyNN/B/9VY+Zj4HCbzwGF
	 PFcejL7S+kThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A035D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502197359.29467.17811043826146446656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef43fb8a99b04dae92773e0fbc325414832dd22e90a82a66ea5550de9c60ce36
Date: Sat, 06 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765021973
