Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E1A30FC12
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765527774; cv=none; b=in5ALDmpkS9ac5NKFeRP3q2j1rxP+wdEBC4L518EeZjyEKcfllXbEqpY4xvSM1wG1I2Ch0sHc2g+SUjoCx6f7pqQL636vU37ICS1EFXv0XhmcyvYemlQxYqT9BwxSCWjqARyCcGciFzbmg0Oir4aW6J3btLzcwfSg9lqJ7GqAss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765527774; c=relaxed/simple;
	bh=D9oWCWhVemnmtMBN1VFvieol+M86afo7jZC9D0g82Jw=;
	h=To:Subject:From:Message-Id:Date; b=njTrHJEP0KtDZtfxk2DEcKdwk29ZB/yhV4H1dAGCZTVluBQ9GRZmBKkK/9yOiSZUGgKku7foZB7mzvwPDHTGEE8usI9/Vcsl0hOy4SI5tF1rGh2jLCrJk5rmYKS5CNsC2TNtr1Rh/bzPmdS9sksoZHL65PUw+WHQWrrf+KJgcXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbZzMoiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbZzMoiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765527773;
	bh=D9oWCWhVemnmtMBN1VFvieol+M86afo7jZC9D0g82Jw=;
	h=To:Subject:From:Date:From;
	b=VbZzMoiUGA6gxNivMcQCW+vpDTMnI6qwBxkTeyccoxdgKsKEWN/kTBEEDDttDSd+I
	 otIsUiK+6kjY+KVj6w3rmJ6OqMuIksw/Rb6y/6nSaxlsFACsnlrwpLLXzbvYVE3OOO
	 48iz4APLJ5NE/Tp0AX2zohIAkWf5uPagBO0UbY5vsAdLxETbkBdGOu9LmDzTxu7LDc
	 muyUNBqLKeLyzdFOFJ0XJ2EalRQMGGYrcTcEHWiD9hWIBvlV3lR5ZbmiZqMQmB0T5W
	 GxJ5fjkdehiO4yv0ubbmnpz3W6/9aCaDjOK0r9EZsQRySx4p1dcs9DGeliREXzpqnz
	 1rsimxZaE3c7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DED44145
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552777358.13049.18210561466479557809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57743c2ac833323420ab47a52cc3b77c0ac0b6d20fe72dd2c6334cfafde22a9
Date: Fri, 12 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765527773
