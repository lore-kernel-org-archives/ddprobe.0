Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A53A7F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785259834; cv=none; b=M8zGZEY1gDH/hkQaTcln6aBy9SQfDl7AzsyiVfXjHbJvNwMyWMhTUYzR8CdFyN4Z24r+662vTaSkg6R7BXV9gxIohiZWVvRtfA0mK4XMnNWQK3GLl57CB7JqlTYA8xD7t7ggdUv4r9ItxwVIAt5jjpkzHOMZQunHovBn6wECe74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785259834; c=relaxed/simple;
	bh=J60T0m5KReQPAnyDNyyY1aIljE50+U3HJu35+sCgUS8=;
	h=To:Subject:From:Message-Id:Date; b=GowJIU7ZO+FOpB29tCwJTiBNY0CaTwanM8RyuRwzJr9N507TXarJuBeMwsPxgY8H+/MsWh6/Qe0qRl2sz4NzKQPRBw7VcXcFHuDzTuLDXhnqNpjA39ZyB9rltOHZYVbOaaBiw9KLKhJd4/f3N9MlKQG3Umb5qX+oBG6DaeSPMho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzWV6SkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzWV6SkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE1FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785259833;
	bh=J60T0m5KReQPAnyDNyyY1aIljE50+U3HJu35+sCgUS8=;
	h=To:Subject:From:Date:From;
	b=FzWV6SkTsasjOpH2CbJRii+Zr0qci+hAuL87vA2IinQzN6gHGfLYA2nIQcakprQYV
	 yZutJlOwqLB3wx6NSRmBvA4mgLa+P5xEa3RjBgiAOyXz6Bh5Xq4LcAmRbH5i0sRgCS
	 TRO3C1Cbplc1X89ecBMpi2f+zf86G0mhhSJ81+Bg6GRZt2WtwtJovxhUWB7Flj11qS
	 u7mEihwPyUP1Ii5MJ6U3/2R5lb4bRp0JI9aCe1tisLXw8WZbfKcCM8FQvrVGMeV5SS
	 k2UdlFhI0yH+iP3s4L2P/ljFtPMnFjsjTlcgqq3SYj+LdUdXegvdxRJX0tCaZYEFMp
	 snaURve8jzdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B72C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525983368.13485.1780720202532261991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db9b479bde9fbf05b64c60f82c0e83df2c905cc5a1f5ce69604413ed5e18b43
Date: Tue, 28 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785259833
