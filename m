Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FE51E9906
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747649394; cv=none; b=A6kg/HqwkZSDtS++XXxnJ1hx8dX+jFhvFvkWapdNpkawODXjW2Cd9+KwrZeqIcUY1wDXUzjbu9vTHOUQUXbzTkCYP829CvuW24/z8xAlsnt9h43m3cnaAwn5c42Ftt7g/fglZo8hcTU3ugshwgZ4wCPjhWeaRrobECw5u/TaNCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747649394; c=relaxed/simple;
	bh=6k1PZVdWt1C9TojqRoC4twKIYQj7zXOzK4bxIuEiaYQ=;
	h=To:Subject:From:Message-Id:Date; b=CGdKLB+XvMU5JiVZehuI1Koq9mMPv68j6lrB+1MRcHo+F/K26SeLWTDGjqS07agX6fydKbAAikNaOxFS1ykExrRufdYcMNao8+VM8yycCkBN16XIAR+j4hNf/dcbpLdwFu4A1mmsCgywswMZhyzQ4tPEZomMNUYbBouknCrWS2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At1o89tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At1o89tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20EFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747649393;
	bh=6k1PZVdWt1C9TojqRoC4twKIYQj7zXOzK4bxIuEiaYQ=;
	h=To:Subject:From:Date:From;
	b=At1o89tcZsaWq/vGT1NWjnbRe2Rprq2Du0i2hOaKU8U7SgRLY/GzxzbLe09yCAN9a
	 2Fwn0B/kPxVzucSyyFQ5cjFSbuw5D89zRH8qrRF0wzFfRRY/qyb2F4j8GIspKKmhqn
	 gdJCJta+QmwQxTwokCt+4fB2Vyu6+ZWXUNcslkMfshUXwcThmtDYdSLLzX5o22y7YH
	 dOc/wS/qezM/GtwETzBFM6/D5F+fGNLQiTWYBPFXaeqbpFGfNa/txrCHVQ0J2Mce8d
	 OAAnv/2UH/yIOO6FsIJbUCOobn64skwKYIG4Xt2pEFMUFRRCWARJHmUDxy+nw45mUg
	 5FqNnVU/z+JBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB36C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764939357.1315.6507033311527929006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0db87c9aaf9d9cf578b990df9fcc444a2bc6a69f27ad7b817e3cbda1f9dc65
Date: Mon, 19 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747649393
