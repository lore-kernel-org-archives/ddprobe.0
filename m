Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41456351C2E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775673334; cv=none; b=demRqyL1NdeT2cAUVMYCzpA0R8NMEF3yAwP7FUP99yeoTsHZ2NMwn52l6ne/A0bweh9HgVEvE6Yg9tEWN48IVCKdqAVnywO26TU2Oq5r/Q49djwkCwggT8dEbTZm6D7PaoMSSytYUErL0MW3rNgGlO4omVuU0/KudwQLyO4TxX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775673334; c=relaxed/simple;
	bh=fbpVhcmrgfYuRt4abl1cmsCg8T12pW9LB/ks7R0vRdw=;
	h=To:Subject:From:Message-Id:Date; b=s3SvrvJTyx9WsDZjpG/kmi9lBGNZXjpkW/dJNc5+I4YnH4yVXh9UUQglh8aovrogVzr4ba/hQL0AiYc4y730a6IyibVea+n6dLeTXPbUP8k/6JGS+LU/HxKQu1xLl0JhCzawht5sQnecoYqk3zGrEDxQWUjfDePtYBD32XDh/zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvTtg3XP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvTtg3XP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1101C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775673333;
	bh=fbpVhcmrgfYuRt4abl1cmsCg8T12pW9LB/ks7R0vRdw=;
	h=To:Subject:From:Date:From;
	b=NvTtg3XP+GrjWofrZFDfc6Im/LhIsaOaw5UM2UqSbaPdLkKfF3lrkVO3AjdVeanuk
	 2JQRmYkdt0Cijc5u0dvZMfBAwkDkh7OHm2mCe8pHT5EmqTTBZtJk68NBIH4PAm7XSU
	 ftEa8kl1k904ho60Jq4XZ+IgSmFk3q6IrTnGefb5q1m++95E/nOkikrDax5wl5nOLw
	 7fcQNJaG1mCWWsfqFcC/GIeAzZXfav/jk6lUFBfF1w8WaYQjIVWadSXuI1RmdlLbfX
	 dYhumRv3Ki7S9kDHHf7cNPdixYE7eLEjrZdYOQhcUNK+mz0ntMiHXakXRDcaeMoEG6
	 HVEAI4AlM3+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117710F996B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567333371.13543.12184352832495661064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0877f0cd67bf69dd338de444abf87da8925198819ee5079cd79a0b72a4aad82c
Date: Wed, 08 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775673333
