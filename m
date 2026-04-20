Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17F233F5A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776701254; cv=none; b=JAsSfG3iSJhfKjirpqp7jTCp5FUtcL0+AuaXMMLTXRPoqBZj8/iSSYdIIIjwM1xL6CcOttZvf3sTIDbIyS5JwSN2WDQlJKxJWsudZL3XG4Le5979S4PKmd4luEUvrLNLjLKlbIR6eI9rR922ty6iIfQ8aFrUQpAOWQm+OaXxtGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776701254; c=relaxed/simple;
	bh=cBzPzCqEfbU1ed45JR6uO4CrJiA5qzplIx6hhW7E4OI=;
	h=To:Subject:From:Message-Id:Date; b=UHROLXAHhpEs4Y+EfDSmaOcAvie04MJg92dDL2HMjOv9VwLflLAuZFOgtZ90BwngoSk83qZplNsrdTItLrld3dVDVOqApVlk544NT56AVdYUbr7a40YRGm4U/QkMeWLmFZMhl7+4ny3tFbzIfOLRe2IApJUr7XaDZ0RqtCOamxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttDOf8jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttDOf8jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE96C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776701253;
	bh=cBzPzCqEfbU1ed45JR6uO4CrJiA5qzplIx6hhW7E4OI=;
	h=To:Subject:From:Date:From;
	b=ttDOf8jr6MWZTCb5La6GhxudTBhVx14b8Dq9/zRXUlQjsuhp8SPAFFLejsg9jkxpt
	 Kub8cs8hbX2nCo0YZkWsWu0yUxOQ26glnQ3NY6jxNYcVgp9Ier6cNUDJwQbGkDyD2w
	 lKZuCA0pHwVAcbCTnelK/lTRO/FZ9xP6uef+SBCGzFfo6zo0dWvEXoD8pugxuoQM+P
	 rn7nPs21ghv0lO2CBq+wtWGbIbkNnOQ9iogcZNq6+CuRqhdNeNmtjH9gTjPv1wlxrc
	 pgrqVZULz2pGDGltImuyFnIxa4sGG/97J1mUePzLSV5iSm5RNSG5NT8eGhxT5Bk1nM
	 CouyTeqjnHMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BCF588E3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670125369.21739.15591550471455015778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25eab579dcceecb4655a74b921cb87d93604dca55b484d1aba2a10d5fc36caee
Date: Mon, 20 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776701253
