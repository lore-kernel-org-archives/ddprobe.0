Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7C3CF977
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778821834; cv=none; b=aXk2T+fVrNqrghGvH/faAb80VjlU4S1zH+pnhmfIUmr8MQCj8JBQaJ9c+RxOGF9v+FOLM8JTWXC3xQBkGuu0avA0/NWDZaSiiz1hA8wq3vtTRZ5XrvLLKzqI67LcW8g4ce51EVG3KQbjw2MFlRGxNqZ31JNbGQsWk4y6SUrCnas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778821834; c=relaxed/simple;
	bh=UOs1WBPjN2bKFTLqj+HxftLVfe16EUB783WmGB24Wow=;
	h=To:Subject:From:Message-Id:Date; b=HLHg5SN8aEwSQqqk+mD6WKBmNCI1TNj9f5lugFUpjl/1joJ+PGQPmSSeQJWN5gEUL5w2CHQeCeuGisr2Fg9XC1wzKm+CZUxFF+79F+WOAMJZj1wIWo2VmvfOQyDNFj5w91V3OIlnQ81B2znx6pt85ytH9Be1N+dNWnGLyBdn50Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQbFGDjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQbFGDjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4FCC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778821833;
	bh=UOs1WBPjN2bKFTLqj+HxftLVfe16EUB783WmGB24Wow=;
	h=To:Subject:From:Date:From;
	b=IQbFGDjLXyHHoEBepPk4SiBHuE+VpzfMNsk4mWhYAZn3DTqZcCMeDmcnYVuHqtaq4
	 MM8JgJw3s84if/+J7Fo2pajY8oRXxcKk1jdJtHGHNEXvzY6iuEDnpevr9j9cTf/9Xo
	 bCZwEjaQBk1o4fR0t5GfnVfIWmi6pq47yHEvgo5DwkEAuuXnbiA0fCfrxoyuE2S70t
	 BlIvBupVW4AWcCHF3L5VkHXS/Ofyib+YrAtOJ0mfFe+i7m27R6TkAKljmxJwviTnRD
	 F/5CxN9XHi294SIl4pfQ2eC32Lr90D+EnKzNNaQKAgx0jwuq/PUUglutJR5JvIx+9t
	 9+oMcwc79vbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB732CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882183369.13651.12433770648456632494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5731f19450b2d6569a0e757ee22a45e7c61f7446e6f698e1ba954154cc70f3
Date: Fri, 15 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778821833
