Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496DC2ED159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750262996; cv=none; b=bt/Gs6xkv8yvBtdhqZjMVVxmFZREPrRFFsWufW6vK/OaO3I7TMSUIbsUJpvYZKCMjAiWZsV0RCxUQJ/BXiks3aMDvgvNSJ+2Y4DtJ7qHkH2whbS1P2u86QOGgWl08/GlKEhrxAuOXriRelsy/641GMKo5GR6XZcF3NWpaz5m8lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750262996; c=relaxed/simple;
	bh=s5w1561zb/SXwlKrWzp8pakcA4j6w4yUEwYrCKN/n8w=;
	h=To:Subject:From:Message-Id:Date; b=YC/6LYNishdPQopmFUaTcm85kTBpNiqFyr7D91eBTYbSDPnaELzl3oKjCK1v8aroZPjpCn3JPiBYwhipfEhsG02nGTTBhdVN7nlnERuwoEynefzfl2b/pjLpevr5tVlNOAgbjWMEM4sfyEG3sVwUFxf9r5wfNTlKe+R/ynzLjHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs8lulbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs8lulbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750262993;
	bh=s5w1561zb/SXwlKrWzp8pakcA4j6w4yUEwYrCKN/n8w=;
	h=To:Subject:From:Date:From;
	b=hs8lulbtGZ9/8HS/VH+8KPi8P6ag/k9SHEK4IE74EhyrINgO6G/yAAeOabmjXHdNN
	 IEwYt0JqY0FydrtwJxr/GOGdKxmeNKm100xuwCZOC/AFWK0CxzLxPjVE8n7ksIffV/
	 Hedv7dpumNIl9cv1OEXm/93ES07N2BS87/nD4oNesy+HvIIau9SzpwBJM8kvTWlgOW
	 9dbDoaW6d+d8nhq5+KgDgTrMFMAiFL5QCIcINv29R5eELu6n3ES/0IAReeOCbnolQn
	 9YxuZLXeQJEcY4qF1hIy2XHtlmrixOAkifWCOR5U5rYGnKQxgFh/1yEDK54WA0oqmc
	 1FyC9ljxoIycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A2C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026299358.10110.15475403856375427135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47e753cf0242c67644aa7fccb1eead7cbc605377c9a724f0dd5a84b89e4b449
Date: Wed, 18 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750262993
