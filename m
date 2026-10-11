Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8310244A3EC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791723634; cv=none; b=h3NY/xJFAY9jOUZ41z7DJhEcLbsj1m6qsiNYnOHwGDwiGxCJdEhbmbLWcLs2YPDQU23TtyIMGoPEzeVhe9Y9QOD/jbJ1D3PgaxQmqnN6Nk6vaVP439x0xpe+t20X9j+v6vG6v863xC+0eJBGdqyKDV1Y++1fboOk0q05QeL7eMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791723634; c=relaxed/simple;
	bh=8rv3m011TAjMh7kQU1uR7f+C2JVh9EHWofqmrtt9DdI=;
	h=To:Subject:From:Message-Id:Date; b=hJsjMtiaCKmdKPUywDr7i0ur06faTxVbAu4YqFFa63EAa0zAnAvDcsB27D2dgC5eRHGkXv6jOFMTXOfEhkB3HxwsCu69XldYT+gdiuk42DT1zUR+/GY7vCkOWnbXBfA7JDQaGZR5MtMiQ4SGSexffrRdNpa/vqR71wFktmNn5c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b920NDK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b920NDK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46DFC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791723633;
	bh=8rv3m011TAjMh7kQU1uR7f+C2JVh9EHWofqmrtt9DdI=;
	h=To:Subject:From:Date:From;
	b=b920NDK9mR06uW875/6uLoGalHvgzqWA1kCpCuolbrroAGVFUgg7kmWxPlGy1SbqO
	 9e7RmaHIlS6ZXzBEfHvyqttXfTnpTCr00yApgVFQ0aiFENe2pM9OrcrJ/ClbaUKj68
	 hdgu8ZeF7oK/ulvdRynRkCIhk6BFEg8yEE3IHLLOszxQ5cLLsHys0Wg+3bkgCw84Gm
	 rL272bjWSMLs/Di7GrpE2vvMCPukIvGObJ+zsKB4j6uH3ZFQiSTk0Mpcd7SPASuc7b
	 5LZDaQNDvpIB90H77CW8sJD3iSRJ1sL0VldIIuB1tecTbH9PFXN7kPe6b/0wc6yQZw
	 bneQnF2hURMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE3CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172363368.2266.6599769486886251691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f619ef515a2e799300b896a39e61332b3ecaee835e8ba191828d8438b42a7278
Date: Sun, 11 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791723633
