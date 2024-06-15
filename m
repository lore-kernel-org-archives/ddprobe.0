Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C50946F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718459903; cv=none; b=qHNz+Cl88rHbku9cTV7yOYnXYY0rG8uHSPxnJokj6ot5jGRUlr0Rt4n++WCDWMKGOM+pBe9bhNqTFeUV6ksRZ5/w5va4c29RJeoWURt+W5jPl8vSpvseSk5H7cm/IopKN135PbaPq7zE+0tdCTinKQtZR+cT6VQ5Wj65gy1Z/6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718459903; c=relaxed/simple;
	bh=VXd9eVTh3neiJbTWWtZYrB+gWMaj+SHNQPHh1uUW3iM=;
	h=To:Subject:From:Message-Id:Date; b=GfCTqc0PKcB97Wl30vG9WMW28PQBIK0kpxzpU+keBhagfwDL4oJHEJT7qULlwPkEzIKjFUwJ/VXo0beW3NxH8gdHUvjcKTff/zsE8rl1uDfOP1jtjMDoL+3hcFV/rvKE3Yapda5KVlE7y+cCv0um7InDVmWvjP0/tCFqV8j1kFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uofukv0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uofukv0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DA7C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718459902;
	bh=VXd9eVTh3neiJbTWWtZYrB+gWMaj+SHNQPHh1uUW3iM=;
	h=To:Subject:From:Date:From;
	b=Uofukv0keCRsoG9+WniUWuiC31N8FCDQN+ZCXoPU3T8dsGjkv3aj/lmNJqpQUytkU
	 DPp7LQQcT0twwxzVJJTbGtQOt2ixR1bwIYAe/GFEznqwyp7vuGfNKrldKIlFM1QyiP
	 raABHvggKE7aJjshnmBJwkARv2K0U7SF+YKhvkdW2fAOaRWYZCONHupzWR41GEzHvB
	 +wUz7xE0PJARU1hiXgz2K2ZJqQZ9euUDyiwMur1Hp2Yx/FXCoyR0037EI8ee2Th4q9
	 eNowwkz040vsm26GdejV3G/ahr97eYrfcJpKUuUdLx7XykXips+mkCN0jQqVHvqvfe
	 ZBEhBrS6g3ERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD266C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845990280.32483.16862284831332037753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a07b3f0738f16b02fde0865010fb6064f4ee433a80b72d28658f628ae55eb4
Date: Sat, 15 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718459902
