Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD8D17C77
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765894434; cv=none; b=miI9oBkkFiaRuNziCYsj7YdIdWpf3LjdFm+sTu3wFmOK3x2x7/Szu16TBNdzQyUdt4ggXh2SoOq5e2D2OkynyqpX8IiMR4wVZqww5Hz4LNU1ywpK5e139JjVnpzutvCwOoNM5f+euGNrnUauKXS2o8WgGA7D3V94b3JqQFCiKV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765894434; c=relaxed/simple;
	bh=KRao1wfRc2B5Vh3N1/UJqHs5Bi0rvuHxa5/ABjG7VIs=;
	h=To:Subject:From:Message-Id:Date; b=QgC7xpEQuJTD0F/aWvUZC9ZW5oYO1kIH3woFKUlTWCjeU467OwjkYsckIJRA9DP9kbBZl0b0+AHa4tkhUwrPNRA56nw/S84zQM+kWPqefhUX+O9GR3CGE8H7NbT7VZqgzanhpmYvSZRL+Z4dGyYqMbCPZ7GJZj4aWRIsOrTNkmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckp5R18C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckp5R18C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765894433;
	bh=KRao1wfRc2B5Vh3N1/UJqHs5Bi0rvuHxa5/ABjG7VIs=;
	h=To:Subject:From:Date:From;
	b=ckp5R18CSYp5hWIArnLC5PpDVhvBEY+9NzpLuHLKRRiFUgX08jXYCmW6T/sQYAVQE
	 yra4KcR1ENFdma1oMsk21S55gkUcToBbwbB2QC3yFoSPUeqyVkID1FjLvwgkT8SeTV
	 vS84QXsiaA1OJDqOQIyHJ5dpkBsbEeKtTCaTajPwy79bE1j+C5d3e8iW9oKUpaUcvt
	 DUyOxJHtpjteur7ePOVbRFVO56BOfcERoT5T5tOu26JwC2HzegiTBY/RsgAL24ZH9U
	 Nc5tKv37UTpFECNCUqW8GDpfFZQFfmPZO/voXIcpLnvuR27zlY8aaGIfWEMw8i2COl
	 IhRDX4nWLoM6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91384D5E370
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589443358.8109.15763165347650634299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7a22f7063ab3bacab3a67d57e6f421278165d634568f809d80aeff41bce92f
Date: Tue, 16 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765894433
