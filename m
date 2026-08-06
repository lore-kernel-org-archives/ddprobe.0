Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497AB3BB674
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786004434; cv=none; b=a1EV9HNsdgUANsf04VfAEiBdfxLxxD6mIFFEkmss+/do20F3Cmz5NxLoUxNoo0/hHDxmFqw687YY73YL9g0HOzu8mnkQ2BxbY7GnSu8z7k3bIzhQdsZ/maQOXqMBg9lbShr+qj7FManVaM9CHMJ1hBZREimZsHZ0J1O6mfm3EAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786004434; c=relaxed/simple;
	bh=7g4T5C1QSDPObME2euvH1Clld5P7onmU2AciMdCJxJQ=;
	h=To:Subject:From:Message-Id:Date; b=qkiJTHrvejrEAxgA9ndXhDJqbTb49qEioK/yuu3hUGKn0T6fW7hknCx/GnZgXiihmfEd50xG3v7Wg883oXJjXZbiv2MBpgYqVa8yqkq+k5sI+YNuvHgh7MTe6jB8cj//HEJLRk0NXFTy8wKQ5frBMQep7gYYG4cr+rs8ncuefsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTUHwed/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTUHwed/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F5CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786004433;
	bh=7g4T5C1QSDPObME2euvH1Clld5P7onmU2AciMdCJxJQ=;
	h=To:Subject:From:Date:From;
	b=jTUHwed/8j1N+jvvMCqdfU9eszfFuUoiyc59YTsVrdEGSBR8uxI19Y+NpqrzErUiY
	 g9bVlg6BZ0FsTrEKQuT5wn4BCckHvNbaFeb9sWJGg9eRPqt8MLmKN9R79T64xiqWw6
	 cfQ2DxTwbKGxbwRu2nOFRHj/66BB7bgpi1mI+ukdzafNw2oBGiA8m8HmG2IoIl/LSB
	 Y+XPXVfb6POfpeWVwftH1d3KBeWeqcOnRvQwh0+exb8ZaWkPmVTkmFeAhPV2rp8SSY
	 0O7Si5wLQnzAjJg9hpNaWBfm7kVnC8700sk3dtoye6m/Ywhmwu1eD8iTovLvsb5AeI
	 +wjwf2O6o2mtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE265C561E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600443370.29635.388151239133305809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9ee99a3245c0f566d04a10b6f17e558cd41f35c76f9464c2ce29ea6e5b0ec7
Date: Thu, 06 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786004433
