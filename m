Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D17187554
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723549554; cv=none; b=eqSbYMxZ2dbV+eE4QC5fUW/ziL6J+Je1HaMPEuLrbQcts2ZWi1xmpXeGDz6O9lTEX2Ptb2zc4NrKZ526DueTHilMo4VLNolNOKCGi8jsxRyG7LluE/doztZ7nV262LXJJ477OKaZqT4ONDOj12LAMJthvfVuAUk+5zwyw/PkfEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723549554; c=relaxed/simple;
	bh=AJS0a93OvyxB0R7ok4xam87lue1NYtuFC6ZAWFQiq+E=;
	h=To:Subject:From:Message-Id:Date; b=h3gQ/OFef9NS+hW3ufHOTl3NYehXBxuAwvZCy8Ebv+Q+c0e2yFVXz8KT76fzv9kMwinVyjpjuoQGWogjeHH7W5I+HIRB1WLq8PqCOS3k90piLE4nhEhpXQGEwxB/CrYSIulxoC/3AjiQWwcCbtyMoxdz3TkJPIe9NC+uKMSXb/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4ya0yf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4ya0yf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD040C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723549553;
	bh=AJS0a93OvyxB0R7ok4xam87lue1NYtuFC6ZAWFQiq+E=;
	h=To:Subject:From:Date:From;
	b=Y4ya0yf0xmzR3V2uzwUxak5JzjboLDbRahc930IY6aLxRb8kzNO3gxFWWEM95Afmn
	 eKiIS48RjYDPuSBuIzq4nCj4B9cU+VjE964zF7st3h2HUCWRB+4zrE+8jYx3ytaD5Z
	 2TjPxjslkbdWKAmCZUxDMpeUkR5HWHcrqciLt5I7QvkaHHhrn18ki8B1190tlqpFLr
	 Pq3aH1tv4NRIj23Ji91377VOtMKooCJ+KBSvuvsRPfJHXzXxSHZ2deKi1joliiMwIT
	 uDlQHhN6KhZ8EJEl/5oFO6NkWF6jZFZXezyPOAXsrj/6DUjrMZj0CfwHUaSSc4bBBR
	 HaWIsCVq0CIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A674C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354955358.9127.9216228687025514198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375bc36f5c13b61b5819cca0457059e9813361de95c2f17a8a7539a47a5cd32a
Date: Tue, 13 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723549553
