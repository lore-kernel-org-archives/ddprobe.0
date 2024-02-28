Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD776EEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709137696; cv=none; b=mJCugVRx1sM3ZA77liKVmZK0ZxYxHUP1YSJef4XMxAUDS3f8tFrcIwvFRc0xPsm9aHETbt2+ZuZ5TOD7dJ0TJwA9BHA5jn/a0wel7113lzyt8kD3axkQZvWZRaBvveezU0FkhwtWVF5gaMTBDObNaT9qNUCBWsQo770zbCPot88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709137696; c=relaxed/simple;
	bh=xlbYlAPr6lYpTBWzGQOgTYV007nY0+k6KKSKOdzVl90=;
	h=To:Subject:From:Message-Id:Date; b=MbTpMFbQL/BP+n9g5MxSHIVzp2t4cPyGgjig3L1fyprblQYIDrWEh4ZykXWXrae6mulAeBnrQqOIjpCqPa7OCMg7CDE54UOJnD0IAE8MGFytqScw0TfTq615Rc0TLufcbrvg5qaBDZ3MOUYEBa7QPS0VI4ySRynkCzK0aTvtLrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1JKsN+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1JKsN+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EDFC43399
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709137696;
	bh=xlbYlAPr6lYpTBWzGQOgTYV007nY0+k6KKSKOdzVl90=;
	h=To:Subject:From:Date:From;
	b=Y1JKsN+qv+WocXsPIf/Kf0hl1SuVOFnSvyux6XgHXnWXj+0tWn9oQkGpqDAmnANo9
	 qRRKx2Jk8o81pZ8vJHFKMmTu6jxrqj8FHGjaD/Q/J+veZVtx8ivmPW8+/XST0vY5+F
	 WiZhNQTYPbk0VSF99FiJdlyklrkqE7pA8o4Pgs7/aXRzCjj7LxJ5LbyYmTaouvACSX
	 lKEu3HirErdY8w+L57lU/40TD1VJWZc4VtMTfzRUawssfBZcXYRjRldkbJAau1aS+9
	 60neWou7W+PZNjYweNxaU+xwgZJnOU1Z8UBCMb+Fwm9gSwD1ck0ZrW8nufRg/ub9VN
	 UZob9smAcgsng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE95C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170913769637.29902.14511448004980017778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa9c56fe5d9c9d3d998450ee5c86f39d98e1a0138007639ede3a8a8e5441631
Date: Wed, 28 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709137696
