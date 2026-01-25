Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FD03EBF1B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769324634; cv=none; b=ksZgtRb/HiZcVZrP59qG8w+jj7Vp3hmdOzt3JVLQz/F5gshoMCRcbKCD29KgmALMaxm/Z/BDRHjnvf1btPIQsZ2VaO9K7JxBpl4jJdVs00UEyv32abce5l+DaEUIkb7Cv5OQEgFhR0IqYElk+QCgsejXtZwwLbhK30xVc7yYjIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769324634; c=relaxed/simple;
	bh=4lAcZAfKveCW+Zj/AbGG4fQZqwRpNLfgkDqgOZB3pE0=;
	h=To:Subject:From:Message-Id:Date; b=kSz1AKzo6RX4WUi8SA3dE7kib6enghPCLSAuyaMpR6nPtxMcaN1/8If0MjnqREm8aZVebSWxP9n6sPUTsK/Xu+PIyKaDHO93ht6Scd2vJHxTHyVf309mRDNDLuF1JQwXhxCG8Lp/SCoOBBj0ldyzSgpv8yXMklWrag1A3+XsSQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1esfjxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1esfjxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E45C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769324633;
	bh=4lAcZAfKveCW+Zj/AbGG4fQZqwRpNLfgkDqgOZB3pE0=;
	h=To:Subject:From:Date:From;
	b=M1esfjxJkNpLAd6jkoNajXRjBSfkKCu39ePKiS4/vvG9E6ZKZk9H3nvf7B6l7NkTB
	 iEAuNd2BCaozDciXZtUrin0y/W7xHKAnZgnEMBy32rIc2qucSYM/fxeWWxkNKE1znN
	 ICZptqSeKquQdLYbkO1OexZkA+1B/Zog/FiJA0k0nbef9eJ5oqAjfWDiCrVv9fWr6S
	 CoeMx4Txk2ZrB3fOKviqxha9asEgBr9kNrHgStWpXXHIgBVrN/lmdagZcWWp/0aY9W
	 MJFHvCKXLm/cbiDhMSta6tremRILopqFGPgF3Ngsr255wRt6OJid4qV+/O6Q11FMcQ
	 JE1Sbouly4NqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92113E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932463357.6910.7137534723268117941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caddecdbe2b22c8577c392a921483ada4a50bc8dd33453d90758d4fd35a9a335
Date: Sun, 25 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769324633
