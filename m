Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE06144D0B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718288303; cv=none; b=nCMjv+hmnJ127buzbKYQdrI5FdQwMXUJiUeDyhaQARGGX4ghAsv+vGq30Kg15xLJVn1XY/Gq7ZgtRL2aDMQTgmQXaYvTuUiTmYST8EU8o0uaq9eVf2t8Nwxr2oNb8lcPnz1Nc0jAZUh2LCUa8AGM031+r2dk/8N4QtYHhWrv8Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718288303; c=relaxed/simple;
	bh=GCtsxxmuHHSsDeTXMH1c8iObN3BjywzBkK/UOvMBuq0=;
	h=To:Subject:From:Message-Id:Date; b=aZFeccSMOZ+w/OdB86/4uIXTw+DawirRBWDQW5mgA7x0nwixtlz1zRwQKeg6WyNFSVthRyVhhjB60Qq9kTiaKv/eepHLmijerCHTRpUeX7lZFY9r6dMhJ2J82LVofzVseLRUxmEE1ijuhn9CMLwR0mNA/VRA0MREdHkikREbeUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcjREuja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcjREuja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C21C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718288302;
	bh=GCtsxxmuHHSsDeTXMH1c8iObN3BjywzBkK/UOvMBuq0=;
	h=To:Subject:From:Date:From;
	b=OcjREujajotD/qapFVG1YxhW5UEIgTreRW0KcE2t2YmyNThqOG3QJLNYUfB6kPf6p
	 ZD5eBxZ7Ki9YxAsG72WCHv+uBwHMnj88mqHqPK8T50o7B5OZQyMhw4tIiS0QFEYDzr
	 cDUzLa+MCn2+8yciZGiUIIdiSCvXhwTyoJlkihPDyULbBP3dYnJIRIFMpaOcoEUstU
	 a5tSs2s/R9YdqCNGBx+c/x+0Qm6mRQFMSgCcpImg8S5A85KXkLw1/n+wYLCQmGa7g+
	 0tqb64i+/piGzhJGfUmNtJiOxgYJhqJUrYRHXIhCF1CC2Kjip8OdZR8quotBE/Ic4h
	 np6+h5XP7e3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CAAC27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828830277.8044.8313933148961513513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cff7be7581a9e6184dbea7db94867b387d35f38d2acddf218e2c084a16d8c8
Date: Thu, 13 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718288302
