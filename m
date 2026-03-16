Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E703ED5A5
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773690894; cv=none; b=QOErkq017UYUEKGUq9BZAzGylraC58YQT9HMszVEoUIEZtltDJ7fk9Hn2IcKx7czS+syOksomElo47FWxnz2ZR2LcYS6MW712H+FcijOofVai00AW5R8QUueHUc3N5HPmu6nJQziaonAFcjmd9D046l8sF4672UvbbcTiQ2bRwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773690894; c=relaxed/simple;
	bh=ILSEAzJzaZ2GW3sj1t9Lpwpe4WCbKbT+gbzeMkaZSBs=;
	h=To:Subject:From:Message-Id:Date; b=D6EF49zmQhyrreIr/SDni6MogrlQ8OZ8SYG/UH+d0lveS5TmAdCGcQvSBAyBi8o+dWKd5GFOmrefr8zrY2DgUUd+L2CC8FIAwPL0/XKwXI75Om+VK8+ro8AC09VnMKBUhe8OR86V9jXdSuxW9200mc4HRf24IXXC0ROpALvobL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtSseTc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtSseTc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0EBC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773690893;
	bh=ILSEAzJzaZ2GW3sj1t9Lpwpe4WCbKbT+gbzeMkaZSBs=;
	h=To:Subject:From:Date:From;
	b=jtSseTc4nlzTuJ837nKxvW1667FaHYQThAILGmnb390LZO1T8CV9dSynfELWcjbJC
	 S0FGTAJCG0+wNViHVo3URPrsClVfErV8ASRP2qXrXqG6Oso5mJyN7HiZoUTcdwsmoq
	 2raYUtcPFhACtv5W6t/+ABTMsy8pwygceEU7v3OdedBHHbdfW5ovvGscs//L9UlGZM
	 ukCm+5J50sPN/5TKSI+VopDcSlCGavunme6zKOxpYFyHUl3FTbC8vLN5t7rnLRSm9c
	 aVOJmi1hIkKbkQu1jFPVJSBoggtv4wj3q08CRSBwpoa8fjXyRqImxcOx+DZY+T4UoJ
	 uWWa93cZkE1Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC36F53D8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369089358.1079.5352902220048826396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e07a0bee6dece7f0e8f7ada873a1e73a52b792cdef8e2f442f636588a8b8fd
Date: Mon, 16 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773690893
