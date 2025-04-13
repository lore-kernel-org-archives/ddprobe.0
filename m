Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A06540C03
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744522794; cv=none; b=KbX5/4QmlrnZQ2ZV/bAOah+CDge+YT6FT63bRnRBZ1jZx7CBlk0gkmM0LnjdqwkBzHGqR0l/AhoyCXuzrKIt/Qj3fIDbeCiVXoTZEDKv327OzsLsGCfM4dV9baEj3GjzcLE1mCpDRxACVjKRjMMr4b7rdYWtxDc5OjO6Rv/9WSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744522794; c=relaxed/simple;
	bh=JZulh7alQvUfr9BKZXVfZCDBK0MMre+7h6C2pB89ME4=;
	h=To:Subject:From:Message-Id:Date; b=u8+RaFZhkyP3dBEBKRb2jAsqmiDkYJMi+LqbPwuKXSkPau3nqhFRI+0srqM7Sw7XGdGL+xIFXQdZTub8Hu02+4VljyZ1hkMj9TYZDFSEQ5SXhOxJhZ/+qWLhkjf5HmVnziwj4pi8OOTq4q1VTG3zqEaJxr92TDXo3Pfp4ejSbrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsFWabmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsFWabmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6E8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744522793;
	bh=JZulh7alQvUfr9BKZXVfZCDBK0MMre+7h6C2pB89ME4=;
	h=To:Subject:From:Date:From;
	b=BsFWabmhbTI2SapVjO1vxfX9EF/KNfIHWH4x2c3vFPyAJ/k1fP36DCiYfYRLwwiVO
	 +76AFgz9keUkAfcdUgT2oc86ucRs7Sh6Rs3ASmATyp0zF2Tw/r5g4V1Yu6JgKbgOlO
	 9hbyaBepkujBXN/no+OVbOVooLXufRbGcUUGOxoPJQvNepIVPFdcqS9b2KTJICI3rr
	 e9oA5JpaG+9c/ZsPo5FkNxu+FR8ZqjbwkLvQo4lfknEV2iWvYoC41Rm8lwRazoeBDT
	 YSSi5lQMuJZdaJC+WESSexojXaiTe/BSYGn6ZhZkbw+3akuSX1P0Do3Lxm7d8tcVIc
	 rm1Li61VTuQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D28C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452279358.24107.378980134725165105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2df798375fdb4bd1c1b681f8a1bb4d8326a070a970ee6995ab7694e7e69f12
Date: Sun, 13 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744522793
