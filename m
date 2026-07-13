Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475E6208D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783903714; cv=none; b=rsUEow4owmhYQvs/OOp+PFPSWQk9EtvLjJYEVfMkW8mFbI5QJ2nMdAS/yodRZ+C4e0UH0v/QMNJNhMe3QIMLbbprCWb/dy7e5D7doCYGNrqKFvBbY1zraZnT6MiRPMOY+aUWpBLo5ryYFsNNpSjwjfK1nCPgbH5rNZSqTFxBLGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783903714; c=relaxed/simple;
	bh=6tnX3Y8TaomZ/7CeMCSATHQDz6gmZWwmfB70m0kQ2w0=;
	h=To:Subject:From:Message-Id:Date; b=ZlXfQBSzNdyifY0qiQKan47PEThIAlZTaBt/pgcjCYHIa/g8tDQ2pCcCGgZ/d1aVMEm+/29gx05ohNvsldXoqmJ/MKwWJmklTeIurhnX1NEtMc5Rt2RqS9rmFBcZgipKEZXaey2b3L3opyAVjEx1rpMt9joaXwoPKM9dpIXwn+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9tSHSz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9tSHSz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F1CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783903713;
	bh=6tnX3Y8TaomZ/7CeMCSATHQDz6gmZWwmfB70m0kQ2w0=;
	h=To:Subject:From:Date:From;
	b=k9tSHSz+ioCvUZaFZ2cxvlD5QOHXhmMTyPmZXzedAx+nXky03ppRNqdkeNPGmhgc/
	 B1Yg7/LKCgNpIFpCIdrWhb65FQcyyBNIVBiwRpUPQKniclUu66fdqPG0BMzMnpCkfs
	 l7g1km150dNqbuNQUD117IPQYh7bgvsKfXFJ6K/kJuqkT/w6iXJpmjsjDq6mIU/5w2
	 fTxfoR6X2CTtXM1f/AkxxSS/SZsc4y6VmTcYqobMo75QFfGhCH7g+W0nTdNAqG4gOf
	 QaRiWROgf311UXm9ktGAXd9rq/Lq0BOT2azytzAuJ7aja91h3xnca4Q6F9bkH45+px
	 HvmdzI0Y9MboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8705C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390371368.24093.14706436649757809493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52296f29038f7539a2f694795409d448435200b206ba4cf07724fd42a82d0a9b
Date: Mon, 13 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783903713
