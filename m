Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425CD2F8BEE
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790745034; cv=none; b=PzKOrwrRm6KHvdDocpw4eLjtdjTkJtfWXmN72aNOqCPGOOY/IFFOLYE29AG/aCN10etkJCOfgSfx7iYmej9JUYsyFWxIBlfx1rgS+frwgI7iECTwFyqmJQSphNbRYIv9/9VGlthk1Zhz/tTVD9szcmoiVUQtGgeg0Oooqy+Wx7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790745034; c=relaxed/simple;
	bh=8mThSYzaW9vg/7I7JKVrryVBpDx6fb6HfcfaMqM4+VM=;
	h=To:Subject:From:Message-Id:Date; b=UvcO6NVxSkgElrD0yj0bF85vueGq3ocUP5lU+41JFDrGaPPZyXBCdTJgqgCKit+WWEUVNkbciuUkuDI1Q2SMsL9BesGORxFVxmvfHwp2URYaA8Sp0DexD1OqUIzsaC7K2hUfcezo1UX242+iGe+h+xMKE8rNauNGc/ZjTWcqRDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF6Gqp1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF6Gqp1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC37AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790745033;
	bh=8mThSYzaW9vg/7I7JKVrryVBpDx6fb6HfcfaMqM4+VM=;
	h=To:Subject:From:Date:From;
	b=HF6Gqp1/A9yw8or0C7yeeNxx26sZFz0f6yFhjk867RHyQX2I3JFvW61NQKCuhwsau
	 0QY1tlG5llCFCy3CM6en1v+5BOLxysK7pPFR92E5lZojx3f5J4YKtdQauuMt4ZB7eS
	 jR51qek+XQUwHK5GcfWd985YbXe+FC/A53zP4XjOu/y3f/7OpiQJBcZLMrzQ3GhDC8
	 re5fEfn2kGznWr9DPl+Adps01fU0PsVznSRcrG01nc/hpSdCBenvkL6vOEubdG6h+d
	 NAmaTv2NfbIgw06DFnH/chXM8bAAYGOZ1znlmxE5cHH+JoQsmUEjWFGBvQL9C42YZ0
	 7cJnX9zS/l+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9261CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074503368.23328.15229832626664315961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56a63ea4809f4ea5a3f5713dfd5a76ed90aa532adb8e19cfde3f7dc1c113bd4
Date: Wed, 30 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790745033
