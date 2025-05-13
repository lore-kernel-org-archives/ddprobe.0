Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2380BE56A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747180795; cv=none; b=FJRkIIDd92G+o27EqCfTgF+WGvJUC/RdVXScrGgYRduISpMrTmIUgR//Bi2WmSziZBIak/JWbJy1GLRTsGew8nmWVX3xUU3AIseJxESZ0UTaN7qPMlp05O4O0NZMBv6YTMV5y6Ncj2n1975CF94GvwgwZOQJCv8/yvviMw/nr5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747180795; c=relaxed/simple;
	bh=WSN03G/4FLHHyUi2MwMJbzV/sBW48jUsWpThaUrA0lk=;
	h=To:Subject:From:Message-Id:Date; b=GTDhAWzY2woHynxg+o76IGLVh+sHnagq8u8NFVKEB9A/MEwMiPftLhgWwJ4QOfHA8WtS1o9p0Oeagj40/fIzIEURbhv4JV7VsO9SmJZLWX0kUi5FpWnaqHBCUVxHSRXct0F9sgfKY6Rpt8Vncp04LwUYdC/AdQXDkOR96UWgWrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl77Dag3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl77Dag3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A03C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747180793;
	bh=WSN03G/4FLHHyUi2MwMJbzV/sBW48jUsWpThaUrA0lk=;
	h=To:Subject:From:Date:From;
	b=Dl77Dag30VmN3kFLEYrfDmhLiFOR31RbFHAIFtaNEM5aUkXq0sHOlHvnfrI6aPCS7
	 FHq7rjfNX0+gfVT/E2Nx74wuJrLjwA5j7OYYjncbRV3H57freg1x8CIZrZpaB+0TSW
	 18JkEFdfTqGvfTHs+y39jAfjS1plWatSKKCIRyjvB0wDuv/6yDEl77fsPJh1j0Xs1D
	 iG0kXVNd45DLx6R4d8aZRf+E9pgDsF1Y3TcRdE5WHOl/cgAnvicHVQC6p2PE8rJWz2
	 3kPHphNXJk8nehQfQUM9VeICwhLaNu2YxFylHlSnmAoVLYeVtWm9kqeZ95LnpEXKLP
	 V9JPUgjOaeuMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90580C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718079358.21955.10551903181002665415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978277ab896c8a58cf2c8424e32614869428fa2b39d6d2a61a6d25778c4773b
Date: Tue, 13 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747180793
