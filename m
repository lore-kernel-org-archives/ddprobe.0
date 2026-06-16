Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFEB48BD33
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781653594; cv=none; b=XXjldmM6WnhJfZS5R6F5/9fRNxJEHJXyWG01Sn83BlJh+jxSjl3OOIU1RIgsIzeOIIqE0UgxClrs8IVkKMFIEkxRD/8k1mUGGVRuoHRY7R36cRvbfmuhBqzzXd/lUmW8lb/rT6jFkSLCypDO6AM4LuKZtxqh1kXtNUSlBLwqvLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781653594; c=relaxed/simple;
	bh=7ub/07WPrLS7BNCkDgGPKVtViscgZtGc/RXApcTVu2U=;
	h=To:Subject:From:Message-Id:Date; b=uFazrABpcTjIsoPK5R4NoYrcOeOyWebdmvoL7rYvegaeniiLS4TsLBTY2Oc3t/KDkJvL83QUXpynHudP4bjeKsfQLot2RKaxrjdIiAHLRCUuWVcfHS7YzylJOVoex3cD/DEqcHp8XHaUH4EO46shfsc1bCUyo/t63R4lb7iTTqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4hlaLwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4hlaLwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EBBC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781653593;
	bh=7ub/07WPrLS7BNCkDgGPKVtViscgZtGc/RXApcTVu2U=;
	h=To:Subject:From:Date:From;
	b=W4hlaLwxCHa56IUDI2YUk1clmMGlmHNxOVWjdAWd7PFxmiJAbwx4XtVulwWio1C1k
	 IldBQrYPhF5dybytTNOzkcNgMnJZB5mK+h0YyYk930daW4KzGi3QopE6sxPfHIiPOn
	 usc3SxZ+ai5rI4y/e1uVJIby9h4EUbfzt38vWodB06+tM6wYjl2VaSBZQ6XFfpHRjN
	 y0xud5XQVmb5wdEvMiACLZr9fo7OHK0+ZhgRyL0jAlLQ0x787GWuqCebuo47Gj0Tj2
	 egfHHfgY1fW+32ra+p4fjF5fC8euUubLBLs2CskZ4hIA7i96yMQWKXzDGMkOGnVZd4
	 Z2DDCIg/TPgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B06CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165359368.3933.13300591683834391725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03adf3f3506748a70025ecc46c1a718392f59cfd37b5dd845e56ac4d26646579
Date: Tue, 16 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781653593
