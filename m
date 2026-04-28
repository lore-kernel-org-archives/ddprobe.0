Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1451245039
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777394254; cv=none; b=o1r46DYdCVOJt3vudk1CsCE5P/m1oRcZYGBTwo8UzlK8EgC8LLBE/5vA+4EpF2tz9h2fGlljs7gUaVqsmbOpYad4JSpscyOZUwUUvwjYDvGfjYrXTphfE7W6Y9zLJAffh+AGinR/+38pFgnLY/PjAYQeZA24ez2Au8UiLUrgROc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777394254; c=relaxed/simple;
	bh=Ygd5Fbi6r9aZniwjHV2NGU3YanTuxfk1SFbb0b9KnuU=;
	h=To:Subject:From:Message-Id:Date; b=H79NGmEITU3cJC61Y1rCAH4IpZrVJVlLbTRUTDGZpzfpmUy93wpebi2zOjlFTUN2tilkcMw6bADjOyjh8x/NOm/wndLr7IYKGffXn3c+fJrM4ZbwF6GqdmEv+O7D2QeYnWka9Cw02ppcXEw24RsU1ALIBDcVE64G5amCcqdM0Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POqimQiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POqimQiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F53C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777394253;
	bh=Ygd5Fbi6r9aZniwjHV2NGU3YanTuxfk1SFbb0b9KnuU=;
	h=To:Subject:From:Date:From;
	b=POqimQiGj1kuFW3BtjZqMab3wde2khkpzQFTKM308w91EM/Gm9UJeVbtrG5MD1ZZv
	 eIpTEWKHlgzlfFdi1tEHSvtmKWc7CfMoH8stJKpQWzDseFtWQL5Ytg6iJohBDBIdRt
	 OiK1U7E6ivApZfrI73LN7bA5g1ZcXEZZn+x/xLgpZEXq6SgH3hUsnMZaJpB3pGAmfX
	 hzrse/JgrXchn3qQYdFrOrGjTqUvoVpNeSduRuFq62OpFA7QljL5YQsNwXRwMUu9JJ
	 g6O6vhNDXZ7/Lw0/VvBkt62Iqg+yCNYGF33EeN7nB5cUZHC9vBhoUBp4FDWf9oZaH7
	 RgjoxaKSB8jzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9869FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739425368.11307.7041452187206905753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c0e6e3cb0a37c953342efdb006cec29f46cc307309a2e44a67ea10737f8795
Date: Tue, 28 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777394253
