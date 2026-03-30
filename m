Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212013BC661
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774872294; cv=none; b=LGSINFhkdU7rMTVIe5UTr6WuEWLtY+yigBBmiLoZXGN18FLhFiJNsCArgguwah65IrpFWg/Nnvug1dQf6BDgA10bFFr1UF84KDKbvyJovzExzdQ9CHMc88ZZftDjKXIa5seAVzjtq3f0y9gRKOVuhUPqK1oOBL4ofGz0JP96xnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774872294; c=relaxed/simple;
	bh=PKhAIErgr/1h4i6vrLfTPGUUc+qAFW4f01cQGALAEME=;
	h=To:Subject:From:Message-Id:Date; b=ThIqL9A4wZyOXHaEGJ9mrExgx+R+TNonxjt4HhxATgYsQQmy2H3BHV6pQydXECHg6hRoDIz3bZhr/6T01GjiSvZwjhod/Gqbdx/0pxkvQZZNAzSz/h9LkhDJXGVWOxIKXy2VR3Oz/NMwmWZt38HpT7AxygtElLlhUmQqZ6UTfdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLhASMAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLhASMAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE06C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774872293;
	bh=PKhAIErgr/1h4i6vrLfTPGUUc+qAFW4f01cQGALAEME=;
	h=To:Subject:From:Date:From;
	b=MLhASMAGRNx3Gv1RUV1y74rNC2v0w+apFQS9hlZ4IOLPaQmIQThxFPmnlWmc5B4jT
	 fBVrMH6Qh6uuCCHNw8h7BcsxSGofLji/6V97EHR8MQBrB4dH4xGwq1b7AUaHo7IMOu
	 ABigTKX2/6edJ4/ZfHQJDypSnn41faESNXSKTshxT22r77XnNNhjJcP86P7v1qas73
	 foqlFEhbLh0JMjMeDXppDDDLUZlhkAORO9ngBeKZ32Z1PmuvcQ4oJ18m9oEuaoDwLN
	 ytxQoaFJ45/WqHiplOMyy4JZ2ZHmae06ecGheQ5JEDkS2ZHzebgUhcZKH1BM4YTxTr
	 alS7FNCPrkY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A7910D14A6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487229361.24174.6184019157789329097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bb4d3af1684524f5df7cbcfa3f1a69fc6a61137f4ff1dcd81b493632e674f9
Date: Mon, 30 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774872293
