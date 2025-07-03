Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B936A2D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751539794; cv=none; b=LUsgFd4rnyQtH1aRSJllFNdQoW3Qm6SslTj4j0sbwBAbuhYvhqee/Uy85eOjdNDk+r5oxioyfRS9fRRlCYw75oKKv034aAA2lhfv/uE6oP0WE1uU55fh6c2VJwoeXVgtw3/kItNWZYAVpINQZRArk/1shH44ClwNy9Yk/Onr5hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751539794; c=relaxed/simple;
	bh=go+S43VW1UwBkSVaWjpKvzK8r/dPRbIHx5P4ZYKs51E=;
	h=To:Subject:From:Message-Id:Date; b=AyMGhzRUoyQvzMdlaVBs0NwDK4nUbc+K8ZIr0rI6GU9m+nSncpideqPz9XjhgoRqLeaa+56L9GGumgMDxY4Z8hzqkFswOzEefOakXqGEKWrpgtoIgl8ujshF29lBS9sliwY1I6I1MLGWNxkA6EeNE6gZsR43HaqCMCuwOcBUIU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpbvhKvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpbvhKvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751539793;
	bh=go+S43VW1UwBkSVaWjpKvzK8r/dPRbIHx5P4ZYKs51E=;
	h=To:Subject:From:Date:From;
	b=XpbvhKvyZJYe4ELoFDsK/IzIWu3tYzWSgIyy0jU9z3izcSewWlLNzkMZQSzlB0CRe
	 f79kEfpuHc6syjbJwtT3TYaxl5UHgZWEONuoTWmm4rcJXumb6BeKLLlqu1tC4V4OnQ
	 wwhN0ChucaJGnwe+mhjdJbS/ZZcv5v7I03uIB9e+rUjBFUXmrRjRn0YCXWKmswIWC/
	 3UNLEr0KEFdVvNM5Vj06bCwz+p/ykgb7kqFz2/V4uhwT/dXRHevUcW5H7U4N2Mq+Tj
	 gQMVC0gOe3XNTmAB2WHroppGgl579STu5/N1uopiXyo/KQwv95uOL7dzW/GdpSwUzr
	 HSWJOxJUhv8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E6C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153979357.803.5419911886687560324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d3dcc77a143c186f2bcfe540fa76bc6acf6cdaddb53b26b435ceac32deb696
Date: Thu, 03 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751539793
