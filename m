Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F717B425
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829694; cv=none; b=jPGsDrkT/p1OqD4VckvYGJnOd+OWxBCebKQs8D5DDHZd13o/kwGHO9s7RZ7qS96gxGw68Dz5Z2SaWbbcg23nC4TiEiL52kF2Ya8rITbg7mY2bqkq8HFYZFnI6SlgwYC9WXpO+O5IKJihW0uxuxN+MpxqHEg5mjM35qlD4itj9mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829694; c=relaxed/simple;
	bh=bYgrjDz4DUg/p9XP01xj1WJJjiQWar5LzdEy8guSDEg=;
	h=To:Subject:From:Message-Id:Date; b=II3DxUHEQyfJAE+KT5GGRwi2tS8m1yb/WM6tIUY7reei+XNxjjgRVmoBPB4NyPtYMTamxbsMuv7pFfNXLtziXxfz7SQXzSsihwOyv/3QAbZMGtO6M86hDlC5eoQkls2YV+A6AN3wHiBWJG4V4FsugTBsm19BF7oZykwczFQ/r5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWJf76Q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWJf76Q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF49C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771829693;
	bh=bYgrjDz4DUg/p9XP01xj1WJJjiQWar5LzdEy8guSDEg=;
	h=To:Subject:From:Date:From;
	b=aWJf76Q3O1v7iRUpes/4yVs9Fg4ENS+iT/YCMe2OysvcsxSUv55UA8iD/PBFEV/NJ
	 ezVQ4NR7ED79L0NQLGJ+lFl9jwTSBnM5PEZusDBJhUpJ3qI+p5eShg2hjN9+pz4YsJ
	 TZXcEPZ1OgXHwSTIpuFzyz5VGfktjyCk8IdrJ6hU+lRyAYEyNT+Nv76A/nScG3qrVy
	 F3/7+4DIPPFihsq6REV9B57no8FoPcsH8pH2n9pHOVIzQ9aLqs1YKYit6Lx2lUXtmf
	 z0jBH6gFpvfKrFTNmPkjiRDbWhlseQ/ZvgnkPMKyC/mMr3geBw21wiFtWOes0oD6Wi
	 xlC28cLlIwh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97638E98DF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182969358.18785.14462456394907301886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe284add57444146440269c288da89f6ee042a584eb397188f6303764d16efb
Date: Mon, 23 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771829693
