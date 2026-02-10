Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A626ED3E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770757434; cv=none; b=hLA/AHWvBRSOkho/fC0Bed+rS2ToK7RNFjCjCYB/1vdFNA1h8BBcrUIGhQAWQzi8qEhT9YLrJ4k1oEJbiVX0O/NOq+ZOJaUQv5A/FeRdjBbf9vrIzVaWJ+Iv4cx4I4xA31rWXVJJmrDElyjF+rsAU1ZVG8jCVPPH3y6Qf79PTAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770757434; c=relaxed/simple;
	bh=dSWIadM3pTy7mQTyj2cOCaW0vsFR7RU41CxhThnCTQM=;
	h=To:Subject:From:Message-Id:Date; b=jXzCqdXEtxkjio9fxuOgeqw8kn6JQMg9NNQXFJELFE7eg6ja3qVyLlEkkv+FTzWrpDLZWRyGEH4k3KK3rlDdzSQs60v5l+iKRZBSfoQbFXEY4upRGN4L1Wg0a9Kv3B1NDWWMGeLHqVYSo36PYEPrFGCWF5pLSum+H6pQHhCctxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg/f3ld9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg/f3ld9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A556BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770757433;
	bh=dSWIadM3pTy7mQTyj2cOCaW0vsFR7RU41CxhThnCTQM=;
	h=To:Subject:From:Date:From;
	b=Vg/f3ld9GyuOV26rMnn0dNd6dZ8Vz/X1QG6UVkXWMQN5Beg5vbYGpmvdPLo6+o60w
	 /cNYfzLfmBKGlc1h6VpkpMBgVIjiR7DeAiLViyb+c3lOQ03d+RHQWJZvbrjy4IIVIa
	 SrKaLgGtK72w8B5aY1ABGNY9IfcvOpNDnVQABJkkOVJgoKJRRTxajBq2VLne80KaBE
	 S2gWGuzRgXAbhSPAfzXGFedgF7ue+M7bw26kNII19InJvZS29gSZEzUeF/APOKiepl
	 V7mkz331301EN74noNhR6GEnJW2h2IlhfohkNoMOGu7paLkfI3Ffes5DPABEByw8Kg
	 rZTLWIjwKxlBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D5BEB2711
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075743359.5588.740002781029608010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8412a6133d73db0b47fdcfdbe9855a208f4ab97fbca9190d210c0c783ea62d9a
Date: Tue, 10 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770757433
