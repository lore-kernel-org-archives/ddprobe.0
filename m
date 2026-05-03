Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2269B38839C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777844254; cv=none; b=IboRMWuxx0gLNa+y9D4ZdB6KF3oe4SKl2Lxv+Q4HJstInEehK0odR0xt7XHb7uZQxJLN3sGzJa6xOuJW5IIyb0U1tgB8U13EyLdxKNYMDPRTOmogc5xnzKLnhVpOxWuiLQfkCgTMkC9ORc2R1S7p8WFDLjrYpldVsENXe95391A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777844254; c=relaxed/simple;
	bh=cA9L4veQPcEW5AB0SsGJ9FEQFMNsxqp0w93Z2p0Jx88=;
	h=To:Subject:From:Message-Id:Date; b=auFTNJqidV7Y2OX0URaeqyldDkYJBwWrQ4bJODvtZL3L/p8L0pPZz4DfafD8G7YUAm2RJbbR6sI/m9F3mEAKn7keRQgoGfUIjqyi+MQ9J8pyb4iUPTt3GUvcv++z6BHPxEcfufk46yQqrEIYbF4BRCmnLHLffFHkVE0pXN/OFnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhsCOjB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhsCOjB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF97FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777844253;
	bh=cA9L4veQPcEW5AB0SsGJ9FEQFMNsxqp0w93Z2p0Jx88=;
	h=To:Subject:From:Date:From;
	b=BhsCOjB2uze4ZDMtNLJGfR9nrwP4C9MNE0NflNmhO4qvz3KuNQXE2PiMiYanMnXGJ
	 tOcSC1GLauKsR3TOhj1f1+zm3hCPwfiGHgaxvFl0e79GLbkV03bRgMyvr/aymUx0vG
	 fVqiN01irUcJ/PEfBFTiQS3UQC8Dm5wl5mH+eixS6aBu3Pd7MwFGS+aSWW/tjXYv1d
	 7lSYMOWUra2a4MiNudhBxiElul8D/cMrFRTeSrypdDyZ5VSFBswb0d6gT+PKGNu3Nw
	 HyW1m6Z2ykdFojawAUPQj6W1SpwbpPYfBBGfbTVa6VLBooniLIP0MxVDgmktj5+ONt
	 ONeSAnxJt/Y7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C1CD3427
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784425368.30911.13841100460615252213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5061524295c5e2d67ad3dc670806d2c7e9a27597e03656dc2f4f3e15a6ca0373
Date: Sun, 03 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777844253
