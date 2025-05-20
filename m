Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FF21CFFA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747777194; cv=none; b=H7HQGO7c3XyVyIuGiwlIX2uzGm7fJ4ATXDkk2Iyh1WphvJ7ux/aS9y8eqzAvkeOgEH7vqNQEJeaVfVZxb0p8kVHIloHaSQxdXuFetEl6zTU5P9mWCT20dNjvj2+45Ad6vH/geBe2k+oZmaA0X5r7S3X4/9Dz9MvMt/GTHCL+WW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747777194; c=relaxed/simple;
	bh=cVGjimobgF/4KVjsBEzhv5DYxlcddr7Wg/X6TXs1Xrw=;
	h=To:Subject:From:Message-Id:Date; b=ZNYUQD5GXoNeYLHPQVrQXT/ZvVuDVvrM7EAqvycK3fYM+uc/gGkAiPGQnKL2j8NE55nDVc7EfrrkZn2PqitrFluDwRrFHOvbn1GbROjjpacV37lubxvCsEH+RzzbEF8k2DiovxD4CYO9trdgDYjYbtOYUkUyJALzR8eTjhU+3jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewB1fZ8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewB1fZ8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F75DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747777193;
	bh=cVGjimobgF/4KVjsBEzhv5DYxlcddr7Wg/X6TXs1Xrw=;
	h=To:Subject:From:Date:From;
	b=ewB1fZ8+XaS7soWkiPXMpfkJ2/k/DGrl8F5itjuMMqWT7JOaXTdaoJIZgLv87Jj09
	 pdYNQEXISyxl0rEUwnJ5VBgeR606kqZrG/2XnKanlNEWgV8W+vxo2m+hFMQ04dIDYg
	 NrPjk1LQJCplB6x6LUhqHd0IzPMqEbEec30+Wiz5E9X5xaAjwPRWGsj47DYZWjMUaX
	 cKo6JSpzOXYxcBB6gciSeEj2HO+9hlCvbTueKPfml/Whxp/2JskXf5ZdL/fqmv6YWq
	 Ph/lPTVvyBZCHba9bq2jWXyuNFKY+cexZP7+bP+SW619J08rlFHEd1G5Xs9fxnc8jX
	 yA8bdPM92q/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA97C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777719357.20562.2121687249314693711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef6f4a874d6b2530dbee962cbfe50f5408e80dce571a379b275fbecb130bac1
Date: Tue, 20 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747777193
