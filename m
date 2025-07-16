Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135982F5320
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752682194; cv=none; b=JeQksBvOXAVu+nBnjAeqFnqjl/kRpg8tSO4gvNGBjf9LKXn5Xhl3Q3eBSsbE57L/3w6jSQy/Ay5ijwEl7iTIrafVk8jkOLrz0SyfKLZjBP0S8vtFYaoRi+dSLeUVJYV612YYqg2QAMZ8mEYxKK7ltFEAUt0MQT/upLsAYPyvmHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752682194; c=relaxed/simple;
	bh=eBDb6VZ3nj2I7d1+goqwt7j0KS4/eG7O5ng6WhFpBZA=;
	h=To:Subject:From:Message-Id:Date; b=Ijp4Ax8VH6tqACQtqLXdEjAj/aIyUSCe4GsnnvglFegjAub/4bwE/bjfGVck8lFjpmdXLH+zD/4pKc0ydSAaIi/gJuhXTWJBTyxzb5jELtzQmsXXRbNQhT/HJVUHwBRmtYBpOZ+r51z32czPxSZ5d94d9SXwWrBqBvFC3aNVfyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScgQ6BmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScgQ6BmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752682193;
	bh=eBDb6VZ3nj2I7d1+goqwt7j0KS4/eG7O5ng6WhFpBZA=;
	h=To:Subject:From:Date:From;
	b=ScgQ6BmCyELF0FHI3YVVNbOMBl6R12gnelxXV8XOon2D23ySHWYF/Hqc+R/b9y530
	 bx0HVJDsRrtvWiqiCZ5Jir1ZLYuf0xe8O+hYXORd7JYvBo+CXFRUnRItv2PIOujhwT
	 DKvaMC5dnZxw4UmsGphJy756lQXeLt8zYM2zpbPZoMWb3bd3nQVdsxjTpnF87bInMW
	 KvfIaCa0cwiEVOQeael5TjswmqrhfdMKfmevAhRQY3B63W+YZR3JtZOVPCzTRA4anS
	 d1kHtMw4AithbnZ5IqiJmRla6FbLErzQ7igNqTk5cipQ+8j0afwUVNjnZf5otT3Nha
	 ZfUzKyAk3CLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E3C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268219358.5351.14887262649535493371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30b4fb51051c34e3fdd24be4515ca53a6075457ccfef548a1964c54ad6d0458
Date: Wed, 16 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752682193
