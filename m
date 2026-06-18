Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA4B396B9D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781807194; cv=none; b=a5ZAt9NMsbznQBUoq5EcAjd3YWpBixHt5xUpFasAJEd04s+H+3fsrpRU+5vCecN2B49iFv/fi/CqpdB5eHbGGAZk4h1Y2w41yCtQwSn3fWFUaDhR/IItkw4WeEJ12tQjsrjltP89JCDfQaKdBLFKHYhLEzetWCg/AuLC6W4PZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781807194; c=relaxed/simple;
	bh=e91jufPsuP2ac5h4L1wyC+bYwzSDM0430jm9spUSBzM=;
	h=To:Subject:From:Message-Id:Date; b=FAQLA54CaYuPDDwnW81xNA9gToBAUo7hD25+YiAyuYZ8q4THuNwY1Advuq//uNs85eO+Ftw9ogwNt+fN32F3Pbm3NLFCYnEaRE70XeTmJxmXJHPbWNd+TDvuDKgny5zvk6VAxlbBgGecgMu0xBlHPDPRjhuzUbjZKOjt3i3YV3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3cStQ2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3cStQ2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67C8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781807193;
	bh=e91jufPsuP2ac5h4L1wyC+bYwzSDM0430jm9spUSBzM=;
	h=To:Subject:From:Date:From;
	b=G3cStQ2G9JJzCqMc1LIrIcYx51LUTosP9MKYeYwkkSEDnwuin7rPnIU+O7enAfg4f
	 o0jlvQYJA7aBXYWDZcE0hWI9j3gQFsvnGyOGqflB3awvZoewNxpBq5I0suJbfDbj1J
	 Th7yqJSRMS5vD/UcMG8luEnodk18ywUe83sqYvYaoMqVb3SpqSofoiwY2XXvH75yuo
	 /HRtqPqaM+bduYMwmLkgJaFH0WueYyspnxSQChq02HLoTllG1eKkj49mVJDokttmIg
	 uA9AxUS2Ib4OePp8wFQBMNonk8VNAod9zOVCAkehACIrBO2GzDP6qofe0qosUC6Kzb
	 W4CtjhicyNR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA09CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180719368.27824.10263401633073677488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063997b2efb1812755ab9a7b3acf29e291a61227592078293318504e8cf7a2b1
Date: Thu, 18 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781807193
