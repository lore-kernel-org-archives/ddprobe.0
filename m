Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2FD32AADA
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764242574; cv=none; b=O6LQJV/4pT0tpXQMb+e/LZLFmZf9ilYAgdTdjETgPZsGPd/cH02u6UJHPixZii1dk96QMXZnII01crEm4HAPBXwyKxAubnyq2yzt9B4pnKcbVMHPwod0J6TDWeC/DbiLPrZVLbl8SfG9Xc/ujPae0/9X4mwTPLtG/PKFCI1XPs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764242574; c=relaxed/simple;
	bh=Lnq+Edy+Yrp8aKVA+fkcUfMvy/Bjy5Xkag6fwOVJKnk=;
	h=To:Subject:From:Message-Id:Date; b=RL3MUe7p7Kt5voaXDdDJlDXsK6UhYk70rRpEwzT310BwD2kMJNGctM0endWB0jrDM18CKWsKziGPPL2WPzt2hZRdR9KRtYbdtl0HwS06dM1wEbzyDpjchifYvIVbhKOm7TSDZHFlOj4iUIrGTunEiSj8Y9HVcCYrf0LfAaTEfYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIjNB+Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIjNB+Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D9AC113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764242573;
	bh=Lnq+Edy+Yrp8aKVA+fkcUfMvy/Bjy5Xkag6fwOVJKnk=;
	h=To:Subject:From:Date:From;
	b=dIjNB+BdBuIEWveZ9VuFQ/ZOVGyepDrs2w6ns9BDZvaEZ+GJtLAGv65EE+QK3Y9NL
	 kkjRH3b/CraogD4nSaF73QWqADTsJIA9HVFBJdY8lkKah9CJshJfuxOrLbXwVrmBDA
	 B2Ku9lhhBmNbDVHC+zgW4I+osAXuZQo3hxN92xPNEVdGJgS6z10i7D2KHvyl11ieVn
	 c8WpSIvlgGYOOW7LayoZdugwOKPOJEZFDdc73pqEfpSjG6igAsLdPWO163kbPTKr0z
	 8cAcrs9tu+dttIB9v5bXx6HARG4tKy08WoMFMUc+vmjIfLBRo0ZxSgt5dimAjAC6UQ
	 5SuKYcTI7q7Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D510CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424257363.19985.8608041165180400134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873679b54d6db5ea4ed8ee65d6a1fafafd0da6cb6c6f9056933f8d9a1866ff3e
Date: Thu, 27 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764242573
