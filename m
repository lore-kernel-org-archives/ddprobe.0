Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7A93D3B3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769971434; cv=none; b=adevoMGC9oq+3CstZ8pvhbc0ciIHrbeMd1vEeM4f21vzZQ18oi71KZ11c0Plio2q/sazHpy594lY89x9MvtP7tz5iKm6eQvgU9q2P5WJhfCEmsY7SHyD4evpcRVWDCtLeJBkac02XJzKW/tq9xjMGCKxO7dPBkeJeA3xsPBLQO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769971434; c=relaxed/simple;
	bh=o6WDrkkuum9hnvDh9jD9k42knfhUqXbMV90hbTTFdrc=;
	h=To:Subject:From:Message-Id:Date; b=q9iSdSEQCrQNWL/Iii0cqMhsb7g/kNbSRvg3n2Vl/qluGpK9p0lQL1RqsyE2Pqhi4IOkPLvMHrNrjSG9uvbhfowlNC72ljUv+lAGl3KI1k1td+uFG6zSQfLqA6WQdaIibZ/bJOFQem72IqSFKfYKBf0pGyroH7oV36jm8fTbFz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzSppawo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzSppawo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD10FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769971433;
	bh=o6WDrkkuum9hnvDh9jD9k42knfhUqXbMV90hbTTFdrc=;
	h=To:Subject:From:Date:From;
	b=AzSppawoQerQ4ZJk22Uu+wEXxw02ccHXovPP8TVg/AwTvR5p1xOd+fLVNgO3I0xS6
	 5sm7sSPHWrFLe62b0yB8ecxvmlysVP3b/aRAmRi/WBbT6COaAJK8P4efCqQS63daJN
	 WxVAE88W7OalRYOkeM8eZknDwwp5x2aZPRL6PLxdPlvFyVlqVmpVzFel66S5ZCav6n
	 QJKFXglqKKnUUcluoB8p1Hu7GURCFoSzHiRxaEK4+NgPUMZWNUKDUQUZHfzQDVDfqd
	 DeoOYcFV/wwXijR8suKg1jpQ3xm+hKZJpbFQjl/CuwuugJ6ld34U8wpJgm9dhy0htW
	 qZ+8/o7YWMgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7CE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997143358.25564.4983475657378337389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf4dc8f427dafa8d983c16f004e1286ade6d6dc7e115e662056b1a6612042e9
Date: Sun, 01 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769971433
