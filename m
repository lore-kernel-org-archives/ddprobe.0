Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0930A231826
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755554394; cv=none; b=nK64wu6cQHibzmmdT94IejQENdNASz7DikukVqE+XsDjsFpJJjc3awcC4SkKkQCJFLfV1DvY92L24YS2kPBqAP+YxQz3DrSBccJZRVHfhVVTlkXKNOTjP3lPAmQ+r8jIDOpIcwOzxhx/nQ+Wdp+RxYuU4dIOLQaxByO6hyDdqfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755554394; c=relaxed/simple;
	bh=Fe8ZrUHhtTdqwhh4V9F/0/1oMV1z8Oqj9obSz28iz7E=;
	h=To:Subject:From:Message-Id:Date; b=PnSKVeKi0BbBJrqkShz9RslNzLQZpY9dFKJEULOOVgBRrYFnQmV9EwisxCXoC0kZOzUJbXHtkNYy2pzO+ECOekoY0OFL7T/o3OOP+PrqSUo/vub7G9VwtisUb4pO49P+J+4K+PIca1msGRNeaepIiWPxn5ebxOSzZrDyytzNIpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7Mc+8GR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7Mc+8GR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0765C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755554393;
	bh=Fe8ZrUHhtTdqwhh4V9F/0/1oMV1z8Oqj9obSz28iz7E=;
	h=To:Subject:From:Date:From;
	b=T7Mc+8GRBT1KvJYObMY8vqnLemF+v4MdjoMAJix1VH4594USjt1lH9I4YyUOEVpVm
	 //b5Uuz1v5QMvfg7h2pCJhvVX0jLUI+1BGeKvDHHaH0hxIWEGdeXF1Nu9Okz+nop/D
	 f0vxKSZiKF2JnKDuaTmpcsDoav3UsypZ1ykgaG97ei1x34XWD9mN0j1gEeKTH+Fn/7
	 wI82DS3Ed4XNSdc82u2ptRTde8IJrSEsAfzLKftM5pSl0sChkPVfJ1YNwEnY3URmbq
	 A8Yx6SyDLQMo6QkgHpMsRspfaYxES6agO/WZuMi0SYwtS4oxRP7P/bQ87YG6+Nz7tt
	 YtOB3LnVFrBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F232CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555439357.32544.9421428088212555863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac895a4dad0f05f761354e0843de141ba1b3c581fa619f414ace80101d6c6e6
Date: Mon, 18 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755554393
