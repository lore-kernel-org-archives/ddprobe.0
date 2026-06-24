Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534FC2DC798
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782288994; cv=none; b=WxxJQhRa+mnaRWIuBbaZ2Mv4mKH3SurocDc26++CTag5ztCokGjuRplHklacycSUBI6bUWymsG/Jldu+7gqCjfxCKtdMyU3Qf1Qngm3CiVDfggtKlSJ9SzKHX1WwO6V1zsqMEpBbLOGVaT2anLMOT8yuVg6TOMCSfF9nFodOovc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782288994; c=relaxed/simple;
	bh=W6OafqvO3l75TvJrV2yR+B1I+a6Ws2oQsk6DNjR1rN0=;
	h=To:Subject:From:Message-Id:Date; b=T9aXpwx/RbT4ssD9GJSGtcye1h12zMw4xDLCqx6YsoJeE5hdmCeL/oARGpZYfyATyg7tLO6zEvg7w4y1naLhHiWUa5KAYmiqhGOedhHrqo9Kj5XrY4FgKMgoVCOF7YytXQBGE4XgXFywz+3XJttwZMEPFSRBWAftLZA2y+pa6Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niGqc6BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niGqc6BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C48C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782288993;
	bh=W6OafqvO3l75TvJrV2yR+B1I+a6Ws2oQsk6DNjR1rN0=;
	h=To:Subject:From:Date:From;
	b=niGqc6BIsjb/7Glm8HOG7Ii7lclvfdsIKPTASZTbdWI0Y3L/jhUx7r735lHYjhIFO
	 tYOp0GN5/CjKM69P3jkQ4HHXMkCJAWYUguTw21yQDsDLt00FvkFdH8f2E+uZKLYD3H
	 aC2GZfQxJumgjlfEGnp5nK0OTqjM3Q+HG0pJARizKl/T3H507zzJFt41l8O3V1N6mt
	 Y6GwNzAEuxi4xl25sJkgm6IvPppNnUMMlRpIZs4zYq04SgT4cGI5452CCPo2vijL/L
	 yhtMCvve/gN5WNXw+aRNPe7bhplEvNM0BEMClHb5oJp8KMMwYXU2JGf5oq7ewo89Jm
	 AqajnvOJ7AKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA703CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228899375.17465.15178496241297510272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70195726426d6c6455c812c1d8041a1868b33e8b0415149666e70a1a94fdd585
Date: Wed, 24 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782288993
