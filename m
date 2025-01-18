Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF913398B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737232554; cv=none; b=M3EKMyesQSjB1UeXrPOljZX8g7KjO5sBLLtsrjWFL+n+gzejBUigAlWyY8lzBRvxc74AMcvrPfVwsx9CRIhjPXuShyJA//RGCK8VegYChQmsb/gBzt5w1eIBubhjrIX8BV6Lc53K4hTqaVI8NvzcOtmB3ZQszDEcHGD/qB4gX0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737232554; c=relaxed/simple;
	bh=JekT7jgHdADx3qfzdooji2jrrCFPapIKeBuEsKafj4Y=;
	h=To:Subject:From:Message-Id:Date; b=VkZ4raDJM/PuUkjPfaVpb9LVLHyD1kKHU0+NQvC6KgppOUDTs9e4rfOSrnJo8AjZ10OgHgoxAMHtYmgZm2vWPE0WLMwmspuMdQcEhEvJ0lTVz/6SRYl63+nhHgFSzxNRW5lThesHnds8rEFulPk0TRd8jXZL4k7Wf1o2ViRF1NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4hC1A4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4hC1A4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4401C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737232553;
	bh=JekT7jgHdADx3qfzdooji2jrrCFPapIKeBuEsKafj4Y=;
	h=To:Subject:From:Date:From;
	b=G4hC1A4JruV+G7YLEBCKp2OBrfgNMYTKEZ+28bfNvpH2fD7OTuKCIA17vxPxhnOn4
	 K/R9kvhlDOFD0+ptLpoPbwdzAmSKUlCyWpP+6girqE+JBGMxGNYAZtwjfovURR03/M
	 A0rXwuEWrcRWAVLs+iAJYKUYtgNjdn4snMpqgWxCcvKeZJeMJFIOV2hnQdDcjKhOPK
	 /9Wf4ii9ftvIDVdz+IRLTubfBPBevAgQrrcixxayLjyx78C0Ih8+coykhtwQUMlNwQ
	 JD/VrrPkRIbqSa0xmy31q0Bdk18go78w4IqOGsbzy6mVfT15vrgmFs/knw7cGUL8CF
	 9NtxxE3Q+jhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C40CC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723255363.7934.14651352127412511497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b63531478044519a97953176073a2349f4bb2c7db9c8c6956f44d690353b66
Date: Sat, 18 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737232553
