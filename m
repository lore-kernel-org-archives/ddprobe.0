Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F42B3EBF00
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769312034; cv=none; b=awJ5LUG6bIgP6xQQeclVZlVFDgNfmrJu+Y7H4QYxygj3WfbXl4ALvMWKugmLSeEHIZTOO12WOBbTj5WAbi13ZP5l/pomK4TsupzspFFm6p92UZlgHviQuBZKe/SLKI/SeH3OEY+XGV6pfa9wpZJ+NXqhg0yxntu0ZZSpcaPNNZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769312034; c=relaxed/simple;
	bh=NmFR6oFaCL2yIFWlcIkD8dccXgYQ+mhU2HGMtA1h8GM=;
	h=To:Subject:From:Message-Id:Date; b=B7oP5WFl1FwjJJmIOE9GxKocs/xbZkdQvEteODqN9zPz3gN9YV1b7GUDzoPmWyKP5YSNSZrxmqirJCBuMzgBocuDfSlm25ytzsInoXyppNohzNe3aedBqA88Rpwxsejqt3UozjLLk14MwOzmk5mLhaE+K1ERe74zOo4iBhEyJvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwUtcNqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwUtcNqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1734C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769312033;
	bh=NmFR6oFaCL2yIFWlcIkD8dccXgYQ+mhU2HGMtA1h8GM=;
	h=To:Subject:From:Date:From;
	b=kwUtcNqpeWLj60R/a/xb2ZiZdK0f86RuGlBfSEMCXsLzyS0QVMgpT3tjaGNE6JQq+
	 1+YG0AjbwUu3tIy5ByO0oz09aIJfwUuvSjE4XwObvhK6dwXPmfZbIlcyHRQqeC0em8
	 s3zrfoNqvOfg0HYORyFJRM9fMlNqWfTAdR505RqUb1pHBTNOfuzg/iYxEllPAcwqI1
	 HnDZ7q5tDSSmXjYUovatuL/RqpIunTFlP1ijKS77Qy6Dy197soOf5/OjbLYBtRuG17
	 SMcxmqrZJzLtR1vD/zwA+yPkLiFkmcgHyM1bL+bdAHomrvF74gDvNoiEr5ytGFczgu
	 uQeuLF8ltGOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ED0E63C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931203357.4647.13430684706109899609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5605e941010a79d4b6ed2ee9515118e6ccfa0e18dd4fb171caade1bf2e714afd
Date: Sun, 25 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769312033
