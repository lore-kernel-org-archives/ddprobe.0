Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA12E6CC0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778995834; cv=none; b=Ldpj3vhQVH/ZQ+FilGE2tG6HQynxWKGXxmRmteAhAvZu3XQSUW0a8OHm5i85oStswRNViAnpu8BAfJT4hfmPpeV5beHco9saGRUkGN6ZyXYddBc3UbbjWPvJO/EP+d/z2KlwML8r9thFpSe94Ee3wfTqaTGlCRNRKAKYAain0rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778995834; c=relaxed/simple;
	bh=iIYqfbPmfHEot4lmJzkz04vf2k4MmQX/+Df1MJ/VMwg=;
	h=To:Subject:From:Message-Id:Date; b=JOso+l7/ph9ht+T6C8wMaxeMR5EPVHa+MIP1jJWgg4EUJX2kmuJ0bfcZ9eRenQmpnklHCrTw1BSZIJZ5KneCiv6ggyWaAnE4xxlvc8b3QJW1aHm+mRmU2udguEoBHbFvLzBVD/2IVxByT/cco8RBlZc1sieki7ycu9hJhlmvQZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EX796z+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EX796z+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39F9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778995833;
	bh=iIYqfbPmfHEot4lmJzkz04vf2k4MmQX/+Df1MJ/VMwg=;
	h=To:Subject:From:Date:From;
	b=EX796z+E9bg3Y+4yFp1o9gTP6NJM84BZFJrh9/GjQBENEfsnS4q46psA395/7U2Gh
	 Welg7UguBdy/QfVf42pD0K8kLLk/D4m/quwzC1dYdFCXhIP8J52UwivU3la62Osbiv
	 6S1IjeauW0KUiZRfC8sQLoPnkKQB4YN9HwKhUH78qyjjT/msXA6/bZy1Jb28/AuQDF
	 dlk6cz6Ckci7hXTFA0kHrgXcC464ZHF6rNksSe5TmLn2LSXgG033DrsPGTaN7o0Yop
	 +tMErXoM1tIyfzzI1wRWR5+enanO+9cH7LGx3BQzn0rqargnvm54LYXlKiz6pPyOjK
	 5RcaUQ83WlF2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB96CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899583369.31539.9368959291305571291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b527786edc7fe90832c17b8628fa5a17c9b05fb1ccc2c098dd2d6892a9e61f5c
Date: Sun, 17 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778995833
