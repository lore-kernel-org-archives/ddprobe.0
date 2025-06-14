Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F6B2E11A3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749869394; cv=none; b=TxcZXB74P9Ee6YvW8bHix2bc+0eRirJfZkKzAMbh5jySIqDDbmJcyJnpEgaoQStE66FEhruWaiMdKyxpE75d4K5wCyFJ0qXwIzbSrnsvWLinlD+dZANepA/mvJQVyV+zHc0eKsEhLtbu0r/AUGuawoR5rOE55yNi8Zp3kclvBL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749869394; c=relaxed/simple;
	bh=q0FjRBpi46sBqlyO+MA5kaAQnRJeBVbX4VCOQHePrJA=;
	h=To:Subject:From:Message-Id:Date; b=Kuk3xRWBnjScDzx/8NKjbgVNmUiWLyRbKHJw8c07Iy+VgOtGL8w4nHB8FjrFmb57dfpuFm/eltNJYaeJMV5cSgmiFUX7MQtvX/Lc0uA+eqmbNLlPhC0/wZpNTrOqhWP/S7YHAn/IHmX2MwsZIox5FLbz/yWRtzLI0rjxxNqYiKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvZaVrCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvZaVrCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749869393;
	bh=q0FjRBpi46sBqlyO+MA5kaAQnRJeBVbX4VCOQHePrJA=;
	h=To:Subject:From:Date:From;
	b=VvZaVrCBAo4IVkba16ds0xp4WN/J9kmQoujGgJljhQwX0wv2C8byjDFRjFZst4CPu
	 3m3G+w/t6nTfO5II6ZQMrTyLZRKueKjQd/wSa99gMr39blnhxrP+faUSbpvwYLMjQf
	 QyYwwiqUwQDDDYHRwy1U0tnfpliP4saHffLXL+t1+htougxdGsWyFm2UpU2vKepGtX
	 oF3/T/h1Ddh3Ncxe2IQAGSRPm5yPrGuYIYEtkcqVGLHf5Vv4OelEZ+hcgr6HYZjea+
	 sD6IzTXZkyCq3bGC3E+fID4Ob1+TXkeI+bJA7VxovCwQ8bOeKvDnH+ObzyFl5kZnv1
	 HYAjylRZ1UagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E07CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986939357.2299.17579196177420245408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b585eecf082ab9f1c02a2dee8a06a74065f4539dcff09af27d077e1d1aadf4a1
Date: Sat, 14 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749869393
