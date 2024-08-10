Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A2441F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723249555; cv=none; b=ULArgS89Wg9NN2vB8Oa4PxrQy81d0kds4R0zBmkmjILdiDifr8LeUmnVm3Ua8tsb1Lj7tYJCY+citeU5hpp9GLNq8nm2qGoMmAgTaf+95iTJwlX9DWjNFNuKv3PPhqi2Lv5n45s1vjJPs+4YU4N78kiof7YEEdxU3uRjg9ekZSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723249555; c=relaxed/simple;
	bh=74kna5YOn0aX+pgse8EKK5fqXGMJw6ILZoOJnAiGGeI=;
	h=To:Subject:From:Message-Id:Date; b=jcn+aUZ9sB1utKGdb91RPVg1DDYxpbQw5vXwUjLahEmUKLVhT/Xv5pKKOTyIi7MYHL522Xe9CIV/U4gIk1NluJ6gpWvVk0oeQ3drAZ0nZn03Ben0SaOf6leSPi7QDAAFz2IrHpm5lH25lVF5uBIPQCCli7HwO41izyHqVzgmkAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLTMakLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLTMakLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7042C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723249554;
	bh=74kna5YOn0aX+pgse8EKK5fqXGMJw6ILZoOJnAiGGeI=;
	h=To:Subject:From:Date:From;
	b=eLTMakLky6xk9DkJk9m5tBUJlzZ8xZE7EQsW5IgFLS7EqlXqYOTtzS7tBGNWJyIqt
	 A6VL2+tZAqlR+jCdzYM/WORJDokrqSw2a3sqfn81wX6wQo2hSTXP5gfaQHiw2fCeym
	 Wul3XvSp3bDlRR3+joFi7XOE9igg/6oRkH4kmDRKeI9YTrQ5TSd9CffCIjq/Zzq8nk
	 s7IbJZ0hgK5t1o6/rUyQj+O1K49iL5qiHOp3rSUrLHJp1m1A4dkRi8d+JknSP5mk52
	 xLvbtN5neINlJiHcY4FXkZIQ6JF/OxpKyScAqxxcX9guc0NiQ2s/o7Mqp2Kiumydhu
	 KkRushuzY4sTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98598C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172324955361.14429.5861228297016481188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0924c9c4bfe6a0482467f659a937fafbc474ff0dd389229cb3eb1874b7ca69
Date: Sat, 10 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723249553
