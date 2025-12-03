Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBE22F39DA
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762774; cv=none; b=IUH1OJ2UwirUM4fF4CLjAugB35zAxvO34j0anjoDYzc9JIsqscYEnQqm5x8NmqALiXTLNoRGRThEwknm+/OchcFNULhYCYoL8UhliUBMVpreY7WDDyVhQZ/gfi5ZJ1HGoWOUruZqAhUFitgIctGa+DQjziFgmDBTbsj8Gybo7XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762774; c=relaxed/simple;
	bh=/jPYTTdIo94VHY0TynXOC0Nn4aMadE6Kkfo+HOPkZbc=;
	h=To:Subject:From:Message-Id:Date; b=PBPXOF6aiotCxT0UTR2Ui+KUQ7E8A1bxfWj/BvFCNEnQenJv9axXesk0GnYfxRMdmyaL84QFs48Q3YaEbYTtMnvXPsJ4ja3tQI7ieL6IrykV6RL2vcO5TIzlsOLNzUHhP9SlkL4Fc7GpHwcgdmfGicQA9efkDQ1SmugvtqQxJ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm901lGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm901lGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBDC113D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764762773;
	bh=/jPYTTdIo94VHY0TynXOC0Nn4aMadE6Kkfo+HOPkZbc=;
	h=To:Subject:From:Date:From;
	b=tm901lGRDwsAi4Zc5MSZQUUjv9/yRSEWcqby2help17GdGMxjL0HFL9/goz+53x2I
	 nApeKRyQBO1o2Gh/l3dhOfns2tEC4nO3heBoV0vvp0FQ4lI0gR2rrs2ouaztenWcY3
	 TOoBhvQvI/P6G0joAHZHLhX/HFrY2XF824Sa1Xv/gpBm+qyOtvg/jEPJDbVZxKccYO
	 m1HoAEeLYCYTprT1tdeW7SskLR+B4j7OYv7qSQrZf4tgLTtXnykq7s7Pv+Bk88ROvB
	 XmaTBov6w63/hBhJdnuWErjMOTYjp3gRqjjy0ctt2fCPmpIfCjFW0ls4fTkZSuHzL/
	 XEAmIK1AjPrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E96D12D4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476277359.28702.13295749961005303723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df93f539c0ae0bcb46b124a0b28a215c5efde745f5beb5636c1c43959564a497
Date: Wed, 03 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764762773
