Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1773D3064A9
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774575896; cv=none; b=ddCuXno7Eo6evzqJ7iL5tf/2NQqj0gEkWNvtsIyqduVE4B0UZGiksa812AEci+X9xhaKHGZ6D2z+bGCyVpw0i3ggrhbgwTMZTIRebgksPpHvZxV6+yd7JPmnYXOA0ddk+gIRxAaXmhi6iF/P8XyZWg5WI7kTloJXApGvjZyqG18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774575896; c=relaxed/simple;
	bh=vvywtd4oOsVsVEzJAq86QE7ZLbKIEYje9/QUkzSWSio=;
	h=To:Subject:From:Message-Id:Date; b=dDyw3WjUkrdHlVZgrok7vAPSmmWozeUhuFPHVa88dvBlnfxJRW6GgwuhV5J4EtGIm4AvINi49CqA3nyAWCd+nQWJ0ofDzRaPv8CXqx8qZgbO3idRm4gE/OINyOVTOebONUXESgcg2Z+SlLRRRwGy5igqkkabSkH5ZPuQLhR9etk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6xeUnpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6xeUnpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774575893;
	bh=vvywtd4oOsVsVEzJAq86QE7ZLbKIEYje9/QUkzSWSio=;
	h=To:Subject:From:Date:From;
	b=A6xeUnpBGgEoXWU9Byw3GIfVL1BR6MNWAay2mF7521hujx+cqysWxeVOvPBC6+Kpl
	 iJ8hNwwTRkwKhJ7g2zhALMwZYrmMXsPim9Ao2IdntQuV9yBHWfLfwx7Z58Z0LOfo8n
	 7UOUAi1davivoMOrVkUwccG21sEYuzcmwu6DFXIReBZMu8ykDP3ePFBJFspKitPwaa
	 XmD9Ws0ikOjVy/u+4iF3OOdRaRi7zUZo+kMYHtwvSNQgJkrt6bsTHU1BD+XSkUAmow
	 yjxhwu0UJgNlpeYix1ukpKPKkGumaYV7kZXTsKSEB+4NlYCmOfrRWBvHH085taRTd/
	 i0Wvn2ZoPilLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9645210AB83B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457589360.4891.15023876255946190629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74acfe96682de5c78b55ddb44be9d7063b36278a00ad59696e9f3a92a5800201
Date: Fri, 27 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774575893
