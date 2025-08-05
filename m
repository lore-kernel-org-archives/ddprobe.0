Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15D520CCCA
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754369393; cv=none; b=bP+xXxoPxbH5szndMCspKl1T4+V1Hrc2if92jrIM8dalkmaysFHypJHkzcx6vSuvrE4jY8i+8N2DcfiU1scjy5wcIvxvcurwYbVL8jj1K3al0zj6b8QpRPtfbbp0ZaaC6L9ZsOalheS4EgygRU4MiAJAttxiyevAW67Fsa+DG7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754369393; c=relaxed/simple;
	bh=Hm/3SKqMEM5AevhZdzZq3HB0bcQVBqtnpk+hxg6dXmw=;
	h=To:Subject:From:Message-Id:Date; b=LwzPbljKDyqPOEGCZAALcbHUdqG1G1/7a0JGd9mFmcUS8Lgp9ax2rwxvWSoBsdI7a+NaJc19RkmeLOgCZTc/mBAAu5JKfCjCJmMkNB/xz4T/ol2JIJzNBmE9R5Uw+WudSOzWvGdcQYd4X3j8LKjSmPVkKvbzMwHuK4N/JY+wQRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB7YtsZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB7YtsZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6EC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754369393;
	bh=Hm/3SKqMEM5AevhZdzZq3HB0bcQVBqtnpk+hxg6dXmw=;
	h=To:Subject:From:Date:From;
	b=pB7YtsZ1mwEv90X0948zT2/V7dSW80XuCrBpRNQOdxCa8ZGMSI3OXHsLiaj9VYLPv
	 qSOs50/dG5MzrZZAVeJu7/XMeIhwIcr7/ZJmVPHeD6gLfGd+YRvpDI8hmT9LrktwJS
	 iC/hbjd0NXrcugwkdr/HrAwY5bHB4UMS2pcBT++usd+xa5flqNOrDVJdCWjxtz9f7P
	 IC5JuXW4/Wpcm5mZZYqhxH4GWwfAqTv/gIfFYXsWcG4UWC+BFw7QG9224nWVz01NZA
	 CqTVHQTk4fruQXIiAGldwfS/DJYKzufJmTND/vRKY/w5+YAb7XGcLvpoKXLhDGTz8E
	 3ePsU0Hun6Wkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002AC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436939357.8150.876249283778603785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdc0a0b0d3812b70b583b78f10b1395c4ecc69567dd06fe6a1a02250b34f7b3
Date: Tue, 05 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754369393
