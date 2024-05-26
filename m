Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FF38F40
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716708263; cv=none; b=c+nh+sRjjJgV1s6wTJGvDxtmkaV4Vs/C0jv80HnA7bzU/kZ3Ve+csbbkt+Qwbx5NxsY90v0OudMiCl2+wbyc22qGdBhG+C/o+pN7Gown4PAhm9tsYxU0dtqd9XIeKTnSKDkNpX464N4F+WN2FvjRYtwGfhHjDoY8YTY2J/OSkcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716708263; c=relaxed/simple;
	bh=VX4cetzg6ZZsyYebXPV/mPnbx6a3z1GCJXBwuhL2qdQ=;
	h=To:Subject:From:Message-Id:Date; b=gis47/cEX1vab2wkcdmIB39EqtO0KTGSdt5MkaaFEcHB+5F77tXPjgcM2/3iUD2IVPyCOe1TJW/mSgHYVqOard+0lTO/Xz9Iz2goXbKCggAp389pjjyqyMEy5kqVn5d5W37Ayr1LQN4/c10Tu/nRW32YwjcOGWW10NP+r7FIwek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnc4r57c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnc4r57c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6FEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716708262;
	bh=VX4cetzg6ZZsyYebXPV/mPnbx6a3z1GCJXBwuhL2qdQ=;
	h=To:Subject:From:Date:From;
	b=gnc4r57c7SgrP36g5ojResA/Tu4bWp6IKDho+TQj1BFjXDfo0xRqGB7l/RVydOt3N
	 cUH43bzAw01LTc1CfAN+ctY1PODaRfogXcWD7K5Y4+muY3ckUX/s669iE7D0UkVh1S
	 aesjMSUl2J8ZpKWhfJXn9JKBnX2T2j1fg7buYtCVRMLC1RMAYe5WrGbNSFd8aDpWms
	 Gr67Qn+YIqYRIB32kqW1ufo5y/HtVK8jWohI5iq8N0BALYgpyRvt/sQNwSl/Jx9Y8P
	 Vw6JSjs8QpApXY43zn0vessP9jRYfZfnjMCwfBiLhkSsve/Y35BYdKJQzocANqPvyL
	 1f78syNvQgp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F71C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670826278.24043.12427771346136302409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271ad4428d53ef94a0cffe95ac4e92f408efcd9ef83527529e5e57a7188be29b
Date: Sun, 26 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716708262
