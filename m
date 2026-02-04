Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237352BF002
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770219834; cv=none; b=bhqozXMARkeol8vwL9YN5v0D+HDd7RAJnS+Gsc1nP/jvlVkAQfXp+4K5KrBAWtl0ApP6M+Oy8mwquaoVCfRzvfbF5bwp5AmNH5H1pQbChlZzm9qqyJb8qE8p1Fy+yaoiUJv6gBXlBqCCHZWv73TrRRSf/QIO+oIKv80cp1bQBdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770219834; c=relaxed/simple;
	bh=avui4HBn6IQsd+AKj0ldHMQTWlDS1v81rwwbx//t1v8=;
	h=To:Subject:From:Message-Id:Date; b=L+ebKHmIJCI0tkY0a4kb6Shmzd++UMR6zvor9qkEYKe0mkmOCGqy70QoniKMXuT9k4v86E0PUowjLe6vdKijnm5w8clQGk0DIS00oh3zG7L+7OZ4KGYpZiSg6G2LXGefhqcmxGBtBmzEofg/N2FOc89LM5/6J9ry1Fsx/8hZVus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nACWIo5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nACWIo5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C1EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219833;
	bh=avui4HBn6IQsd+AKj0ldHMQTWlDS1v81rwwbx//t1v8=;
	h=To:Subject:From:Date:From;
	b=nACWIo5KgF+sX4PW00CSgCjexbdPo2R4jtukmM2K/MvF2tVxnSVlAEcYymAHDbaVV
	 hSYpMqzvHK8u55zHl3IShA0jqwtavoY452sfW8WKZCFry56Qm/TzKV9LyIVfZCaVcL
	 7medX+95+wCTN056qrJLMM6tPbXgKw02oY4oB54gQuakcLtVQzHVpm+cP0SEUQ/pCl
	 0HlHK7vVtks41tcOHaO241pUXxaolBiktDaFTjyGp/dmnzLIuaEd8BcWu8haDmUx8F
	 1srWM4frzAJ9fxEF4456b2wYUnrdMR4lQLZrJl0mfGwouILSXsxbk4cGGedDUcmE3Q
	 PLVGCpebTQSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11A3E9D403
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021983364.12051.238109455947434329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bf8c23d057fa5d1a1c071086dcbd1d27e5fd9cca89b9e4f772966cddf02fc1
Date: Wed, 04 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770219833
