Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CFD111A8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752020994; cv=none; b=R+umgj4bPdkldOXpHk3E+EYTTgeflHTgBdQmvgRECMb0KZjB1fxlY44whkEODea+7rJbPUohFBduf7FnvAscbcWHaWNFoA9B/RollNrIw5Hu0HKtbWfwV8Vm6ZQWtfZzqiLYUOMwNIud0JExFsd/HtwSZcoOjU0PEJGCYSv2I7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752020994; c=relaxed/simple;
	bh=fGcMGWLbcSB4a7yhpnNNZZD1vDzFD75+M0zkmBilq8o=;
	h=To:Subject:From:Message-Id:Date; b=SYf7AsRYwbRTtWjtpNgRzjNMiPht4mdUZrSTNxAljjPySBzwOzthGG+jN0X+ex8tuZcIu4mPImdYsOGaB2CTXE+PFcKPJTLo2nJ4+riCOrWRHe/fZbQnZGqYpxG9IB+25vbvhBUSrpTltutpyo1SIEtEiXOMIiTUciEW1uSYF4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao8Lc+Pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao8Lc+Pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FAC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752020993;
	bh=fGcMGWLbcSB4a7yhpnNNZZD1vDzFD75+M0zkmBilq8o=;
	h=To:Subject:From:Date:From;
	b=ao8Lc+Pp4GVwieOHhbbZACkC6MkmzKLrp5M3UTbrmHAz3jD6K3K/G+3sK3Vo22cfW
	 l3vlhWKuLBMItCKILDzDUisJiCq7RIENSSb/yDpnBh1aw3Wko/zJDHkbflzsu2OjAz
	 pJ+lZ3cbk6YivliFJkGGnawP4GFmWDcMLyVaccqkgVoRMIbwP7smyz+qf9OnyRmY8w
	 iNZv06YE0yi1xVkwgAXhBkDMrN+W3zi0dDsO/5Y83MsetIWpXQ0d57OjhN1Q3xcewD
	 kV1J/Rs9uFCZfEGJLLUwT983zSwPiWv0bBAYglCmeDtvqZPT0edXE9x106QBI/EgGV
	 7DiD51xsdlGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB4C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202099359.13907.14530699023935704118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dff19d590e27219f4af27ed42493d197c8a8174403951985d1f3977072cf37
Date: Wed, 09 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752020993
