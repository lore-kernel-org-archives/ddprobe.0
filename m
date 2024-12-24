Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2237017BA0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735059954; cv=none; b=KiUHLWiTnJmIM7hTJIHn3HDKzHGoxl8ANIoB0smBBQPbeUW6RlAUChfuw+4fuoCQxHUPYjopwCHPkL/OEq0lJE4S5MdnmMa+u0bS/qqktdJQGPDsZs4HjtGHDqta6/7F4wEoSIpb1hJXLVlDjVmbW3GdmcSOAwYeLlCKf4Ckbl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735059954; c=relaxed/simple;
	bh=Sj6HX2BAy8+dd4L3aZG7N/M7XUp8EudMcxm8cxConGo=;
	h=To:Subject:From:Message-Id:Date; b=hLbktEsYmiNlZPjL99JTe4HDgxbM4KJq8Evi/J6pkhtpZVToEuMhl37Ds2CE2VtsJozOb4Tm9+G88tnixZ6as3l6nWc9Q9OSZAESwEQvp/mSbMuHFTYboyCFXt5p0zvmTi6miJDfFkrZWuxgilwVuq0as1xCDIfukBXM88Hav+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNl83L9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNl83L9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FC1C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735059953;
	bh=Sj6HX2BAy8+dd4L3aZG7N/M7XUp8EudMcxm8cxConGo=;
	h=To:Subject:From:Date:From;
	b=JNl83L9heggDHbrvKv2qSeZ13X6K5tGzj6HeLiJr2C4t6U0CiMvnFhU0V7s0loyiG
	 wRMsKTWgWwzWjhfILgDeQj5z7+JjPvXKtPlggMgSsKJ2KSf4YfBJFrsvFaNuUkB7GA
	 8M1YL+ekmrqdaEjBwj1EQLJbOTCEa3CtieSLt8THPO2iNsimOVPCWf32u+bZkeUCpZ
	 L4cByciid5cOkm9bHBH1mhJxd5OpRXIfQgxqbTd+4Tc59hccIA8D67hOYQYXmP+Di8
	 nEvFTRKHdKFKpZ+BZylbCqDDMZqmxRY1zi3D6t1ZIjRkz8Py1KaIXnaFWlH8xY4nPe
	 I9JCGhqiOIZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B1E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173505995359.28691.2269090568711440976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc13fcda4319c686b0f8dc752014733f83d2bea53b624d48ba7fb939ceafa030
Date: Tue, 24 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735059953
