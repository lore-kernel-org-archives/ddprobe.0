Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574BA2931E4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785690034; cv=none; b=OVHPleEnIa5FBM7LDIuynzjmnqsqqKLT+CEZWWPoc7zVhsWOlDDQfVlZDnQ6x2jKK+C9iHRz1UvsZX523urQiv7jhx/NFbKOcXzMy5mLeL9RZ/cq1LuhtJWkLHgJ58VV09Y3HVIxaw6kFageqNhjoLzvpqSbzWuKqmFVZGXiPF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785690034; c=relaxed/simple;
	bh=vNBTmZJeBMO7fliSuOdPFnUpPpXA0u0KLzKmLX6aJTQ=;
	h=To:Subject:From:Message-Id:Date; b=WisTe/OtK6J3Rh/cW4H6CQhVadH7VYDRwupTmlRGYLTBY9HvPavJGhzE5D4DTc0vh/fyA994nm/INa9oDX34yfRc+sVuuD7zcOjsSDAmTKQLS/xavlqc38wPm4tgdLM8tLGF+MT3U90fQn7MLic2qU7t7zxIVlYrqSZyXAjkLaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9L1GxIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9L1GxIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07BCC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785690033;
	bh=vNBTmZJeBMO7fliSuOdPFnUpPpXA0u0KLzKmLX6aJTQ=;
	h=To:Subject:From:Date:From;
	b=Z9L1GxIf4xtJeXU0bB6AvcV0sY0miZ4+cJZ1OFd7fpreFPjrZl5GxQ6vv+YGfJJ96
	 QgcFk5yVC86xAp4DCT26NYyT0vEQWkbYZp7OOUYt31pV4Mdd8qjThv4sG+BS5loWCP
	 YrTfBi4n7EVwP5Ye79LKo1aPxiDvsD6IyT6GSuCgLJVByuDisTwPgmdHaWXso8S1Xw
	 V384HTn+PhenlKfKGn3YLDrDbwRU9yn8BQZ6M/v+Jqus5+cJ6XMc++dv5/0pIzEZsV
	 ou7FCQuL5RUaurAKo609PiTmlb/c7NQtjyTUilPL9um4In+5eGYKptdYcl3sgTZRSL
	 +/uytjmFcdWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C6C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569003368.29455.2979185830333116010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2291b69ae76f7b8536630860c12724d7265d25050262feef9e750fe4712ba305
Date: Sun, 02 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785690033
