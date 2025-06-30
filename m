Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD86F2E611B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751299793; cv=none; b=UpmF7Q+to/lf+rbEd5SYjUuMOPB8ADYqqBj1LnG7rhfMbReMDvWxl5PqqTLEIvkUqQ1cfIEiNcVXpSUpbVG6AIWvsQctpx6SmwYvezW5I9D0+bn+H0WamyHO8RzIYpVOrbgl0YDfCVUOg6VuWs8rOmUUshdTaU5cEY8puHUzCnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751299793; c=relaxed/simple;
	bh=QEqBIjQWLBz6tSSaEdvqvh2HleoBC3opwwAht9nBAlQ=;
	h=To:Subject:From:Message-Id:Date; b=atanhD1NPtBP8KEkaagL7EJ4ZshHP9EcCigqqGJx62ClmLdqG6yDOmXRsOp7yldgAMfVBtj4CvhsDv4RJQ99AuLqS+0E6grcHBkSiLdfPVgvKLkzjEalFwjKb+HckRicy0wSLUyoJu3TnwRuCvEiVDxqT7GaQBySTmPHAuFQRNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgM2+ykm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgM2+ykm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEBC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751299793;
	bh=QEqBIjQWLBz6tSSaEdvqvh2HleoBC3opwwAht9nBAlQ=;
	h=To:Subject:From:Date:From;
	b=FgM2+ykmwlPyRabGVOt40EOWNsHkcg1hzLJm8up3/MoP9iNFWsyPfDnjVOIgi6ewo
	 vgethcDe4XurzSg0bKJbEtyg+0YvdAvpqvM4C40E5GumPsx6RGpLJE9sPci6Q1uvwP
	 kEa2UGB8I1x8zwY68gOrLc0IReGNf15IXc+Akpx7UkiupC5p8xJ5o81juwXLe+/6W0
	 tslEaVOAFvNO2gVQX8PSa4V22JhGxloID3fxrIx3vZnUHQDfYshGAP8fHNW3LN2j5k
	 yRwhZW96C/aRosk5w9LvPs5Ac7rZymciKpewXdGhl9k3M/UgT7lA3Nnw7OU2KbjaQz
	 rm7FoRfS2YHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7DC8302B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129979358.4945.10807605210636421222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ce87f50d1bdf5c1a57eadce36ec814ee35a0c7dffdd98c94a610af6b7044e4
Date: Mon, 30 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751299793
