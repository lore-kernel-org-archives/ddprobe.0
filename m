Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2441BEF87
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748856594; cv=none; b=ZYjjUHboWTEs+5Jub3I43P9CF+it6Eq3y4R2KBGtOUBjNncYdCUcf33IbSmMbHK61vlu0hR29/mndlG1T8O3pYh0aC1O7O0d6xgc1CBUPlsPCe5XCYPunGdFF/E/nKLmrz7EVUd2PLe3aGvsmPgeCqBhRz8ZwY4jJGEhPe6syeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748856594; c=relaxed/simple;
	bh=8S0ZkE+79a4P6pmDdBZMVkTZ+YUfhVwt8ruchsMmdKo=;
	h=To:Subject:From:Message-Id:Date; b=IFsCTRPT/flSmDWuPQPJZ615uptlA3oiIOgpu8p665P28Z4zH5Xm2B0a/aT85cMUP67Hj145BUu/bh+3yQvQ12sLexwFhuTFU5j8hrfF2TzfBQx93El4dHh2DFFTGDWGe+pno3efw5vqKtb3oLK4zbGihfF0mxwhVB41A+w5iog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3LSu+Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3LSu+Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9684C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748856593;
	bh=8S0ZkE+79a4P6pmDdBZMVkTZ+YUfhVwt8ruchsMmdKo=;
	h=To:Subject:From:Date:From;
	b=d3LSu+Z+CxjCGzT6chL9adyKIGscVXQFh7pXjw6I6d0rFB0noDjhnEBTXAtorNMoP
	 +g5TT4mQ9dtzWMqu6C506+9EDq0xK0VyJwWK8wDm2n8YBEEIqTLV5y+bP7e9wcF6qH
	 i9Mi04al6NY9zIQ2gvqZ9WOaXEAicSXSZq/1TUubt/uiLqZCESR0YrkzNQMlW5wsEd
	 JueC7GpCHKQxm7DNK479mBQM+Apnia5YmmNVScCYsb57IgByOLYtyiDmcfDN9TNFGF
	 tZU3YN00qI1Xplsk8XKgw4ZpcmO5W83d+p8ede2zKFlABLhRZbgwlPN4cjudmX6YQC
	 xYqj9hcwguQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760EC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885659361.28792.14175604739319125104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580bc536dfd3f4d971d3edae3d02f5618d998dc06b17cd8c6acacbb1dfc259ac
Date: Mon, 02 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748856593
