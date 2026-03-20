Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0607323A564
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013694; cv=none; b=i/krxPhpQrzg/M+ojWPw8KOWDO705pNzassMpR7GcDo4C6LI7WhqveaqZ/TUwlsroKiyKAW9BxuwIABEmg8S1VUUw2hfLRNBwM/eEYstAE09B/z0J8Ktv3ItVHlzXEsDsaV1FGcYa2hKtorMmATlGof3MTzL/YG3R3yNaQDBzYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013694; c=relaxed/simple;
	bh=Ib+FvcQ7HBWNl7J20k0piEAVeED90oBzrGEezLq+ftA=;
	h=To:Subject:From:Message-Id:Date; b=AFcJlZkmmbaZXOT2v11edg8roSPLcqxbMCqRuIU06jYMdZ6ro4JthTzFGLmjFzXmhLn3xXzYS3pGFV7Mnb/I47aU0zLAJpeV4o7kMl4HE8nXn8V6SKk8lVpBFER5WYh3c4om0ayqUp9ZxDFF9l8QRkkAkVTQn/dvHLnT59Ztg5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Thnkk0w2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Thnkk0w2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C49C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774013693;
	bh=Ib+FvcQ7HBWNl7J20k0piEAVeED90oBzrGEezLq+ftA=;
	h=To:Subject:From:Date:From;
	b=Thnkk0w2wpIblLko983yUcZB2KqFruVF/7QRPXFu+G7DsUPGRUDP2p8OcMJteBrV5
	 xpD32h7LGWx6PvI5KVoMIL3H+RQp8u9MG+Ub3owxVsqWeG6dFvtiozeubMu0Y4VgBH
	 IZfIV2Z70oGuipQjy2Ev9l9j1cwhBvKAObYpMGUsGiv731pF2NeX5XVhthG6tmfnjQ
	 AJVNimPVKsbJ42tXQ2ntjD0oK+umEcbq7cUnxNomHpK/w+XrX9UMzd57Y5+UZETn8T
	 QsHes17kilef4W/GF+etPK1fvERiQeXVs38FvfsDmf87HuBi0fbHl3W2VMoDXFrZnG
	 lI5WDUkb4M08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D41098782
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401369357.32486.4422903271853134846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3d49281dca48f8dadb7f3090639ca8e8a31d1082661be224fb04ba5ae883fc
Date: Fri, 20 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774013693
