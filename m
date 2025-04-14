Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D91487E1
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744594194; cv=none; b=FK/47UmuL5hFrVTFRPcmXINO3k0Pr0sMQB6xnwp7mn96Gph+Y+UYAOWJ7B30v3u8wCxjSn4sC8t9WDtyY1qHOyNVU1bjPkMRYhqE8KTJASJapEJfZVVEqbmMSSg3QEIbUZQ9ScYzJ6iMOFJeJJlQhaFEbdn0dc8LEtIwykz5n+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744594194; c=relaxed/simple;
	bh=NRhji16WSg0C78wNFK9SQ9o8ZPjb8pJcMTl3ck/vsZI=;
	h=To:Subject:From:Message-Id:Date; b=ix1SQ2zLtXInmPSFSm1+MLuCiBv6SwkEwnQDeA/+b9BLgYj6mSQHSlcvdNkW2lCOuEkVQxu+TqtDJbUDDD9z8XVf8ikMb/9RBb4+diW9mm2/hNpOc8HKam6xXdPr1bRGGGG0KivD+h1UrYSWQOLRCA+mVE6vlpAXbVaLWZifKhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYMeyHMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYMeyHMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE6C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744594193;
	bh=NRhji16WSg0C78wNFK9SQ9o8ZPjb8pJcMTl3ck/vsZI=;
	h=To:Subject:From:Date:From;
	b=rYMeyHMrVIFS8ERelD9GLpqa1ax8npiwzCkFgDgeLbfPpvx4yp0G1MbKZav1Aobux
	 SwdfxTCRXL4il1hdsivgV3uaPB6rrvaH7BSrBqY4+/ELxjTNhAwYrVoRvWu5HoYam4
	 YsHdASFBg6mjz+fCUw1txm0k67FARr4zNKgYkwmaV5qpvFG+6+u/YNcne9a//xzuoJ
	 Lw//kFFZOOIzGs9hCSO5+j7FHotcsONoiqniqZRGQrJA/Idjtd+4zY0omkAI/SNZ+h
	 McnngWxoBRQv/y8RaReVZIGQ6rrEJMZGTuqLdNFfxd7J2OKonVSAvyrtOnb64JN0ao
	 KTi1pVxTnLGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFAC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459419360.20840.10012718579419964827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df87cd74b8010dbd19d2b7232461b5c01484fb00d142b19f1409a2bb64a22eb1
Date: Mon, 14 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744594193
