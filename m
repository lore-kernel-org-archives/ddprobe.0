Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6A3BE46
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748677194; cv=none; b=h4CBOh4lEwzcGDEQXoCEycqJMNO0K6l9ppGAGA+Kaa4O/9BxPO8FkWy6e7YaJzXRTRHJ7LVLmJ8oZ0iG+4EZyhrF4fA/VXjbCC5X+aTKwtLM3AmpCFrbCzRmaY/G0zij8a1Zxznxptnx53IIqpW7Z8hJkt+ItSPzrJMBKsbEb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748677194; c=relaxed/simple;
	bh=SQ2PzM4/F+URgENweQd0V0YCxdRPNyHhbqzxDtP0v50=;
	h=To:Subject:From:Message-Id:Date; b=Mhs1vCWuZ5MFm1FVwg2VcoL06QPkU7fv5WDCxF+GrS8KUB9pEUTwGk4RgY+aaA+PcoF1ZxnDzS36V7KcOO6WNmDrjGhUSMkN4Nk55rX2sH5G3Hh0yqN6wwjG1oxIJsMcIUUThT8+omylKZYYfGqmgUQW2uQkhg3kw0EpUj0LuBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH73etxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH73etxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A2DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748677193;
	bh=SQ2PzM4/F+URgENweQd0V0YCxdRPNyHhbqzxDtP0v50=;
	h=To:Subject:From:Date:From;
	b=UH73etxQ7Yo1i94XOFYugHchDP+w4bA5SdA0d12qnorMH83OtRDhWM3qz7T6qebid
	 NzkCLA11X0pr5L/O/pQ2xzf9pj7Mpy9hbDICNGpgVI+NjHcH+bTo8dNwnm1ICgc1xP
	 kQ4qImVcANE9X3Rh6KFHUZpr2bECi5jDlgWaQbh6RfE747T4TpicFIjEOngnMujnrO
	 yQxjHO5cR9rkzu5BEL2dzt9ZtdVDhdoGHO6creSpLH/IMX+seDpn7d+rnFyPzvwmua
	 FZcB3KlLucP91VxaCiOQmudYNr62N2ukK6wWj3JCoH3ezFkyMcsmGNYd/Ugl6LigaK
	 Fu1tuh1V9YYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91553C5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867719357.3963.5000086237541756156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0198f65d96031a80d1a8b72b74302c497f893357b246edaf5f4e209c6088fa
Date: Sat, 31 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748677193
