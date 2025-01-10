Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87D220688
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736552154; cv=none; b=J0sYYSpoFv6F8CCDD/B2rBajXqtxp6Vyg7GQMdium8LW46lv6KzEy7CwL1Eca+dGmIgP7UpqgTsom/xl67SENmzR4IF4WjATCXpwc7xbAL4q8f2j+36ashao/IS63xA8w9mkqN+YTVqJWjZWKBwaDqnn6VHplvDyDRSNG1GY1mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736552154; c=relaxed/simple;
	bh=Y6JhsBU9lC2vAjKbG3eARAmZAaFHOXW2xlvHVERbQBo=;
	h=To:Subject:From:Message-Id:Date; b=j8ZiIo+rvYGmVOwNVXPxQ+2tkTqGctPD7u0W4bHMemaxw6hVoRo3OyJnGh2rpLUz+8yOx1nwY5b2ucYQFDeSKQ8nwzk03hEeYrJnwUZeNiQwEPQpjd2TTRwguXidHxeHyEnV+qQShnNFPQJ/3ALp2Vcv83F1A4xcMrZEPDmzkZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puNtjwq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puNtjwq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB100C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736552153;
	bh=Y6JhsBU9lC2vAjKbG3eARAmZAaFHOXW2xlvHVERbQBo=;
	h=To:Subject:From:Date:From;
	b=puNtjwq2Bzy+kNBIgRURyiOSOfwFQxhV2pCj/iZNnQIh3kv6TIXeZPYJiBmk53T0G
	 vX162qF2//rAUwW1FxIMwu8KCEY5kMsn/q9TcUGiD6p9GtWI42v9KIRFNQ+T/GlGC8
	 vBg0KD2ziwJJRR0Xq/q72d/nD54CGqnhE4sL9Y7JwKEvghFumUK4a31J7hAzQUt4BG
	 Imbbhy1DaTu00jrVrJb2twAml1n1Dvd7acK+yY++vZKO5ysZIz0sFdBm233HlmLwBU
	 ngMCBSoOI1NZT9NM0J7+sl3BDM7E6E/sx2jW/2tjUFUSaz+tA0dnZHD37IgOAR8RqY
	 rDoWvAvwBbTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9604EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655215358.15888.7166283971285130680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e36625c146af13e8245bab7c97f57c20be3c49a076f96fbf60b020ae9805d6
Date: Fri, 10 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736552153
