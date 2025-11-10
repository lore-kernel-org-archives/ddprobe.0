Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E001B4F0A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762763994; cv=none; b=DQAXTEmx99OmJQ4+/f+7HoeCuObZ8yTdIRBmYqC8msHgVJULgRsaIXd+hymRoC2HMkLpZ1p4//npK5Q46go8sLYGuhvPaKads6TJupEUGoEdhEfZiNcU6BDkJM6kLsQy3lYWz3goLEZo6fr8qMrvqHO3+EWjF8gvpuwIpCHIdKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762763994; c=relaxed/simple;
	bh=P84ya0G5cUaa6VIRG/omql8dP44IuYrnyKzMqxY51z0=;
	h=To:Subject:From:Message-Id:Date; b=Q002HuWNfq59F7PtXW1Xgpvshjt6S7L+ugapQ9EzxbQEOG9TmJONN1P7gHAQQ6SyKi4wdooQFTumbsBZn3JT9CTcxG+i/WB3la12JMGu0Dt74c2fIaVcdx/8F+eLdnorALqmRyV68yq/o4S6S1k1HSthlFT9dEMupNeIuEEE9Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoWrIGf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoWrIGf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1065C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762763993;
	bh=P84ya0G5cUaa6VIRG/omql8dP44IuYrnyKzMqxY51z0=;
	h=To:Subject:From:Date:From;
	b=IoWrIGf/OhdTia80jQtSqCLCheF+P0A7KGDEf4yOBJauWV00GPUo/l7btrBkucAUw
	 vd+wrbeR0sQjwhCHTmMBZRZURLJc4m4a9AA8/T2vhNMrjF2EXTjqMmoyVb07jTZSf3
	 tJ0zNzaFOT5XAlr67kN2Pnw1G+nwta2yMztc/yhbJKTEvyvQz8lLsAhCI1PDUMdQtT
	 J8h+kKRWMusZsZvK5yKGlJHeGoSlo7R+qWxd3Rx/JxquVTms/j44ENM1V4mnSaFAqo
	 79GCrRl4KLrwXHm+mJBhd6fOMQCdVz2enmaYEINJ++wjWvMeFMj8lqyp+uzWXZq7ch
	 BwXi26vhgm14g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BD5CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276399363.3515.1243327601990349482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e5dc155bed52ee85438d01ddb399ed2808ac0c9cac3ef2ed9a3cf05304011c
Date: Mon, 10 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762763993
