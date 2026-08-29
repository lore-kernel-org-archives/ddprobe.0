Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF07353A64
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787988634; cv=none; b=KE/Ihhg0cpp++6DK7QPOoFeDuTQ9ZtbcX+7pK+GbNdGPe7YPS915q8IHaV3nKs9csHV+FtLqiNzix316cy62+T4vB2cJi/vbcM+an1M9XQg4VREfbs+gMjaBxoIT0a4+48UfuB/+lx2IYbypPxsY1rbrCa4qRlL0yYIEgE5Lt64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787988634; c=relaxed/simple;
	bh=a0VAfwbHp8Rg3RP9JwYx+ZC6YJAExO5cztMOFgf3AXo=;
	h=To:Subject:From:Message-Id:Date; b=W6rHwzTYpb4No6UwQbVvnOBmBIZfEawYPQjTczqtsaq4R8USi2XIPxgBxJW1Kje23PljxpzVDxbp2O0g+r/DjXdD/FSCwUyWUBwWmvLAApiFbKD3rT0A98PaaWMw6Vzp1IOnpXtlz60ukqRDxgk6ci6ValID7tUdcEBop0c+okQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2hPgHuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2hPgHuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE16C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787988633;
	bh=a0VAfwbHp8Rg3RP9JwYx+ZC6YJAExO5cztMOFgf3AXo=;
	h=To:Subject:From:Date:From;
	b=T2hPgHuFk/tKO/M8JUX4MsABMn+EDVL9RPbtzTSZi7OX7PC3peZ3uaFZ/Cso1H1+/
	 CmdMOReB44iKXcnjwzWJhtvo8dwGN6hTOT2tCuvBYxhBUhZww+j06oYw9R4qzAlTob
	 azPkkUY+UA1IUcqoN4hDo1RxBeME0HRWNVjysrC+SatZ9K2QhEypJteY3EPcgnUTcw
	 fA2dGPPgQ2yey8lBK7omM9bIRbbCUyLsoqj+Yq4VJBjCfUwqhIah0AfZrWcvo21Zzm
	 9kPyKp7Z6HMmVQWqaYjAT86Vk2zfl9CUh+JTvrhHyqsIPzffYj6zMDhSdRGN7Fzzy6
	 mQWAIlo2BaZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB58EC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798863369.11730.1029298963259108792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5573bbeda2009a7fe540bcf85fd0114eb17af61fc2136d27d369c216c9ce1dfe
Date: Sat, 29 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787988633
