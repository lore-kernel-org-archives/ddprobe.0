Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22887EEDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759721994; cv=none; b=GNnG8ZvmRCgI0eAdli1FcI2ro+KI9bfOqlBV5+luoZCEKBuRpXkj2SVT2Hu6yh0vEW4+8xUyAdJHkKDDvwcxD1Lx+MV3C4ZR29tsdKl+ctLOfkWZekRHqnJs8hX3YPXIog8uLUmSrXDLunX4KEMN9M9b8OBHj/12+mwVtqOiKhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759721994; c=relaxed/simple;
	bh=lipyNUABrz+ZwKxD2kwXA46E/2v9+W66Kpys/7FmpCU=;
	h=To:Subject:From:Message-Id:Date; b=O0SGY+YNlQq2ahyWiq3Buk2f/z8UAUAe31Y5J+XAtaTX+FF97/sgM415ghzZlwcnb9h1pnPO5iMenchfxSSnJKNKvjMXrGejlL2PUIdfn5BIyCkgMgvmwb6ofGraqyouczyOchOVBACXZo3nKDNTzE8ksIZwgNPTLfDyPt/69LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khPcAvhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khPcAvhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5831C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759721993;
	bh=lipyNUABrz+ZwKxD2kwXA46E/2v9+W66Kpys/7FmpCU=;
	h=To:Subject:From:Date:From;
	b=khPcAvhW7jx0JhQDzW+9nmYxcIIvCrcJigbZPDm73GcLFgO3JapJ/5eLMMskuaORK
	 6mr3Jk5VVtX1cYdgeUHKZW6z6RWmHIkkFWCWD+l+zIjLKKVO3zHEvGWYmOFyYn75S4
	 E1yKMVcpqtZfUvB5YYCCtgFAT9cmT+b+IYTOxkGsBTpyY5FbTUu8rHgYgUmqT5ADmu
	 XMiHhYKL2NrSC2X/d0r8kIvWwilrHI8eAhb43aI5cSeN8vAtFVNfTVYeUxdCb7IAXs
	 N66pNGq5cQBKHXGXa7hNXo3I0iE4SdRCwb7KfMQ+EBCrSw2QSL/7r+gnUxaml4QP9N
	 7pq0CdGqDpvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA0CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972199358.8612.2688829139597993283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3759c267fff01dc1b5ebc8f64498cf8603408590b75c1cd6ec26ea7a64f3b21f
Date: Mon, 06 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759721993
