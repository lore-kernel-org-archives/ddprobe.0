Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D4C25A62E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761650394; cv=none; b=BtOePmSclV9JLYXHSPxHhp9dtns9n9ngvINUp1rnHav2QbbAF5mprMUn8YXKaYdwRxLXC3mMaNv4fqY5JrZKlPvOkRbfpOwCdR/LWkC5v/5AR9BGov18R8txK0G44dB+2lhswuiJRaMkB4Mazworfn+y1sV4ZorAE4/e8xMakDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761650394; c=relaxed/simple;
	bh=f1KFJWSOOh+u9R0oj808/RpEaSjIvljGMkoybbPsI+4=;
	h=To:Subject:From:Message-Id:Date; b=SbICztCYhOUa1SKDDiakpnSmtb62PgvE4vR/nLq89LX2DtWR8tKr0xPyIyNN8d0GZu3T3/hJKabHdIzoW88G6lspfJWoeXmJzuMQW0VssLuDTjbXpXiPphlg/NS2gynW0BXQYXzcSf0XIzUgD/D31Z7Vv0spWlk/v5yX4reCNBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwOC7XqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwOC7XqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5500C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761650393;
	bh=f1KFJWSOOh+u9R0oj808/RpEaSjIvljGMkoybbPsI+4=;
	h=To:Subject:From:Date:From;
	b=BwOC7XqHqnY+KW4jGaqRvxzuiQY8V6FBUvdjHtT8FWAzN0PvmVq/6zE+Bw7M3AwCv
	 g3jfpWdygMWSa3S/DOb0VyoJIb05NShLwrIT/jyBUj3VxcD98XfjGUyM8ZGW2APIKL
	 S168k4IVvF53BAhbRsjFTMbjE7TI/zUwkDmen3zibD0lKk+dTS0kha8buUzfI3hdGp
	 SwmNNXqrt1F5vb9ebVb0emoqkoTUxMIe2Awc7IsE5U8dWXeWPSx3yGJwgthatkfzUg
	 A1ikGRPK9uAmdCfRZ7YlX5ho0QHw8Yg+vurXE+hiI33X+Zuju89N77Z/FXhQ7JtWM3
	 DiXxDKZpkOVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6DCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165039358.6776.6918312863032453325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cabe1a6a02948a17cf2c9eef19414f4d21231d0cd6b07e7db9789640af72513
Date: Tue, 28 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761650393
