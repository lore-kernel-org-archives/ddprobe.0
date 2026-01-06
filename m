Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A12027E7EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767673434; cv=none; b=ugwftuS96UOapHZM+joUeSScfNhOcMzM21QEj/0kYLKW6rtRjHsl3dM/jkni+73ntgJt7Jb815/meP+X5PHMdC2yV1WofVxLmpE9gB2Ga8LzIwoNjJ0UkpqZk8cBgevlYUIbSnovbUyRletI2Km2PD8L6fNdtzegLvN6FhMqI44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767673434; c=relaxed/simple;
	bh=IHy/vkI5C8RUSGmBcnckTcD68VYfG3Q/q3JBw0les20=;
	h=To:Subject:From:Message-Id:Date; b=FNZAxjYA9Nu12TV3frvkvPYl4M89p+4YCc8VwF3MRZvPsCFz+8qbv8CLGV1Wr6hTfttHF7WbE2umMJMh1p4yxBsyPgfW3ZBs3QQxicf9SWT6c+uh66JX5HFqmO+MmZA2c0z+FgFh53xXru0APIBhQV9XwRUG1fsHQvZhyPUlYWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEdW0mUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEdW0mUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48CAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767673433;
	bh=IHy/vkI5C8RUSGmBcnckTcD68VYfG3Q/q3JBw0les20=;
	h=To:Subject:From:Date:From;
	b=TEdW0mUyD0n5lrsZU8Vvz4LIAT5DG7G0PUVkKwf3E0SLzUO1iiWKIdpFAVXRDTAOH
	 Sm+A028QtcF+XUn4L7E4xVFDA5tjUTslpumc0MlJGnsCbDmfGNf+7htOBw8HHTWhMv
	 F8tZaHukhBqXru1M2dJDp8G9rUnRmGByYJpc7lGKzLjWf+LWDPKGbRzkJQjBEzjHh8
	 9flsjzt1QOEKgZfbtEt1lioGjscq90IvaVa6b+SEXqDcpe+eo21neYnUvGpEgLSpAa
	 wfLB90pv6bHNkaZkgYNwgLgZns1qbOB+ol+4RGQrzkWm6GMkm3reBtxwUrlGRhxUYb
	 eGkkO3RE1ov5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A064ECD0437
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767343364.4473.14907825322887790985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be70d8ffa071738bfb78a518e989e11496b6a7f1b7eb3662c781e1926249966
Date: Tue, 06 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767673433
