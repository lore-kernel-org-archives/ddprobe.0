Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C241212FA0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738832154; cv=none; b=fwoUsi1WtwsUjorNaDP3R3R1HlpG+NS0PBpG88/xba2eokpKHbu0xk4wF3rQsKbEjzTXthPhpl5a/v9D3mCRIdMwZ0vGTsKRigIj2bLAFNsdZRorTsO/s4iypWrDCK9PyF9vISgz4NWafV4eBdoEdDjcqPDZR9zkNoVNvIJdBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738832154; c=relaxed/simple;
	bh=e501t7FCYTnmqid5WKPMg5ln95Oyph3DMb9w5qqZrQE=;
	h=To:Subject:From:Message-Id:Date; b=J4BMjnJNraKhymvPxrH7/tFLj42KFmRloMgp4P/HReSy0AVmzYKni7A3izzucX7QEQzPwwxnIssTwuascnxEzhv3Y0mKkCTZavte8xPdewiAVI880rd26+x/PrpKuFwCRejpSckHuEYPlvP/jcDNh20MKNLYGCMkfyd0N8Yam1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty9v5XCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty9v5XCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D05C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738832153;
	bh=e501t7FCYTnmqid5WKPMg5ln95Oyph3DMb9w5qqZrQE=;
	h=To:Subject:From:Date:From;
	b=Ty9v5XCC8HT+uglkw0fqTZgegQ8xmyUsmR0VK6ReqT+SByRTPJ0rKt24V45yBH7gS
	 FP44po9CwZ1738B+KOld/gxx49CgC4gnx0PelcolW2IdQ8E7FjnXnEjLqR0jwYUbcs
	 qilTtOS2Ng9ViTRh55EHJbYDEk4jSFwXKqqBB6ri5PXpc+TluKYn1ppvUGl+efc1bq
	 r9CkKhUi3Ufc1Pi6SyH9yOxfG+uIUl3a9hQ7yhXVCvdh2MpfMT5WccQbqMoOIjiwrN
	 TBqSfr1WkVBlyqucxisQiyNKsF9GHQY+AnoLXsK1HiWTNyhy4K85Vx7T+QwEitjfdW
	 Wv+E0p+RW2FcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99419C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883215361.13912.15187332450200006449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c5054f1db5f86c15140e64ebc8cc2071f572daec9dd8b8a8a056bbf723f87a
Date: Thu, 06 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738832153
