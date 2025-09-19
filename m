Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4043923D7C2
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758273594; cv=none; b=LOMvCj96EHucipgEINGbMrBlXZsiIvNZ8fajS9UkhO7FNpcV80EXzlHlWs/q4sLCGIilGmuUdJDftbu4bJBzBrUYXfJeAB7xd9Ozs/6cU6tleh8XyDOictWA3GisrrvozW6wDWT4xIFSVRsGYKstcTiGLcdpuJ8419Aibz43L+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758273594; c=relaxed/simple;
	bh=EhQ/f9wE9rUYdUsRZR0uAKVaLHVf9wsbWBp2YiSvr3U=;
	h=To:Subject:From:Message-Id:Date; b=WO24rzFR4Xapn/iictjORjWFMSRRPsYH3nOqoyMYa0JJt/LSyeAgvMAKdl+UvcXg0jS1+g1kYHf1WO3H4khw0TeKB7yjFxLpCHiDhh9mHXM6oi4JvUA8JZKqmL9sBwJJhK9kAphlSbz28D0PfZ+te4Ma1wmFqpPwls+Wq5zNhAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSp/g3mW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSp/g3mW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90FFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758273593;
	bh=EhQ/f9wE9rUYdUsRZR0uAKVaLHVf9wsbWBp2YiSvr3U=;
	h=To:Subject:From:Date:From;
	b=ZSp/g3mWhr6W7qBb8iEb5c/WM2fM7P6OytKDIU7fID2QYgZVT3HfwE5GHv50/ETi8
	 p9rwx5y/sku73TwMBBgiah/cJYMnOCMQ9H/Vlc2dzlGXxqjuZN5xz8yuV6NhuX2bJX
	 nzDloPwa7uxIJMKrRKBt9ZyXVlBOuP8eSPuBz2mHXYcdd/JchcL6U/IyJZWgI71Srg
	 QZvul6JG3IXeDSIWs1HfvbUWf5otyTYZS06xWvsw0xfU9QyS17g2mWFMB3QL3uw96D
	 PSIzrcpxE+4JGYzQCQ+HX4XMefSidpyY9bmQHSarnKTkatO8QjuqvigOJdm62y4ugc
	 0JORaD9FV51SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCFCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827359360.10845.14751154361179843329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f4c5706e4d2ff7fe9fd15fc18eafd35b50c0065abdf4693718907eee1540f3
Date: Fri, 19 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758273593
