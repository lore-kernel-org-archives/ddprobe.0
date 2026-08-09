Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424A22E401
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786317634; cv=none; b=nolDq4HzGwekoi9Y33/yMAkD0i5//LPotozXnrr2c/gRlZ6hMqWuLdiJrIBcSmujqkhjqOinfSN1afkKlqo0zTcv64vmDcanN797Wm3hX2x/ThqriEcBGiXUT/bdRuZlMb3C+/p81bTRQjhDnxozhSM54YRXQF0ElZkGeqWvlI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786317634; c=relaxed/simple;
	bh=oJ4HGseVI3/lotTAa+nWSZfGatxtAvLXCRO1BUmUjf4=;
	h=To:Subject:From:Message-Id:Date; b=Yunut2hdsBYC9la6xBsn/DKFaYzi/0usJGciEAObTESje17JJ/wxNoZW6yJeybVKXCiQnmi1yVfrenZXQXlSOccQDO5BI6NXD4/h1877HLlHxS3ptN+Zhih9UQlKsK30DgXpxXTQT5WoQ05uOnQ4CfGWZeHFrgBWK1xh06Q/gbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUF93FNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUF93FNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BD2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786317633;
	bh=oJ4HGseVI3/lotTAa+nWSZfGatxtAvLXCRO1BUmUjf4=;
	h=To:Subject:From:Date:From;
	b=cUF93FNumvHqSJUi4ZkYO9IQIt8rKH60U+YUxezVbhwwXfpGZPcE289ft4yFCLPjT
	 aTO7ldMWwZcnD0RHvc9yANlR1WbKxhPF/rkFJSTxYcb9TtBoRJAhk3vKCQgHIE8mSj
	 jW+m2HOzpbDFyUTMEHo76+WI539CXh6xJhb56O4/SBfBYukjWIIpL48x9cEEqPSuEl
	 v6qDODPhGZO7ChkOxPe1NTeauxLWmF9lu8k7fAvV2IvCXJ6gIaYwv/tkfYs/vxEMwv
	 xy+xnQfoDC7o5+G74us1tGP686GQFLvNQs2eEhonOPoMtz2W/eFc48WUpx+no4HW8+
	 oPIu19q5wZbwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE67BC5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631763370.25635.13195040313151795909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b6e4feebcbd67c3e19121924c647073805907869721956797eb789f020ca82
Date: Sun, 09 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786317633
