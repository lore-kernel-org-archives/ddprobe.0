Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067C417365
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783949914; cv=none; b=j7yqauUICVfe87TPZG9Lmxf6f6D1i1k99Febvz1ivY0KNw0EmAsNAf1gjak+iMD6JnUq0RHVdq7qGkoa0oIQB9TUlBv3f8WJdo3pGjoNrF+f8Au3VQAR9CIIO2dyNkG1FgVxRRFnN+0FAyav4JsGvCtsqSOjAGZ7wTwJ+VYhLkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783949914; c=relaxed/simple;
	bh=wya5Q4KaIqdKq+jz15tfZjCSGuKzTLu6dp5kzLh9ibE=;
	h=To:Subject:From:Message-Id:Date; b=seBhJPGITeLrRQVfbabjxv61RMIQTsZHV7/01qUP2ZapTsajZgGDdfzNHXKLfMe+hNbExukcsQ8QhxLni/wPPn+zrUm3cuKKhHDWJ4bbTc/4YlIIz2Y1tweqTosXjoBtUJql7IRn51AKXL8OYnRU0dVvXTlq6QnT4pK8Ef9Hfhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5ak7jAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5ak7jAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB353C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783949913;
	bh=wya5Q4KaIqdKq+jz15tfZjCSGuKzTLu6dp5kzLh9ibE=;
	h=To:Subject:From:Date:From;
	b=h5ak7jAWghPlXEyKOfzAq8Ikb1OSN6M3nbY9gYZ5zOXn4xTWVSgI47aVGxZu5IeBt
	 9ETPgOJ9pj9gXOwIxSeD7S2sY74wySjVYy72+3gC7b/6He0mJCz1T6PXcQwuGmVphk
	 im7mTfOZIe8gU5ogKcTGX1HlKLN/DI7TT4gH3zrcRQPWP8VNXdP3tBc5ZpoH6Y/HfA
	 L9FvA5oS0mnoRTVHOxQSbnV4ZSj9Xcl6Fklo0k4ghutpmHY1XDqTHP6rdkiz6J7xsv
	 my5QksiTobTFcfNN/8CS0zakWoyHbDXKHVC/awSK1s8ZCuGR7Xtsq8g+Sn3SYQNTIV
	 WRwrVhcv2s4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85A2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394991368.2362.16215874183688358012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914f8bf1d73646676fdc99ee2c2dd1a388fb610efe2b2d19e507a993d23a0f87
Date: Mon, 13 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783949913
