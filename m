Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502934DEC36
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790609434; cv=none; b=Q8Xovx+VVZfsl5y1vmAEqhLtzEegc5K3NeZurbMUxouDw99McJruREcVkCZt347wWok0/G4d1qD4bikcAc98Zwsi40tbnW+7qmLJmau0oHCGTex89Lvij/J0EzRHBuIhjjs3mhkId7m0kJ19mrc+i2TUoCYXA72RqBNpjICW3BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790609434; c=relaxed/simple;
	bh=5mdQ10HLGEL2tGaeOq46Q+8cURU0d/6OtYhTXvMY91U=;
	h=To:Subject:From:Message-Id:Date; b=NzCI/nFXOzL/7Oe8XfE8snZWjG3fdl/QALRCA/9s7AqlTVfXoeQI5aOX+uOuAzxvqs7VibTVsxnVA0fYNDp+h8vlZhBoMDrsnZFmbyeYVKUa0YRU0WqKITjm4/XrCZFek0nvCPxB0PIGqMGe2UbbLjhbSXULCHZXw9QYPZe7HkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItE0ClFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItE0ClFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECB4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790609433;
	bh=5mdQ10HLGEL2tGaeOq46Q+8cURU0d/6OtYhTXvMY91U=;
	h=To:Subject:From:Date:From;
	b=ItE0ClFgN8Sdrm/xGcatiwi/E0XeuFXvkkZ0rGzaYgQHxgRAK0uwR0WBIOmb9YIFU
	 9GPZUKZ+3s2cfp0nMFKQjL/blyItk1pK9YaoJQLSOSXkJ1kEus/KO0oz4p6KoWuqTt
	 n1SQxAtAC3w5Odm2Zt5qiYag+MAk142p2Ucyz1b1JAnCUAxJnniD5U/B3ZdcteN+FW
	 r/CDIuclbZHTfTivKdWmgpLZ068WrNjs9gJXBpotZgs4UKpl7vKiwcEG3z6G7W8oRB
	 HVqrymrijb33MD1VYUpRkVGJw04X3afBYlnhpIUZQzEvyQbXbFI8j8g/GGhbuEhoEh
	 y5Vlr61LA6+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9730CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060943368.25524.10591722628532559299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e611e3eb132918e0c12f3063298d342c6f963f933fa10de7c2fd8699d7b310
Date: Mon, 28 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790609433
