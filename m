Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F523E121A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782844714; cv=none; b=lUSBWRvW85Kh4lexkXhHDypZ+Ru+RM4HXbyXAbFhI6T5p55g53ZTEOJwSnrhYPSzRovScbaH0DKB70LFyPMFOb6LdscmN3Ylxjw7mN/LTQDef5Io6/FuXxzHamBl2jdD2VPJCQCJ0yd4sFylt5mwwgw/S4NNOSUWNPcxEiYD3bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782844714; c=relaxed/simple;
	bh=Y0mghg+L6bskACCAPDh9Lv8Pog9XjlWzQlfYQfdRk34=;
	h=To:Subject:From:Message-Id:Date; b=pMOVd9WtP+AvnvRfIEDHedr1z/7NDX6YwlVDpA+hmjXY3WNMpUfJ89EhWIV14dFJ+60+j8gV45uU/9qWnDp1geM/Edx6dPlvRLJCkU9kfFZ805ZsBpOlD4A6mEfC6S4/O+EgX9eCJAXDDpVd0uKbw4ysF0bcLlY2LuvCXI8luiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB8ful2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB8ful2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C322BC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782844713;
	bh=Y0mghg+L6bskACCAPDh9Lv8Pog9XjlWzQlfYQfdRk34=;
	h=To:Subject:From:Date:From;
	b=sB8ful2IXwsZCSh1FU/ClCdUHqrlFrE0PppS6+/6jKRqvK4cMmXZdb5yWjP6boK9B
	 jG/vzoPtElQrvAXZVZUBCvL+quyVbCI3u9gdUheh8k07+gEt4i8NgwyBcUf6+xrgtY
	 B9xKS3SmwLLCzswHYdl6AZxvGDySoorj0RDC7y9+0DmVFZMrj+76eM4Vt4zpYt9dGJ
	 0pnmD+o3WO7nTEqIFVJHq3Uf/x0TWZ1Nd1rTl1fBfcGrZugcuHmZ9B+BdLo9GOdm44
	 g83Ja9DsYxzeykgUM3R+dKQ2yrl/9K3WTyTJ9T9O4gCBQfVMEdbVTlPQO6QZTCthY8
	 vjlyy5lFfUf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7FC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284471368.17250.3028076873748793652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72e1756e50fe2633e16c91760b84944c9ee881b3acc416f3c8855b70d041754
Date: Tue, 30 Jun 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782844713
