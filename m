Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E6B31E846
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786732834; cv=none; b=V4VQmpA77+rjfCBKaWtnu/WjXnV7Or5/NKSeXIIhnS+Puh/Iborpy09NWdYlrM2m0C029FmQWkH9+nwQ3HNnmV2J/AV48huH8zT8epBQhYSUVUbgQtdAprL9uQkRwySFMHbOblNLp1AZ+oVZzEzQ5nr/c/guQo8LkFxr5yPZH/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786732834; c=relaxed/simple;
	bh=jadH3ZjFSehb+AtqqPkt+aeDegPHwyXNpe/wZ2HKxZY=;
	h=To:Subject:From:Message-Id:Date; b=oGAAytfSX5cB9rNL5E6K2KGMIkSxwCFSRxxlnFmr2zAePKcciwzhjdguDkaCOvZwcwG7KBbvxNXAYMJZnRwQ/UPmwkCBO2xXRNIyRT+POA94hIKwuO0bydEUUCHI4anZzCQGnhVqIA1ysCzkxPcwHGyM9Q54N4pnOkGy7w1EW2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq30sLDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq30sLDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF5BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786732833;
	bh=jadH3ZjFSehb+AtqqPkt+aeDegPHwyXNpe/wZ2HKxZY=;
	h=To:Subject:From:Date:From;
	b=Lq30sLDEtcM+MNbfYdoASjp7xSkDSEZMcCzrWOKuyLV7Tu2kQp7DbrgM0G32Wuuzh
	 TnFPjnNpus1IVpf4/ERuJP2c8NCgQPM96ungwUnqwHSoZbGYBvUnah/1o4R/lt0JHG
	 izkFPdeW1d5VfVQyZQ7I0L9jpwn8AiGopyAiT/vo5QhJtYWdQ+ceUr8ghLRbsMZnbm
	 DuA9T57f/DRKsrqLbheptMpASfOQbYr0DqNRGuL+kk2Pl8XZqpS9Qfpo9DAieIqYEH
	 RO/c5dq2g2OvqqatpyRhQ+jcSn77BvcS2X5L/6tiUeqG9VpPQ/vdx22QhN3tlQkqap
	 +EecgoqBvmp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A2C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673283368.18993.12509909267365078971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67567b887cc867ed87af29fc116f7365410322b56b978482b8c0d708dc13e3c6
Date: Fri, 14 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786732833
