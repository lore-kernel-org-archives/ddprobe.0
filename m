Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4596FC6
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717877243; cv=none; b=X0RBCbsLhU/cMv/YIElDXDWAMTIFjYa11cPul98cMHGrylc0loak4FUD8KKUaQ+VR4G8CZW8gAan6XFJy2bWIKVRppJRV7u/n3Wm52M+lE35WHTyAS+/BcPp46odNPylXzFTl3zsOVe4Mek3hT+k4msFjyh/PuBzUx7bp5alTzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717877243; c=relaxed/simple;
	bh=x6Z/qUrqHDqejAF1l3pJHhX5DQOwO/h7N+onTv3DHvM=;
	h=To:Subject:From:Message-Id:Date; b=IbkBWuwn4njiNz8t0p5Lt14mojxmkG4WJ2Y2TksaStrQkizLvTNdDjqwBtBEFKgTwzXpH2OahXInL2Mpo02dZSl4e1XRPkc1hKnizI4YDab8v3xIYLWEp3SDNiZ13xinMhf8fXlwCdf6uZHB7PWBCQiBqvT1O570YAo0t6QKAiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fl8wiAVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl8wiAVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC76BC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717877243;
	bh=x6Z/qUrqHDqejAF1l3pJHhX5DQOwO/h7N+onTv3DHvM=;
	h=To:Subject:From:Date:From;
	b=fl8wiAVBEfvi82NXTZ0f/GiTx0Ys8TCutvvN3vpR8fRo/c3EGpLM8uC+AlD36HCWr
	 u7x2CJ15ksLpRyxQTD/0uQCGxwHKylpspHv8ygeeTExhtX8xrN/j8+9z0lFyOATVhi
	 caMXaO3ZwGjRjMLLD4AGmgqtXL8A7TVtmTPt2SIsngpCIo/7Kw+jKsFtJSB0Z2CaRO
	 eBxbeJFZ3C4ZJRo76oxjLgJjsilBg+M/l4Q0N/AL3d/t6xmZVGoGdr75kzbsp3zZ5X
	 H+TNHPrOZlPPEvrxK3eExC3BdQovvoKiQQfnwHlOCf39HYBAtATQVPetyTAop9DgJh
	 6EyTYeUGuTWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43DAC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787724276.7068.3295924245449808106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39cb9cb887a17a925e85cee5d32e046698a9bca0d9cc19e83d55e86af2b5fc18
Date: Sat, 08 Jun 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717877242
