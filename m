Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C756F53E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752431994; cv=none; b=XHiFA14bV78m3OUFLwhIPPq30jl3tZVdUb6xaCRO61QooRAjl8z8b/VS5iWOloWQkYPqQt19LpUpYDjYIFHwfwma7mTu635OQPaJG2KXiOgVl9vPdwKWhMqHURTYMpjcflS0n1bG0zKmG80pIAfUz/RvbA+ysnT7Tx2RPpUMBHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752431994; c=relaxed/simple;
	bh=VZ7+vAmSFVxCmBVSEUnWLfrsrxmL6NmGu2gIESJFKW8=;
	h=To:Subject:From:Message-Id:Date; b=GR7/HZAUW5BLVxbHw5E4Nm65w00zCW+lzLwnmg+y2sCgRmrNPuJpCBasmxLyFIQroW15JVgVBvMX0Lg5RjezKFBDjzT4h1OHqr36UxYLZiKGqS6h3/Uha5zg4Gz9k0a/pMJIzENN5m0Xulta+9iw65cxjisnPmsK3C5dU8P2CS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsVfatdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsVfatdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752431993;
	bh=VZ7+vAmSFVxCmBVSEUnWLfrsrxmL6NmGu2gIESJFKW8=;
	h=To:Subject:From:Date:From;
	b=RsVfatdxD0m5z26DePN4B0YQgSqp5Jdx+jwUZCXdBqjhI9xDHPh7AOTazcND7stD5
	 J+KfL2EZoj+mCj2b99cfNlJ7yPhPhIfZ4fa9azPKX8oM7w2QUzAssz2F+R8vvUy1Bs
	 wzrtRBCfZrrlGkSkCK+zZK9nOROhX3Sf5mYXj8i7DAcLqhyakXno01X9x76p1DocXn
	 //DP71UPhShFEsi/yEH1o1FESE9ij9X0YnAJNGJ3BZzHYSZSdyY/M3fLJK0DRUa0rH
	 X4eM13v3fUJgXG2X41mqg+9fB5WcajYSOUaD1WzYZhyOJg2lQ715ieTbjF9fH1B6xA
	 GjwYPglBBGEIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABEC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243199357.17194.10636024728952021302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe52b2ec7fcce5b70f292caa15ece98d40c5b92734b8ca6597dc19e7efff47a6
Date: Sun, 13 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752431993
