Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F543BE174
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780773278; cv=none; b=LqDSQ3XbLb1d+O0BsJAysvjPlUnidF6lz2l6uDmsO5AtQI92UJZwHFq7grMJnJeC8Hb7wdLjBVrfV9gofSmg5oIhNmlhWNHzZ/ERQQsHIfdaePOgip11/tTNO/HVpMiPURZKogX/MjQV/F/i1OgkZ9/WvapNFKmWKOsVxaANoMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780773278; c=relaxed/simple;
	bh=ZCK56JgqZ+W90K1ATfJOBr3wW6ZVVk35tJM7EheUj/k=;
	h=To:Subject:From:Message-Id:Date; b=sAc119+M+3bC/DN1pzcvJ87XA0xlnceASt/qLUZns2Je2er7cGW+fR/kdO695X9Y9FPCAl9CaArVF1jPuPaXqEJ/JTAf9gE9qk2osG4gR7EY9R83hSy1YeDN2RQPkHNbIqSSCt1tRSurDMdRx2ZXCkWt8iYTsXDd2JfcxJ1VDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqVX87KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqVX87KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9613C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780773273;
	bh=ZCK56JgqZ+W90K1ATfJOBr3wW6ZVVk35tJM7EheUj/k=;
	h=To:Subject:From:Date:From;
	b=jqVX87KHo8+azZxcNweox04OBWE5EgG6yGVRV77+MNZC4R1NGIIsg9n01RniWe/bl
	 hVdEx1Evg8UASr7G5Wox0t0GzLeKyJ9DwVYbbXrbR1pv9Yk4XdVRZwste5AEXRTRDe
	 xdpEiTyhr9v/fjcLUqD4TqbreDHdnhPlBe07NL2kqhBpg2863833x2UJVnuw6h/HkV
	 djX/ViADY9VNy3SDr8xEYx0utVcoa3MesLkIpVyJVNQ3nR28hTO4sbKMS3WfpY+rWf
	 2IutnDJbcwoe84SIsI02VoOW+bKyKi+w9AZZgze2KaWWDVpToXmLLDDHyJRC+MRppe
	 gHix3ekBha1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E4CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077327369.4736.7295995352060359963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddf4e09bece1493149b4841ffd0231cd300d0c91f29302831e2c58f8c883d69
Date: Sat, 06 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780773273
