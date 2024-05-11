Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA445466C
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715421743; cv=none; b=dKWDr2plxhDCK+si+sOvgWr2mJn3JLqpJkJg2PbvD7HeKy3ZTAyDA+nKqo1VQsfezn+hHUKCWOU43FNHJhX153acjxAUUfGnEkjQtiLAumtLd4lmFOJzNoHbhFERqvlIAcgqFBaSBpwWaRr2MtjBWfVdI9+Fi52rz2+rPLXIUPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715421743; c=relaxed/simple;
	bh=H+cefXP5nOxfU3fI1RX6kFBxlQaVcEDlo5uZvg+T2vc=;
	h=To:Subject:From:Message-Id:Date; b=YTInmnZJ9pxIeIPgeztI8FsB90dAbx7/1E6ATXjKuXaIpxDRI+/I0FOHW+E32t2lVNxoGXgPkqjuOaOlCSVAhKzgOtf2SnIC47t7No936Q/BJpEOFxa9LrpevvrzFvHjtg2/bhmxDoBa4XKzr0TQ98o4ut6JbeCGCwyi5LwzHyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfC/nxD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfC/nxD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D090EC32783
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715421742;
	bh=H+cefXP5nOxfU3fI1RX6kFBxlQaVcEDlo5uZvg+T2vc=;
	h=To:Subject:From:Date:From;
	b=pfC/nxD8B1WjLiqA/X0SzqGT19LU7sLcoLqv2lpL3yG28KfWmtvpXtAMt7yJp+HsG
	 9CmFE74e9sRAREpI+8Gohb8vfPWF5/l75a/EeqDT2vHOaxIoqy+s6eJ3orhiKHm+Kh
	 3kPJOvYADKY3zWWDtb4x7//GEYPRl6Vg9/ETCZ/UavcDn+eqWv9nEsbEsV2/BQP9S5
	 v6VK3yOpGs+WNh0CRQ+81JLetffy/0fckXHDBOW1KnnVGm27CnB5tBFY+l42zCHXp8
	 STfzYY1E1Ilmt/B2CJVs53VaIadCbgl41+xhrVvtnGliKxzxDjGstIjo/DlUtgshVT
	 02bBFUgCZIApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D1C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542174276.16673.5350323065184779298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c87f26430c295083638f34dacba537fde5836d8e3fb74fd843a2ba5f02fce11
Date: Sat, 11 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715421742
