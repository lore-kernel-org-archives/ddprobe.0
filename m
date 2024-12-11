Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771E1F0E50
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733954754; cv=none; b=WeecxYD2uSB2g++ZQ9egPeV2gFji126lw2izInq8dvEOqFg1shJDB5azMNDH/x4w3UrEfVCkaJ1YOLLYezD0lsBuqZSl/gD7Rfn3ieIvgP34alWill1W6kh3w744Xf1WHuS9kxbH1qws9lYBtAY3n1Vh8ZISNYHNku33dW/PZE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733954754; c=relaxed/simple;
	bh=X/0yh0oroxMHvuFfoMrhi+dNZbdWdF2xeorwY5r39P4=;
	h=To:Subject:From:Message-Id:Date; b=AXHMGF6k2dV3FO7tCwdi2w85pKGseTM0G4w3XzHEkvyNeGC8BX848AqemiwMW7EPi1ftDamIXioammsAvZG/k2cSW1661N0h55X22d0b8LvBZZlY1ncfaoMNKG6QRaoeRWUKsaSrx7r3sUptafnrt4bd4dH4ReElOIpLeYyIRFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWBVU9rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWBVU9rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF394C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733954753;
	bh=X/0yh0oroxMHvuFfoMrhi+dNZbdWdF2xeorwY5r39P4=;
	h=To:Subject:From:Date:From;
	b=YWBVU9rP4lyoV65Xn0Uh2fUd+rHfdJqc8KnkJW7xwePKrcIVjZea8h3eQdxa0xpDm
	 TPRXGS1SLaJy5XLoTrZBW61aK1s7Db7Lpzh+hfS81Qw3ZFKlFBxXDduc7eD0K3rJZ/
	 URi9CU7Gtq+IQd7aUAMPggVwcWtQR3eUaRmismtzILqKz2DSLk4KBWB6L2GYWhDU8T
	 WqnfdsWhml7gJcbnsCxTEwdZs5gFN4GQmyaPNNA4346py5tZn+OCQArIKcz4yTNF7T
	 x0x6umkvsc7z01klP3c4IXfwf1ntUWpRSdNZN/8qjFU/9bRS5JcIZiAkSsfLXPIo7f
	 YBscEW3MqNIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD2EE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395475363.31436.5629093938437891925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086630b5d1af5f99f72644d51b92eb534d12233a7901fed1b7c538e212bafe44
Date: Wed, 11 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733954753
