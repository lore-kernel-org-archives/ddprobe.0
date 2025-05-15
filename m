Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD129712C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747314594; cv=none; b=SIRz6yLfRyP/FX03ZQLmRxYifcCWwAmdEoty7e61894eKzbNcatlrDxoWwXhlha/NBpAESN/S15LxMw1+VNZH1HJ+DUNRRoQ5E060vFR/4OcxV77sSvD5Sw1Xu71hX3F6DFs2hIfkkWsaYIcX6+6n7kMsCYfwwFGtEcQFuPR+Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747314594; c=relaxed/simple;
	bh=DalpQQU0YYk6LviQD5xVn9vHQwIxr9xbn6zcl5cXKRU=;
	h=To:Subject:From:Message-Id:Date; b=eVSJMyPp6uKPm+5gvNn89A3QGjFIsp2fz6n3Fom5sNQPFsyLEAgVywqJYRzhbfWJ9HkXatKKERJ0pGMNQ83FxQ4uqzGpNcqGoUN7xd6btLo9KalPO3JWsVMnnUhB2PKe8lexBDz1h7Gd2JSg1LP5ODlMGSx42MzWNnZUSXSoHUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrbDBpUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrbDBpUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747314593;
	bh=DalpQQU0YYk6LviQD5xVn9vHQwIxr9xbn6zcl5cXKRU=;
	h=To:Subject:From:Date:From;
	b=GrbDBpUa2XssvVtjrjgtNtHG22K56Wwc6JDtd9N90xIRGcJDKZqg26Ghd1bWPRKqx
	 CrI+yhCYtraw4iw2C/zyqyq61zHpylYZ5OuWcxUVyapfOIRsPVjv9MvFf17l46/0JX
	 Djhykjqd2X4Q/aHW2T5zww/aoQCWEjcw8B53GTzxtFFZp6k4RmkAT6vrRBn8JwdILV
	 s7f+BmYhlTgu1PbGJFNukZt87BIUu6Vd352vG9DsoZJN7lq3iNviDTudmZgyBIHyAt
	 CjXsHwpkMTX3NSMIUzenSwU9xyX6oTWRpa0LPaBSmnne43tQkl0+EhmzTlAZdsJsPC
	 SrGbOiS1vsJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731459357.4409.1845974558840059668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67a2d1e4f53b8a45f1d11b22df891b8d0b6243b06551a2ae4d4a5470f2e6067
Date: Thu, 15 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747314593
