Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CDC271458
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759591193; cv=none; b=iMz7Dy/H9OwcpcTWR10PW8KFUi/8k//Fb2ViWxIiIOTE1jhU92mOLPrdLbzKYSMoxKlgE9rBPdTG8mpN1+DsZyMbpFebhT0/XHL8JRwbr/DukK6+0qJ5Q/5QzkMj3vUQnxBgGl9bCzsbqdlnR/f6xekdIrJrNTinzJrwr4i85Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759591193; c=relaxed/simple;
	bh=LeDLZzI8PaT5aWCpRpfeGY/iQPtjTDLQgs8Hr+5lR0g=;
	h=To:Subject:From:Message-Id:Date; b=aW8YEtk1SLrck/dDEK2k0za8cC695rzSkXCU/3syVYJligVhsCeT+kVrcPg3olRFGGRJwZiC44KYBNyuMB6Rpd6ff8L4jPx93Qcl6Y3Gin6sAKUhmynbCdgLAPiuh0BViubpIF+bleDBbTVHdr4G/QxiNpaUYumr/HmYsym31DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnTo9uH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnTo9uH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394DC4CEF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759591193;
	bh=LeDLZzI8PaT5aWCpRpfeGY/iQPtjTDLQgs8Hr+5lR0g=;
	h=To:Subject:From:Date:From;
	b=PnTo9uH7Gsu6fgicpwkuudDs6Rjd5Gxw7Kb+qm0d8NXxppg6ij/XHx0k5XD3e63vI
	 9r8YC2vY6hfDxUI3GfpLB4QKKTkvrc1m+PYdW96HF9v57N/R+v5PqmLRm1FggqU5oC
	 mlZFobAn1+elz7bavM/5gfLY7qvLIRUiW79DW32rB8g4MgX8LYMQBKLWJyPQcOTiiN
	 lKxwkAd8wdQ1cBokGw1x0mocmcV2ZydiJQuUjd+OyIVhMBlkHcICsfUnpCMKSkmK9G
	 BL++Furhd3nsT+6KU4q6FCiRl6RYJwj/ZWlgJwvQ744LxR20zWYX173OYao6d9hORp
	 rT8jtTrgaO3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959119358.26526.15860555661602587026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e8ae8601a71bf06a6328df220d0d83a6d9bb8b59b5a7c6bf1def487bb89495
Date: Sat, 04 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759591193
