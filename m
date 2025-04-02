Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAC2126BF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743607195; cv=none; b=T/whnMrg2npvhvthNN+K+AL0+W2oOGA9vxgjlbu9pnApwr5RbULfcmX77BBdMSGTTeUu/NidLvE8ppvLgFPnurLT0Byc5zJ4CR1YgErzDs30n080ttuLcXrgU4eDxkM1GCiFt0ao9f1qXKEJ9s3zydCgeGsveJfsIp7OWuE8yZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743607195; c=relaxed/simple;
	bh=F1DcZ5PkGq+rjaCX6rz/ft5zwl7oGv7q1AHn/b6nYMI=;
	h=To:Subject:From:Message-Id:Date; b=o0r+23mrXDcOirckgw2xhjX4ppqFg+NVcT9az6ok5zrzEc3qwJ/NzAEEpdru0SNdMBGIH4JZFuvzPj6mkM23xwSAgzOYZSCZ+dFFeYVlwbBDyQZm6kY7QUhsazNrZVKIWitNtt7TCaXG+3U+7sKdcz1HAo2YAR6jnZSMmlIW3/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFicoVvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFicoVvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B342CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743607193;
	bh=F1DcZ5PkGq+rjaCX6rz/ft5zwl7oGv7q1AHn/b6nYMI=;
	h=To:Subject:From:Date:From;
	b=EFicoVvpa0mUbl+/tnQupTntf0Ax2FSt5zr0Tfvezx0pgslVNvEutU5rBquMJ9luO
	 l1aEXMhCleXrsmG0VHY47agvkaEubA9+2bjsWTiPdPikHTbF9wqr5YoKB3fs7CvUIZ
	 5zILVnawYPd2UE4yZ6/KXJmDJdvVeB5IsaUVqeNrS18e6JvNG0IXwnA7jCO/vBqkA3
	 9N//tj3TnAXpAKNFWrl1/HY/VjFImFUOKJuw+Rpn59PxxAQ9C8QXpuaJaivaN6um3/
	 szvbqydZuYqSrGVkyUDjBaHMlKe7iPhS7RSz2kTsnyTmPfkuZpSjFFXmnvGpCK66CM
	 U+kuGSq5m36jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F806C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360719364.22129.1129891789119487458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba32481e17710df9dfc15f7e17015d6fca4104c97a2f3bfffca406e09219066
Date: Wed, 02 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743607193
