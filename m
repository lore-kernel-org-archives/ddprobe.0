Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A58341650
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761907794; cv=none; b=jBtIgID8e2hkLrYpbe0tDK1P9jschrQ387Ol7LZE6rEAmAVr6WjsM4xPc54OlmgWxcN43QxNpzW33+Z1JMVDHUdyDlHp6irD8Kl2OyACTxAR40oVX4fjcEsv09uMAVfYtyFE/tojhXdB8/ebSbUXHUMkO2RkUOXvHgv7EY4qvUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761907794; c=relaxed/simple;
	bh=KF/J2P+vfgac9/CzAK2pLBOUrBRRrnloCk1nxlkCbQ0=;
	h=To:Subject:From:Message-Id:Date; b=UUk+hsCa+ngn5VPrceBNvYUj4zSKGJZ6PMfjb0UTyOfBn5EzICkZLRgYuiaUoDV9nAJrt+zfS4pltwYggWqimsAYZA6svFlBbMCvGH/Hs58yJmg7B2JWJveAAmd/H5d35ze8IeyUFm4Bnb0o2/aePinZ067v7QYM6bjqGhTgJ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7pDzUc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7pDzUc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761907793;
	bh=KF/J2P+vfgac9/CzAK2pLBOUrBRRrnloCk1nxlkCbQ0=;
	h=To:Subject:From:Date:From;
	b=T7pDzUc08r/H9L4eU7WD0J8gDfRg9udEgo0HucIXgHXQSclUNltJfRRldJU9DQZqK
	 wvpty8msCN9lbBWjePkfgImDRelAfWybupgDvXPkEyClmkhG5V0MTTRlXmH6/QY1K3
	 S0O76nH6+Hc6AkPVxFXitExKiMWsmVcE6q5K9cVWenMLMR9s+2g+l91UJ+nJfP53VB
	 Yw6RNCyJkj80Cs5sC0JL9TNNXMV+Rvc5fx5IGhkHMqR3UgniTG1tLWTVLjmpTS/TNn
	 Wo6P2AHQYL//kG7vahsDfBsiqt77zQNs4Z6laWth3Zz/Z9dAZfAMC1fkxNhXi3CUku
	 Aldfn14cilApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500ACCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190779359.20221.1673639329279928832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202018b8a429b9c933e54758e5405f54425acebcb1c43a284bd43dfa7642bc4a
Date: Fri, 31 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761907793
