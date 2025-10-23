Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A272BE7BB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761203994; cv=none; b=JkDgcAffazUuyJxeJQyVyegKtgeHaDCBXLEaRkW3hBzmiI4VZQdfGv91y2eq8S+sYRUxolUj2Hqm71U+l68WjMYS62weHAd+OmULeqCQViiOeWEX84XkCOobJqnV71+hKYG+UEddykn+2QV+bztDxTVYiJt+2gpCGIP+//5ekb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761203994; c=relaxed/simple;
	bh=Ak2bIPJW8PWF4BDiI2nqie8D5RLoMKzepuK5rJ4U1/w=;
	h=To:Subject:From:Message-Id:Date; b=KXw2mOGDB8+iZ1xSUNNUdlHvuG0O6bnFblnfyxMLSUC3PHGzHSG9L4yw3nrBI/QtgdZgPPVNP3wNNpiHEVfwrrrOtS+aeMY60swDD1tzQpGqTD/KD8l2jGzIAz6iXl27x7WirSyFKMXJ43KXhFtkiqL7TgE9x+mrhO2Y3M/ocjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODTlzV4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODTlzV4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0682C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761203993;
	bh=Ak2bIPJW8PWF4BDiI2nqie8D5RLoMKzepuK5rJ4U1/w=;
	h=To:Subject:From:Date:From;
	b=ODTlzV4N55ltMIh3t+BdxcfYzfXCgPjdQ+Bm4xp41ZIhyp1KyC3zsZEsz3Tq7+1QP
	 TSRdTmY/sJOt+GRo4w1xgnpVqCOTwgESV7qXSjt9yvXeYQYcScCYKgqg7ULSH0d0M3
	 xLX3hIEvXZnJHwJHQImew+mqmRP0rqPyuDDVmDpaAq/CROZUl0Q8rXhsy96dD73TL5
	 7AZ3MmzSPZI0GL8z93qbAq2SSPeuDELDgQqGIX7zi19W7zob+PYy5um2mfNyeCcPhq
	 mH1MYBYy0/vADfO1qsaZEP7K56f5U6Y1CE8JXkSubzx5R8jhRZAi3SeBCU3RwS8pFF
	 ejw+TK2SNSLVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379BCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120399359.25319.2352258233216333203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e78fc7b18ecdb627ab21f18e8ccd3f50b1c8662b54c92a2ce129860cbab966b
Date: Thu, 23 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761203993
