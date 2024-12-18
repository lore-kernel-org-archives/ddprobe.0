Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1777F219ED
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734486354; cv=none; b=pHp5ax4YRu/AEp7dt1fJn3sJV9RgS2tCHvUcoO4HRjFaCAFA/u1gLb+pPhEy8Y03yc7ifaIuPF+2IzNR6gstj4NiTKVwkecC2axYLkoaUZ+L5jRbX5Vi1pdo102BAl03DrGwuPoY1OyigAIShPJUosXKpG0tuqFn8u5NhoWmWBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734486354; c=relaxed/simple;
	bh=QrSrjCOPZOX07Hnvd9A6OuyXLpuZebp/OjQIsbpomag=;
	h=To:Subject:From:Message-Id:Date; b=CB5WXJLxwMnhDBtSPPWaCllrCMlXJ+zwhtTIk3L9IPExVaY81rmQ4R+45wxCrXLrVQZE5MZ24PyJGh0J09sdZ+mPKl9cSFC6W+6nOR2x9EFEnyKkd8nuCq+l63UA1wCs1ekaSIzG4kSCNQe/xCsj7hXwUGMa9B2tFREpf2gec5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lio/58/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lio/58/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9CAC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734486353;
	bh=QrSrjCOPZOX07Hnvd9A6OuyXLpuZebp/OjQIsbpomag=;
	h=To:Subject:From:Date:From;
	b=Lio/58/+KdCmbj+ow+9Z3cN+QkniXG7t0SNRym5KFtUu+7VZBekXVXR1gXGEv+tRH
	 yDd9OPTml9Kfkb3G1m8wFeCZY/d6y4a2wYVEm5uRLx/fDZXTtx+Fp4EL0EvsrEP9Mg
	 hqoCbSNlEy7EFxnMQ71F/SAj96nmIDDjXXVV2jylmbLj8GFXt5sHpbezeJw3kCxdjQ
	 JjX0gmeqQd6s1REve+ZB7bmlS2F1rhqxDB5cJ8+mHgGjEa+SxtoFEj1MdGg7dHu0IG
	 d0H0rfqgP7oofAF9Y9HP7xYVT8lwvitaMCV+AG5YT4q4VqY+sXNSAwZ+p5JWCYJbZU
	 UNUdqO/RIFf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D3E77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448635362.30350.12487139470071792839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727151d3589c6e76e0dbc26d21c25df7fa744a821fb27ffa201573f41eeafcec
Date: Wed, 18 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734486353
