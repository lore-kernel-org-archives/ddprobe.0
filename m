Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1000F2747B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756748994; cv=none; b=pn8nbN7qzzmwA9shbL/oT8eVOKeQiHUbEcQ26j10sB+O+NWRCTj7ho/xSpgae2Jn2w2M6EephnhGt8yIQd4aUM7vxb8z2OXolND3SZVa2dMsUiXJxbNMPvftaVxvT1ji0KgyDESu9uQbleLnaxMzfoRzlDPO9hBW5160xQMCbEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756748994; c=relaxed/simple;
	bh=P+45YYlgxAz1sRfQScqWzIS5kGsea2M/pQy5NAb7+OY=;
	h=To:Subject:From:Message-Id:Date; b=qIWbh5vjo1wHgOTPGn6FC7QhDiXnRc8wZDZ/fmUTV+TLNx9UE4QMHyn2yyISHcwIGlKLCYM6HIrH1DMG+95C2VpcphVJmIo8HOR1tQlmk345ZzIA4el4ECTP+e0RHpPKw+zU0f70Q8HM28VrWWyyhbGPnQFPa92sYT+EByUBx7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyfkBJbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyfkBJbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F91BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756748993;
	bh=P+45YYlgxAz1sRfQScqWzIS5kGsea2M/pQy5NAb7+OY=;
	h=To:Subject:From:Date:From;
	b=GyfkBJbfbJeG63/nOZzKniciUWAG+TRGV3j6V3yV2D2jU0C2H1C9JoEE4vNf7NZX0
	 HzLES3DMBTCxxTus94TY1cLqpSEkBocdg2zqJDdAAUfg00ShL/gPnyxqr9x849Eiur
	 YHwaFg/nJEwn2+M/rGJSU5sCBhSBtOu3yDQmOg0K/2k9eekJoHlfgpFNr5t38L/kA6
	 SxJAYCgDclT00rY97caUCDNEL63omPF7joTSZvL6tL6uirk5qOR5TwiZe8/0wERWJG
	 F84Tg2oCa3FJWzsDF1JP0cliFAj9A5GIV5vzRocd0jBO837/6AMG+E5t/Wg4Ro/xwi
	 Z/i9U4zVgJnww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABACA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674899357.14630.16355077707901018694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f4f21b5053545770a93e197eb13daf6fb7e8d974c26f553fea48eaa7fac720
Date: Mon, 01 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756748993
