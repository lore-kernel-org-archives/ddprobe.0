Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9285D48F82F
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787160034; cv=none; b=r06dkdvHU85eNAVUKFHXQIa2yO+1hnAYPzNxA9mwfGIIeN+bKPZS+EoK6vDho20g/gIXp+xSwjwAt+XlesAdKVXHId6DO+YxcJ8O0zxo8fnek7J7gN4gcpy6UfqL2i2AbfC9bAb+Ezsf6UQsnSJPx3ebB5yeQKD7k333cROFyyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787160034; c=relaxed/simple;
	bh=eauBXNuEEBgvFFcYaiDKvJX7M97PqYFpRFQDp9xjvNA=;
	h=To:Subject:From:Message-Id:Date; b=aqspccBpff72S92SrpIcn3xn89YBf0DPV2TTcomVoH46dsbFzb/utrffBrKnF26S1bxgJm/jRbYOnwcMzK9VipiT7/RSWArMrOkW1K7kbl3Qfbniv6KvLMadbt1QYxIa6zfD3E29Td0Njpr7iKf1M7AE1M3JGQnJXf4BVXj+GV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXTv5kDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXTv5kDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D297DC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787160033;
	bh=eauBXNuEEBgvFFcYaiDKvJX7M97PqYFpRFQDp9xjvNA=;
	h=To:Subject:From:Date:From;
	b=hXTv5kDXZ82RUKsiVyCkQRU6+LvbmCsCWX3/iJnJnO3dgk+FKrJVecajx2J2XiDV1
	 D89o0IdxcvWvzY3yRvTdS/15+05Fea/mo3SnRP/tZ5ycFSaM3xRBJ6jbnnDsC4MV41
	 FR0ak99WwdDU4fAIukxFz49gXxdTvf6HxXcNpDDskheZhuQkUol9VXvaBxXWHRM7Xl
	 qqwWYzuT729ooeuvE36iTRkTKKGIbvBW+Bu3+P7DDnSmBrEm/3Zrn+QxeT4g6rTYbC
	 TtQdQLBgHL0BYX5XPryNGgvzAxWig4FxHa2sfpuVaB7OD7hDrGIf3QpL93vXVeQJCt
	 77MeVAdzHIdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44CC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716003369.20640.1377071251146207723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6666cc9cb62bbb17d4ce61f32ee44dc191132a99a1ab5946e3482825c6c334
Date: Wed, 19 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787160033
