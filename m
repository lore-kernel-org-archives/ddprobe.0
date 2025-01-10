Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9BF1AA1F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736507154; cv=none; b=CaCiQpEOedATCATOO9qjKTpJKWhXK5U93osc7jS4yLY+ncS6eCI+5XtG4/UihCBQNPyrndSLNN7TfKu10tccA+aXCZikHjekfCkpkn+lJA5/MXqYA0Vl5F/tSAWrbx//g94Pplk+CyacIMaVaxZ73PE8gZY9OqFhckO1ngtavW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736507154; c=relaxed/simple;
	bh=8jc+LTtJSHqUEXbf0w4AQZtdE/mzlJoRK6Ewkc/dRbw=;
	h=To:Subject:From:Message-Id:Date; b=B/2aLdYU9t6DaEWLdefmtVk839FVBGBBMukzWbSXHKQDaJmopXKhLY586uTa1f6SOny/mvWSifinUqmUNGtpHydJC9lFDFSqqFRtZJevjJjanvwtmZ1u9iSCyhCrOMtSpk2czes26ChIllWrXkDp/axmkr3oBu5o86GExOT2dWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXxIUZRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXxIUZRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB1C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736507153;
	bh=8jc+LTtJSHqUEXbf0w4AQZtdE/mzlJoRK6Ewkc/dRbw=;
	h=To:Subject:From:Date:From;
	b=QXxIUZRN6qAfhMNmRyN5XTtZ/RpP/aSDbfEFMG1qzbpq9AONcAnYUOwJBqFQdQAjM
	 Xb+6yR1uCzIbBb2iqJoW7worHN/9l5bdkZPkbm3ues/DppjWjit3QQkAINNR/C6LFN
	 23cHlVYK16WOW5O//8h0RrLrhWjjldmW0S+L5uBxH9iqge1l95Ea31UXj+C+tkZ0ll
	 uGT4eD6EG6lIh6ademDAvvYBUHSCb5cqNZYO3lAeB0+lcCSAIIVq20IygGL9uVjV0I
	 wYacSLI+0wqRoMMhzjFCMJML97E5g0UlXys3daQYfsW93VAXAbMwLCiaPbUFTIdv8g
	 8X6FoK7gGvcYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3BE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650715358.16804.18303175458733940856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab224d4002644bb283b7c2b0c7f9c6ec099ee3b11f671ebb4ea51b86120503ad
Date: Fri, 10 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736507153
