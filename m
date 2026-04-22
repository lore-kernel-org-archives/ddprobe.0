Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D77342173
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776901053; cv=none; b=jkdp5CdlMV8Lhx1HW1oxj3ST6TgMd/812NCXnlxFlXj7fYSPiMzxBTESI08V0pEfViM5ObbqhFYIMzKPWlrQ6udo9m0AjfsJQii4F3NnhHJas5qgR4UgXAq/RN7UJKDIh2/UtlDAexTBxmolp3fCFCGDo89YybT9eTA+YaYU1Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776901053; c=relaxed/simple;
	bh=XDBamEmCwXXqBvanWkRMycg4ZlR1kOF4PHpAYvdxscA=;
	h=To:Subject:From:Message-Id:Date; b=AdPT35gXXEu5zEV2st/KZ0WjLr37C8XfxYOvjCRmyIpzSeL/MXwQ+p71EWqq3e5MSzEkIg274cTBVSY1kpEwgQgs+Nzxr33DT1auCROaj6NKKesc8yf1MIoeUk/iCQMMFdfu91cVPy4+OTyQA9h2gwlZ1nzbzUK3l5rmuURA0Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uik336zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uik336zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9355C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776901053;
	bh=XDBamEmCwXXqBvanWkRMycg4ZlR1kOF4PHpAYvdxscA=;
	h=To:Subject:From:Date:From;
	b=uik336zPTo4TlgbBiWOgREEHBgaYnmCxYYgwcyQIk9P/0DhITAuK//wLFW5kB6lwL
	 gMEOf9kBJaxxawtI1KmpXJ0r5BqayF9sn0X/ghH3w8ZlMWVr82A6Td1K6AjXqhlC8P
	 1cckNe8ZX3aPVxPcn9JwhMEQaGCYUxFIw5fweu5qMPyQ40RTD4PFPHsyRrz0Ep1zPp
	 mqtqfjpive/DqiP2roI0Aa0kPK8oLas/zGV+g2E0RYdNr9UysNK4zEJt870f4UVxNW
	 i8If7Ec1r6NOsBJCZepWQyX8EViKFs5R26vD4j3LfIcqtngFTjPQH0o3HGL5P4ENig
	 xAeNr2MMiHGlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABCEFAD3E2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690105369.22591.277304654619905651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7d55a375fc32a7fa59076d4f5205631dc8892fe747c316e78603ed2a01d116
Date: Wed, 22 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776901053
