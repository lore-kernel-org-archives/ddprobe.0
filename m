Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C44354AC3
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760740194; cv=none; b=ThVaY2BnVxG4S3rpHLKuoReJdj3fGqAeLH7kqLSXvhbTkViv1ssUrYUDbYgFq34Fswdf9SUlDfu+XbjaJfBPsaWCGfi+zyYMyECwiRLR7J0WSlZlQ81UbxOydPXUucJiwz4mjcQ4yTBw7X5PXaOQqa/LqE3rwpHJPHONrhXTyoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760740194; c=relaxed/simple;
	bh=0NaIjpaixGxmsUT4/gtKklnVjlW5fU3iaH4ikREjn40=;
	h=To:Subject:From:Message-Id:Date; b=ZxvxiSxz/7ix+YjAvFlxaaEW+8kNzTT8dwmhaIWeMxhohr78MviCRd+ha/K6yYMG8BXNpkB91Y5LLIGhtGymxyxctygE66gGS02FlHh39DloMLGgloW0zQpqzhum8lEPCSqlu7t/AC8NH7qiIs42EUTdiUP9g8SuZQmIRmnu8EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9D7nHHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9D7nHHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A876AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760740193;
	bh=0NaIjpaixGxmsUT4/gtKklnVjlW5fU3iaH4ikREjn40=;
	h=To:Subject:From:Date:From;
	b=c9D7nHHasM56Q25XCUJ5pKFGONdAKVHBEEX2nVXLEHemss1U/UBDDKKfv8v+GTwY4
	 JL/MayCMGBTIPvvjAhFoReT3osfrs5oI8WFUr4XOn6JKwtZWCCKe4jpvjfgO9adeZc
	 0XV2zasyq423HmUTaAKmMXJRz1GN4UWz1+ZpUoCWuZyrtCsAKSrVKKqPGRu9pkoXJy
	 AFxTv8qC8Kvdl1ySz40mWTBMpzUMbvF4cINyCfBZeYzKJidQmOeXj8axKKJ5JD7t6m
	 0koVlkx4dYxs707iMMhMOwn/bRUJk0rx+pTIMi2iOrRnxM4RnTX6K0/9x3es6sNz8+
	 kQodiEHsPksDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F53CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074019358.1450.7225264578265281527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e76d8d89fd0936334da2b1b596f3457b6a531e617e0f887f9f22b63ce2a099e
Date: Fri, 17 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760740193
