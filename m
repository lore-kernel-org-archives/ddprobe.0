Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F62A220F3B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750339194; cv=none; b=QI5UTp4LUZm2Og1kGQqi06S1InUHRT1jdG0Z9HAWLe4Nyv+UEHEm4BnTk7JlLtAc8wih4jOfDqryJnzBgJ3hQzfC1QTeoVQ8U5HQStvRAw5BDirWQxVrXFPhbEdp9asY4SNHYgxFxDx7zRFOr428F9yImexTPmF8u1qgrwWowa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750339194; c=relaxed/simple;
	bh=SO6eEzf93Xxk8pOK2SEMyDYURMnXEVTcnz2WTICyJ/A=;
	h=To:Subject:From:Message-Id:Date; b=MD+Wsvv2CNq4UlOcv+iHzKx8ha0NcHR5n00jN3SlCoJP0hAcVtShjZXQ7GICT1QtSU5tg14a1nsvd9tV2w4pAd6UdhEeR7e8C49nQiv6/Puzia0JSryZV3sOC52P5+TK0c8S1XBBzjTS/VCXH9Q2mhG+JjLF1r7p2cYLHphSzZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKxFZkbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKxFZkbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C69C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750339193;
	bh=SO6eEzf93Xxk8pOK2SEMyDYURMnXEVTcnz2WTICyJ/A=;
	h=To:Subject:From:Date:From;
	b=iKxFZkbl40/GUNEqWNakDwwiGi8+8LH/vpqOmAb9K2PLNiU1afm3eK+Ud77mi0+zN
	 Pw5IaRbvmuRCCsIhomO+zSQZUiGvZ+JK9Gsd++8fVRU6Niu82qzdWNAU2tDoCxiDlj
	 IfQHO9/tmtMiJvWm/DLbTIZOjFAr73V14xVzPfuVTgNt5QS3AUVH8VCVrBWQ6+ucRV
	 JyHAKU5tTgQMoXgI67knwuTYzjXFMZ6QNUg31axT39JfvfbyQ7mZNhz0n8fgLtCoLh
	 lAccFMgt7/V3cwyGaTUrM5TC0DNW7ed0vHJKs+5PNWCxp7t1hnuDMmQfVvjZu+HCPh
	 QVjshSTC4+I0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D6C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033919358.20828.1330519565642151935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4331a25c614a069a82bda3129223dd4f6a769281770e581b56f728ff4c52a4bf
Date: Thu, 19 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750339193
