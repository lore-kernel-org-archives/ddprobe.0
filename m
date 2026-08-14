Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E546EF74
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786711834; cv=none; b=QrdI4UQPLcUeFufL62oLiomHvb+Jpps51lKNTwhQXZA39zVaKNVWjNjtwMmzh1h27cxrHcawUNkR6hbXkzliEEHK3jwZwDnM4/vPg5guCPbMAwqOz10eeGr2n47md3Ahss2seWWI9Di5vL32NvDjJ3GQNTWNm8rCIt8IwuU30Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786711834; c=relaxed/simple;
	bh=McJ59Jf/NWsfiwvR8a8zXGpAwjA0RJ1Q2iFVDS+4kkw=;
	h=To:Subject:From:Message-Id:Date; b=uErlmS9FQfwPLJGsB0PmuqlFrsJ2lyMRDe15TqJbDuvqYFtQqASisBYcpMT1Il4BoBXDzsBiQFIvme5UfpyE9l+Y2hhA9hSWPA0nF8I9Ik7DQycivQbAFGvbUHEv5oiqDh0D37PiaMpIWZtTmmOtddwEGqgx9upjvyoy9g8ekv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2gbI5tG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2gbI5tG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1921C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786711833;
	bh=McJ59Jf/NWsfiwvR8a8zXGpAwjA0RJ1Q2iFVDS+4kkw=;
	h=To:Subject:From:Date:From;
	b=M2gbI5tGgwa2Na1LrJ1T6eK5/ZDF9kAAdE6bqor3i0tKs9WaseVGwNFKBpKffcmrh
	 yNwEghr0qPE1/UQSMbP7nveWuCoV/P6EL/ea3BB0KAv60Gd3YfjyHe84jlD4sbEMwo
	 OQ5AFEXu03V3X+hjGQiIaMgvL+BgjvMXrfGJUAqfBTOGlVjW+k605a0HJiBjqYNcjL
	 JBc2JIaUwXFi7CS4zkkv/Y7MFZpT5CH6fCY4QoWMp0DP6Z1CHewcW7wO3zWYPMfV5D
	 kvWLr4rdUCwKF0qKsCAl20aaVnMRxBmzAz7YUr2t+d2bWPz1dBSaJUz1ebZIsZbw6y
	 LQyVSnWZ8wKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6AC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671183368.17830.17614495959538159685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320b8b08852e40b7d883317e5bf8dd4e413f1dd8a7e71b10e3000261d94e7570
Date: Fri, 14 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786711833
