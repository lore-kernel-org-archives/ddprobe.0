Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D931D5CC9
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765030974; cv=none; b=rGAKpCEaj0dh3XxN3Fdhy7bjDytvvvvlLFF4IR3Mu50TuPxdwYd+UXAaJIjX4pHEPMUg5yGh/j37CNLOH0UN3Du5lXMZ1iWlNUpwcs6H1gzdkXevAeo9/Akq9KSaoEmykB0f4XSGttSPJS8x3HSuHkw0DiBe5NimSE4X5KXDkkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765030974; c=relaxed/simple;
	bh=TkuQKEFd1x3uDKcFe/6+XhNHv7dmFFldBB77Ln+eGHQ=;
	h=To:Subject:From:Message-Id:Date; b=Pokzd2qM1PMQg8KRaV30VJHW5/N8NpSXZqj+OrxHQYVpfHvgFySgBvHksWz9ifOgzaJpaTsUBH+3nhbYepTuufkK4vEP1De4ggpNSP6JLv8qMPaSC2RQtS62raOiCfz+OAAP86biEBKAZVgFlBcoB+bPAeDXQG3q44ZDh/XjLFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4gPvxqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4gPvxqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765030973;
	bh=TkuQKEFd1x3uDKcFe/6+XhNHv7dmFFldBB77Ln+eGHQ=;
	h=To:Subject:From:Date:From;
	b=d4gPvxqIhThXH1yfiT+bMik08LlkmOV9XF2K0V5cWtFlVSN8/Z2CfksqVr9mjvsOE
	 V5G2N40sx4nhsZSWXqLjqNeNUyJdQvrr2lLJiold0zw2XROucgRFEXmUcB1grjFPbG
	 +TCUiTpqrrMMVTXbr3ZrU/xeMx01ykICVmKRAF7jFoS3COc9Q/FGHHsToEjKoUIB73
	 guRX1jWocPe0TO2jW6PMkMR0E+dXryzaL6gWNn97HjpLY5M+QPmqLpoTiG109ClbVX
	 P17jmsa59fyrtCJCm7HCErcd5jfqaqE2cIB2wR1czBnWqNU1gsUhE8E3sdg5ilcap5
	 v6ZiZWs6cP55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E79D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503097359.24217.5299381185554067430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087dbf1d3257ef311603378047315bc3906f251441438c1f9e2939e912553d9e
Date: Sat, 06 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765030973
