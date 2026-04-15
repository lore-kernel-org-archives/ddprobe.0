Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2362F2F9998
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776296254; cv=none; b=jK3N/MvI0nA/AKh1Y4qk3Nn10qbcbECOd4xX0LKCdzBsqQyO4cNDt4mguoPlsXGbRF80mB1DkQulOF7V5pdlBmArhrp+pID+iBRvnE7azUFldpUvnTJOsIaIH0Png+Z+DWjLN34gK/YghbMnBNRgotpfIEwBkWSHBVP4vYWCeB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776296254; c=relaxed/simple;
	bh=m/4s2XP/AiEG8imgh4Ub4cCpikXnwuuralQ7b+lWJTU=;
	h=To:Subject:From:Message-Id:Date; b=ngXN9GF5R9rP14FE2u+C5uw7gFln70YoGNxHtqTuMjutlcrXKY5YbSZXHgyksbLZoyNkQVgkWriQjYFAkc5aHKvymq5AdoJKNYFX5NNBTb5+bzZRGy17otJJkh27vPAukOcbetJF+G+nuQD6wjo+XolPKmyi+Agql6/FD1av0bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT9NqPEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT9NqPEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3974C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776296253;
	bh=m/4s2XP/AiEG8imgh4Ub4cCpikXnwuuralQ7b+lWJTU=;
	h=To:Subject:From:Date:From;
	b=YT9NqPEg893ne67OHUUgKcrGChKTu2a8gArw/co5x190e9DTKNdYqEkAhuTJAyKx6
	 hOgdWJKdQjhQmSyOVmpd1fSQyrW+a6kobagEhqW14Gf7Iodc4XTlt2GRUVtilmLIXu
	 kdkJfHRS1UjEcepkg9yVtwGQ/FtLVwE4T43B5JEeV00a1Kn9+hpkAU8T+v7OHEbCN+
	 P623xQ3wkN9CuvJUmnDNvLTEuN7qKEgKVkiTeD3IacuDaAIXU//oWq2K+6tpdTN7g3
	 cHBhoSzoqCAcY/yNk9ppVXoJW/iMO3nw18KOtS/mFtf59vLEpjPMdkBxJhlaprUymj
	 c6OuUF5EZ1Zmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C3F433D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629625368.11486.2365394764410628341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1e484dfe7d4a7e9b51fe8c60f6680328274655b61871a0f4bee089c43a8c0b
Date: Wed, 15 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776296253
