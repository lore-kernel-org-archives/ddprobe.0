Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6462EA732
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784728714; cv=none; b=DrhppissyH99fHuaKNBtaGD1NxnvYATqrsXnHURFwq9L9UVxXIsQn+59PwSyoh9OyeHbgrMiDtfNcrOk+xgR5JrnY1IhENUcLaABXNPbRqwHst43gE5KTA0LYSBgGgQh4pb0IEptozwIHFTjwfO3T7LlwGgjPFpZQk1CttO+Cto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784728714; c=relaxed/simple;
	bh=66wZ0W5qdz4kafCC9NZcO21MAQbpdgQFno9fsMGkx/k=;
	h=To:Subject:From:Message-Id:Date; b=rdYSgNz6AydWtxamZ9yy9kwIQ2pdRshFbIz0nTLkP6h19uUPr1iqADXWYVlqtql1Cd/xfq59cHF8thL9DQ0LQCOFROTIdOVZhLeafTbdMjJmsAUZKGWtUkXPygQ9vxuV4oc91mBGNkJdpQPrExc26i7noh2oiItvEltkyO496FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5FU0paN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5FU0paN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49352C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784728714;
	bh=66wZ0W5qdz4kafCC9NZcO21MAQbpdgQFno9fsMGkx/k=;
	h=To:Subject:From:Date:From;
	b=e5FU0paNo8fD2aR9L1H3FpqZJca+EglPNzuV6f40OsJbLGHPkeWGs3IgRx6l3ATaF
	 im2fphO6yTQ6Gp2zS3Zn7pwNFUj5PLpMl7YqdAkAw9Ji9fEL7xSK8tvHmFqAlKTUg6
	 90GYLGyGfXA7O+9+moWVXgiNJ6jwk+UKCQO00ntenQa4kxYEIxPnRSMAucSEJTiMDd
	 WYP5L2I4NH+YdW3UqMvcnXexVBJ8jD4W1RJ46pgGB02fknvjp8nPA5Ybim6y44a+CX
	 ezLn+QQyTtKdwFI/u4nlmErKneNve7noyx20JSTLHFsZ7hAvbyMHbHHpQnV/TGPe9X
	 HZfJW0os/Cu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB44DC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472871393.6059.13831611663296261546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81487a9a61b12f6cf9046c8c3008340f44a26f64a03d1a96ad1b4064f3abcd33
Date: Wed, 22 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784728713
