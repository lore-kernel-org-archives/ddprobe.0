Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508DF1494CF
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015794; cv=none; b=CT3iZz7MHmZFML4j9ZwYzwxj08aksNycvp8IxaBPY6C/ByOU5kQQ4tcO6v9ygDDzXth1/eFDzpbJVCkOpCVAp6fvb5GFkgqFB6dZBhXrddk//fu2aJHvgm5qHiNvapXGaG+7uQgsY8fC+rEHLvEVE1q6vE7UrSW9KhSBMJfXQ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015794; c=relaxed/simple;
	bh=iPJJreXWpKhxP0+ahhyrvMyL+bnyV9V3gBZw4E0HkxA=;
	h=To:Subject:From:Message-Id:Date; b=r+P4gAE3CRnzfI/EIrbNYO+BZg1APD80XZ9NcrllbZxhl/0CTHoFU+o+iJZmdjremHb8X/ZF6vSN9IKVFyJingjwhXrMejecARLW5M7l7viLzPODDOetkvmER5WfX8jsoYoJzEkwV4CzAgu98aTH8uP8y6xbB8v4f23WpRj69ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4SzEsVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4SzEsVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E57C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744015793;
	bh=iPJJreXWpKhxP0+ahhyrvMyL+bnyV9V3gBZw4E0HkxA=;
	h=To:Subject:From:Date:From;
	b=X4SzEsVvjmHyABuwouTcXVma+p/4390o2zh8DoIfWbFgHn3yHemk64M/ENbUx9A3A
	 WcNs0PHp7MrnPOX5xJ7vdW68K5wDVcbXSw5RGNWJDW0qmqIo8eOkv/Sbj5D1B34k7o
	 6ZlWqz8GK1WKNG7YunAWdLV+l8TX3lPvjHAUk+u9tuq1ZLxdkJpStG8gk0BYmN3Aiz
	 YG6RwveyBDY4WrPkA+LLF86qBKLX4pow4v+8Wu3zIF9mB8MDppSF7PyqvNB9HrzeQf
	 aQ4Sf/g/UKsTKQdgDDDWVor5gC6UYu8mzRAW410rH1tGMLBs+s30bBiF5V9cJeLWeB
	 FYxLrHZGwqg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F5C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401579359.3545.695500513490156689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100e664d7df8585ad4791175c731fb527cc019ea600f35beaf7b35f2b65b3a1b
Date: Mon, 07 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744015793
