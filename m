Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD8191F90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720616183; cv=none; b=oWMkJJ+ugTfkTCERTcO0+6ExX/IjSEIgTDJ6eleQawTj+TQWYg0upgDBQ7jAf9GHILRCdM1gZxYkQmHlhVNZXnpA9u6QPPOdz28mio0fjDCT5xitGq8+QwFYIS0hwD/oj32JTDY255gnFA8cgc6WImQ62e04/6hsDSgpYycRyQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720616183; c=relaxed/simple;
	bh=I+ruqpyX8lMxI72n3kgbtly+0LqdKZgee7ig3W+T3Tw=;
	h=To:Subject:From:Message-Id:Date; b=dOnQHGGjKQOgm4MyGI/muAdjdtsICTpH9sd1xTL+s/guRx1MJjFVb8A9V4YrmLpDP+bqA+1Fu0p/TNJMcxP8G+cPyIJeoQxwU5ES81bL+dLL7PAhI8LFbLQIGRuhv31//zHZ3uBQO3CWw5MDkjmd8V22dYP+Y6sc0QvwHXmSs0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc545zuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc545zuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89A1C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720616182;
	bh=I+ruqpyX8lMxI72n3kgbtly+0LqdKZgee7ig3W+T3Tw=;
	h=To:Subject:From:Date:From;
	b=Lc545zuYq+hoCP8yHd1GW+Dp1vqloioB+/NBcSoXoW2kt4J4y0DQ2Y6AKgLFcyVbT
	 zPuOKLin3MHPHW1Ep5SFQg/SwiykqLuZyVeri4UwfqD10gx3cgrPDc5auywBc8YEXC
	 0JKlg36rSc76RBlijhOZWI1LLi2Q/Mj6x1oS3MBjpT55szZwTupxZ/BGthkCvUlKVo
	 PXL61Wt0MU1SgKBJLR2az8izbL+vCcpqWtWcjSbEpBzhdz4HB9CehHo7coybVh2UCv
	 AMH0/QOBCrgcQhiQ1DvY4SB2GKSgKoN4B0OaWmZvrp7n3HnqOUUxOiYBfWUNz/OO7u
	 4GacfVmt0owIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB517C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061618275.26312.2955399696963289932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd4e755ec258adc2a4462280bdf21cb5161186233d49d812fa4f018bce00c96
Date: Wed, 10 Jul 2024 12:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720616182
