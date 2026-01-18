Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9417993
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768722234; cv=none; b=UHfBahPPof5TuehHtp0wrAlOKbAA+EKPvXnQbcgUW7aJkop7lG8wb+ZjeTcpFWIF1rv8E6Cq3e08bwLO90EmuRFWcTYMJAnsbKOlLmz83hpTbcVShuApbSI7Bj7ph1QULZgzJ4JD7D9nC5vX83LN5GZgRvZ7w+stJKOIQlxoheo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768722234; c=relaxed/simple;
	bh=gFpvuntTs9SLuie1kB30cyxhs5KwzpzlpCRNZ+QmgBU=;
	h=To:Subject:From:Message-Id:Date; b=H8nA462MFSI9fP5W0eLh2hXu/Tosd8Eu0bumc84i4nAUT84G2lQfttj14FgIgEZ0DJdA5D3r03M6BRKw4SWubx78OkVQR7ByDE4ZcEkYitXXYQp7nV4jPtoATa1o+7gTI84MfbEGvWm3XY+uOx0KzOJVyZxdnluY+DEpeXtYvlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR8474rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR8474rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A723AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768722233;
	bh=gFpvuntTs9SLuie1kB30cyxhs5KwzpzlpCRNZ+QmgBU=;
	h=To:Subject:From:Date:From;
	b=SR8474rWNMQ6CtgHjrlUPcNdfku1wjy6CQ5zZ9UmOovLON0pu9NPYtrQNFDOmUPjH
	 6Ep0v3A5jOe2Q41zsjUi7fATcRibmMtfJL5HARLkYCPFTb+A0tp765uZJnMOWZuo6Y
	 geTaLluHl+kqcXvqAwYYWTPvfs0UrI237lvXxJJ6ysj0wBNX35OR6Xo/AkuNVOPxGA
	 pHX/5Ol7wgD+jpZgYp8LNQj73dZQWEZp2FUbFclQzhFgbZBhM8s+LEcL97HsOWjGHS
	 lAhTcT+BE30imOCd5RQvftWdWZwVQ7MhoiUlHtPJi+QnSJnpplBG66bHv/XHQ/lhvt
	 cAf68DAkwLdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934EAC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872223358.16140.11266995097121766433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c7ba82f9dd403262a4b9f9f9e7e51a3eceda21bb623f4b6fd5e3e9468a6193
Date: Sun, 18 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768722233
