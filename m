Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F8045BE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719518663; cv=none; b=a02werOiU8SL12Y4OWacvpj/4XkuSQSyly/hxLoWehRutw2gCZ5Wyub/1u2SINaQlq7PGB/ld/I3PDQpmG296O6gnGcy2dCvyP/neqYIWTEfqGjcxhIAeBZkEl891+4KxnTqwk9+ocb5tC2vkuZ0/JE3WmEgljNE3Wq7yPC7/WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719518663; c=relaxed/simple;
	bh=kY7HLZToNopPNayTp+yQAuQjAwLtcGkqEsiaKQ0qINk=;
	h=To:Subject:From:Message-Id:Date; b=rGwp/ef/BfWHRZp2VKObLKQ15sha9b0/0c8ye4fcksB7NggKwY06b/sQXuUxKu6AC4pARpnFZonf2F6z5xTsxC5CW5Fb1cyyXLINDkKkcNNyCPcOccB2YF83p8E45Voh3sW0XAzNSJOOTAhX7ag5or8RP0A3juJRRsOF6a0ruZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7o5vgWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7o5vgWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2530C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719518662;
	bh=kY7HLZToNopPNayTp+yQAuQjAwLtcGkqEsiaKQ0qINk=;
	h=To:Subject:From:Date:From;
	b=c7o5vgWoqrb+1wJdxDv1aEIwbUgT+5cF6Cr/+FAQgCjwqGcopLuteXJkF7uwOTcYR
	 fYjLcLzSPLxVqc7eMCCga5iFFWqaV8GkB1hGe3GBRTVP5NeI/fFm/wf1wBrNnRzgbx
	 oPobjC+KtsUMwHcfzunWNLg9o9ODLLTjYGr8J0CqNSp70MDdC+Cf/htinsUa2YCsEs
	 NABWpg4YEk8RXn2rDCS8yTjGFSxyroUnbhiVdCpylyibE6ia0xiWwKM5Jpf5C9XOWq
	 d7LHFtgLh9vT5Lc17D8u8TWf0859scSfwcOFhlTWB1Ohv725S1tghWqD7rUnQyIboT
	 EhOPqfulGK87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF07AC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951866276.23988.5248231700230263835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6583649f838b3a708d5efd6764e703a296cb9d854302de7f429562c4bc0a9d
Date: Thu, 27 Jun 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719518662
