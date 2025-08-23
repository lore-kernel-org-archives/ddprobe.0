Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231552288C6
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755960594; cv=none; b=XJYzuzArcRTt06DlnmRnJfXQfoVLbFivBvsDAGmEOGVZeiIN4C3PxSS/SYiMnHW2hQ872lzBf/Q3Uz5CtqdQTjBGmGNtL4di8rSCQ1KutQlbRvV0uMsvJC8gdsWA+RMh+6zWqKPYvMqsOpYtJ4BDZycXJjf4+00ZmibktfYxDzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755960594; c=relaxed/simple;
	bh=45AR2smONxfZPd/XofBUZbS75FfjRg81Mvyk7O/ZE8I=;
	h=To:Subject:From:Message-Id:Date; b=iuocmiM0KYw5kHemDKrgpMKwgoRQzY0ZT0tUeyRqctnzH7X/tY/fj8tviXCYhgLr61HAnmfvagxHGuxCN1GoeUeXJnGqT3HjIZeXZfl81zGs8mtmwMVdP2vVl7HNBITnF+YiRIMGe/XtkKKK4SnMNQJb4A0SCSlr86KmJ0JcLY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/3tsP18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/3tsP18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3891C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755960593;
	bh=45AR2smONxfZPd/XofBUZbS75FfjRg81Mvyk7O/ZE8I=;
	h=To:Subject:From:Date:From;
	b=N/3tsP18IJXaeKkxn3HPYeII+4nOUynfZAUEqHXGZtsquJ+Q6wziSuTEQ1EbxN+z/
	 4zR6wWOR195D0XB/L1G1U9NuuPDDl416JYqGBjNxgM/5VnddgQ3/BccJEw5MElvc3N
	 35JfWDgEjNl3WQvCTYBtR68VwdRQEHI2lVeoeeuKg6qxCh7K8V5RywP7QrQm8udPuJ
	 5L+HcItluGOIqO791xkaONNmTTUuuSVQKaw9e7Ow9Py5iEv3RfxuGfPkv7dENqPUTY
	 xGM2PbBSEKzYB7sVkQTtN2VzXD0jHN0DZxsHdfSstbQD1jNgK8Ur5c20EM076sqAVi
	 51XRjZbXag5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F3DCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596059357.31681.3762951631391083302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcb5405956fdbd08ea1f19059567fbf4ebd8a677cf93dbe877cd03de77bacd2
Date: Sat, 23 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755960593
