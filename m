Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0159836B076
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773326094; cv=none; b=gm0nTgwVHTsT85RlAMBbqUlxYfdI7yuwPLvdpUQILusZOr+aXsLmpV6b3ckQ6F4g5hbo5aAXPXNYEuXLb8PDz1yjjkAMUGqVtui4mRDNQlGUkduiuySXtQ7KSjzM3TNhOZWIqVtG2Ez8p9vWwKvAl5k/1OKM5/2oXKN0uowu8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773326094; c=relaxed/simple;
	bh=8AMxnYSwvqQBtzKElnTbwhhx+/OYGkBtcO8vEdvRobY=;
	h=To:Subject:From:Message-Id:Date; b=RaYiRPEamhvx86oTay39c5GwciymkklSRAFx5xmvwEIhlgmONFZkb7qK99s0eF57/celhj8pIq61CPq8+7uK5fNTpZK/en5kizOK0UrJxXPnhpEDJRssISOYOoSz2FEO8I3u28xWwCGn8YEy7VxOb6FukAGWgBWYIhzlvNHy9Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZxs+qrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZxs+qrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB2CC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773326093;
	bh=8AMxnYSwvqQBtzKElnTbwhhx+/OYGkBtcO8vEdvRobY=;
	h=To:Subject:From:Date:From;
	b=lZxs+qrFaalQHgCOgKVtFS2aBjGbVyjpPXdYOSPg1KaWVD4gHONMl8aXKW/hguI6x
	 zmjqHsYVH6Os7XfkSC6PjypowLkNZBuEuhlsZCY+wb/qvVBMbPNj6lVKNBrLlrfP8B
	 jMx1r+ZgPTzX1+oUc1Se3IVXmoRnnznggZ/IPhWgSw3rwjspkfaEEvXXCMUP3euNYy
	 Tg4ESSAmXZFz7B858OLTykSBH6AhZS8DGZNPZbx7gpPFnzdLzhS2+pzA1Zc1WDVYHV
	 LUSHO/Sg7GpKSVHnhBOyPVlTQqQ37BX5e5BnI4EVHsBF0fWrb3FOV03n+8OZhTtqH3
	 QoXwiwajUIulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F566106703B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332609357.26823.6554362071329666558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4424e166b1fff2f3fd20f1cf0a8e1f284ae4ccfeb24a0e413dcd09155eaf9e
Date: Thu, 12 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773326093
