Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328C517C21B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726844154; cv=none; b=ndWMXfUz5j/OQ8vJZercN899ipM37FSB8i5LQ8O9Zxf59uw/8L0+GlovnmqrfmTVuwvBPtns1cnYeGK8tVl1IqeWny+iVbJkMmoHNvchG78EOOsDYPWMIEfc6nGqLsrk+IGONJ7mWpR/bddPm7PdAD1mgJVuBZoZQbe/ZmDshNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726844154; c=relaxed/simple;
	bh=PwiNdZhHud0Tm0XlhF/Skx5l864tVOIJnuW7VXk20Ew=;
	h=To:Subject:From:Message-Id:Date; b=jsQtswC3bOG4P8hNRAz7KygxICF7WAQHxQC0+7AlbMH7Mt7jztLzKChhko816quKNzQLQ2kqevx//nvPmXZZeD4B1za7zGG5PZB0xeQT0uif5rsVkkmisPfNGBEdzscig6OVay2sytiUgnrB4H0BSv3S2bHFLquwVjaYoVos1og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ksfu4pIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ksfu4pIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28ECC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726844153;
	bh=PwiNdZhHud0Tm0XlhF/Skx5l864tVOIJnuW7VXk20Ew=;
	h=To:Subject:From:Date:From;
	b=Ksfu4pIz81lQ1FoYa2XLinND17NCmSmYawOT3r+c2bpxIzuaGZlO8pFeAax9BtN5F
	 0TFhSaoraAxkhhFqdKsk8pR0bHUP9bZvYKB1p6nKS7Yu0zkSVLxiKJrIPYDf7KCArx
	 qCyqgrpN6+z9SX8GBvQbdIrA2UO1sEaLR8VemYtg5Q6ecdGiHd+mrAk7QlK3li+O/u
	 J9CWAHAQph5pLXthMOOY/q3OHng1+rJt1vfkwsbEYoK0YU9NrW4fmZ+GuoIdDxxEWv
	 ifpIOIKGJ+8NgNvWq1QuCA9j2X9Ifds1XfRMe98v4n48+mMIsrLOyPN4bCCu9PaJo4
	 A2DG4P1WzrF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B6C78858
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684415358.32424.7240623455074740898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f881855f24f8827747e0b1c2c688d0cee6ec692e00ae1d6d3b195a0134332664
Date: Fri, 20 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726844153
