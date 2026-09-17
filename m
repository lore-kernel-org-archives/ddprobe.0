Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBCD3A9879
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789625434; cv=none; b=jY7gFBd0QdM5J/CfCJxdzUUU0dL0p0xNA+BgFXH2Upb6C+nTHdwkGgBFTm87aOtXyJFqQJrZHLDduCgW1RU8+WFcBQtxfHQI0+QTSYBGUhKURUZB4gX3hNyjugDcv0yTnjj6B5jcGFQVjEMccBuEXMC0RltEua/pJ7nMsUvsz1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789625434; c=relaxed/simple;
	bh=Ds0XQ5kWY8IdXki4Cxo/6M8bConR1QgRhlUEB53pcP4=;
	h=To:Subject:From:Message-Id:Date; b=BzsjUI3Xv2zrNSKnbpo+ZHI7jhWdS4GNFGGoidZi9Sx5OT28yfGt9kDAnb/4cnqX/V7nIwTVjsb5aCbyHXZT4UOUTv82lhH/K0eSjj6GHYAY1uSLKCvZPdIZaof8E/wNg9MiK78YDYQ3RXGuI2XaWaMV7jmrSP/fGKbD45tlKdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J84KkNG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J84KkNG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C30C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789625433;
	bh=Ds0XQ5kWY8IdXki4Cxo/6M8bConR1QgRhlUEB53pcP4=;
	h=To:Subject:From:Date:From;
	b=J84KkNG3g3YXL0vCShGbwEhglRAxMr5APd8Juoca3H7v39Wjv4OgiPlBzKrve4a1b
	 YAcWPJi5XduBZngCvnuRx4L5PwF0BACtZu1R/VtfPC0dgn1GGTlBPEcfQ2ejcE1bBE
	 xfzeWh2Cg3kmFGlHQwKSuiBIvj2u7y9yfqLNpiGxGaHfqlNUBG2NiFyQbU9d/VUMzG
	 G+6DZUs16sZ01knQLW2MAmZ8Ybl4LCro6HmGL+S0kzgYDBIAEEm4NgVIYbMi009ogE
	 M3/NRw/ITDjn0uivS24vaRF9Lw0u0NgK6w913YSfDtprs0VgIxrbx3eE+scoRqByvW
	 uDdrqSWH+jZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD542C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962543369.25270.13169486385194680428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9699514707a5d6fb925c35d8e02e73dd43ad1633fc7f7cc3e0b44e5eb85e70a5
Date: Thu, 17 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789625433
