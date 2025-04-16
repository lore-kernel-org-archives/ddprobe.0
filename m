Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB2A29B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744807795; cv=none; b=cwrYg7TiydKAT/PaaDTEdK6s0cbXITuf/rT3CPZDDTd0xEusG5XmNCPSLGukiXrx0ZnTXftbPX1vduxAAY8sbjNX2SYddt07i3isBgwBTo+lJNZp3+rqM7atNBDO4A7de9V1wNJYUk6eUiSEinDCtCaUE95vPcPlpxsXCBE6lfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744807795; c=relaxed/simple;
	bh=HlGHfujEjb7zwW8h/1PG2QWIeuNf97vDp8M/eAyLlfg=;
	h=To:Subject:From:Message-Id:Date; b=qRRZw82ceyDimOft++kBCrvM6SeJVgnSMv1z21i58Po9JYwO0l8YPPjn+zbsLpRa0KqYAxoZlGaggwVtAJ8U8bdHIM3bSx2KhkzUGcOBlnnNmq72jvmSfKowZvIIvNhPVur21IDXkApTYjH4+c6+UG8+gBfNbthHOSslF3fHi/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFyT6r12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFyT6r12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65B6C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744807793;
	bh=HlGHfujEjb7zwW8h/1PG2QWIeuNf97vDp8M/eAyLlfg=;
	h=To:Subject:From:Date:From;
	b=mFyT6r12Wrg5BOI56wehNSvAxv+BEUKuvzvnLTPGOaLf6ZKyo96siUHtmp+N7hvml
	 xN03ze5CGED83bBcmSuJpvYfyisQX83vs3qW29djsXUG/V6UW+ygfrbcYGiUcx+jqb
	 lJcCMaL2V6K+OvxyyrdQ4nUPjaN6vbVHARsl49dr0h0U3UvTXjnQvplmur7kMAoXyV
	 QsVF5rEVrAscQtvzdr5THenRwwJTohA6fmYqLyjrs2llhDYKLIq/Q/YlWUYGzu8rIk
	 0bPQbnf3/zbIPJZ1VM9h85VLsWaxIdivmtlpz24t0xC24F9EO9tyxe8QuWoPr5awLm
	 p0kvYB+h7oesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAC2C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480779362.13521.10075870838950322847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa1b96108ab9e337dba06ec1a7d662660e7d61cd152a57d7a8b07677135a047
Date: Wed, 16 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744807793
