Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3138138F92A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775585134; cv=none; b=taaz8nGPJ6HhCgE/INL+bz8rupVcZXhyK3cRd8pTD86Zi/hl6JUX6RVyRfsdKmqOWsxQ89869gOvOEZNoUv+P+rpmCDgcz6v+01gVVLRR6dcwRBf1D9ffPHRNIilBQhIYfLLINFg8EMHBu4aO75u8jjPrCMGj/5zlp/pSlFYNg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775585134; c=relaxed/simple;
	bh=LtRn9ivXCdmacNbdKJH38LDU+3BOF6+Zrg4aEtTB3RA=;
	h=To:Subject:From:Message-Id:Date; b=p2okRCJlsfNGGVmWGh3uALncTFP3BADm5bEy/9/yye6rVli/6ZRElAE8YAcTwcfVsp6j87FFGsyJkdstbYIJ4DbddV8GqQ7aniZSLMMw8YLWAzAtxzBgctbPgjYrJxsG8u+HRg7L/8ZhWJbDN/w2F3Sr1XVv6CaXy60NqPt1NG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnSneWuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnSneWuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C350BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775585133;
	bh=LtRn9ivXCdmacNbdKJH38LDU+3BOF6+Zrg4aEtTB3RA=;
	h=To:Subject:From:Date:From;
	b=RnSneWuF5A1+Wbal9/6LWzE7Gr0ZBLrdGIczBNsan6litfw89WqFHfRcv5DzRoLvT
	 eKgxtljT2nD5ek2oHqdYQSAv8jTHkZgPlGZxHTZraK/RleQcUaHsEKXuZ+XX5ENQ0o
	 xRjPohoNPA2IxPQYaqVh8oh9gOtEZJNe8J9hvPpHOvDhDxn4StMXUEO3gbw5GyWTJY
	 wy68Lw1moxu7ALIlzrpB9P4gTOH2oIZBftHAUv0p5/RaVcvczRSstojU0nUdORgHjy
	 EKSIafiseAdqVjd0h9OOkKZNTBGvR3KBR7P5geXzfgy4sglx4CjtuFoes5tTPnptRH
	 V+uxLtVTCre+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD237FF5130
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558513369.23411.10086043768697103472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898bef6a8767e3a63ac0ebc5a08359e557ce78d7b5470e2e8658be041ed21cdd
Date: Tue, 07 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775585133
