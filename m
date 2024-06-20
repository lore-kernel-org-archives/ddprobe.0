Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EAC1A4F3B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718887823; cv=none; b=V7Z1/dCzpC1Ld+7I2ltZTml0HQVYIwFGyQ/0GJLgkkdcoJsZZ3pdJYk1XfDqfJW/5Iwf5z90HLJe0ZzJklqw230Vh/sO/Hk6gPcpOYwIaGSToVzqr+K+TtCPRBzTDgvthH8Pdc4CpHVC/WNeD86agERHf7nMM2AjTEfxQoWvfEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718887823; c=relaxed/simple;
	bh=WTlKkHQN5eLdoXE1BL85j7vmxkKwl7HFpTKw5hgY5OE=;
	h=To:Subject:From:Message-Id:Date; b=rs0o6ldIUjeXiT1FVZjKxiE945b30cO8xpnPt4Na6ebnqDCrmdXYHLb1wt01JekhHYJHTlf3tc6KD9MbduaPrBbPZWNqwFuMrXaoFQqByoqVEM+eiqUVtna48yRinFfy7y1ZDFc8Wml9rvL2Vm0QnAy2jfnWK/GJ836EwOaPgfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlhaZaVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlhaZaVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CC1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718887822;
	bh=WTlKkHQN5eLdoXE1BL85j7vmxkKwl7HFpTKw5hgY5OE=;
	h=To:Subject:From:Date:From;
	b=QlhaZaVzvP6SbEZA6OZNYRzQstBxJN/gG8eryT2nwqAZZnPwIkhcLfuuF3ufwo4+s
	 n1RZVnOm/xDV+LE2OpDlL1iKoY4sBanZmZCln5xpocKul8JgA5oa0bJ+7OEgJn9jf6
	 EvdbmzF4kbYG2GCQeoEqSxjy5hESKzFrxc6FlYSRfDEprGTbEymWPOm6PA/HzDQoAY
	 DrUCczK40hB235uPWYaYnxRcmtopFMQCK6aLbntpvmes0CRP2YwCljHOpEKp6hHiWQ
	 J15/9Cj3NH0ltnb1Pnbulj7K39tMtKOQPVgpx7bnntxkVMsI4FVykdOwbU0XdYP8z3
	 KEN1P+8m0wk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D4EC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888782278.21072.8218077379652805058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77570313b289a8072f8ae3dceb6e835afd37e5dc6bbabf9dd840ad89cdbb86f5
Date: Thu, 20 Jun 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718887822
