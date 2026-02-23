Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6C83033CB
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771887294; cv=none; b=UhPqDjs+BtM0sYrS7bMQukVnwaSoftanGDDdCcSt6lgYzijukIpWU31UFwhydX58WPD2viV4Z2qMlGojI6zOKL8a0vSyFyivkXKkmb4HUIlGkDWPWA0XTHzC3/YGnSnCzs7H0aHyb6/xqDq0ceVnyHceH6Zkjb+Mub1UR3TNC9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771887294; c=relaxed/simple;
	bh=6RQZ54JTiebUOSDKUfaDuKxkR4L5zUGtZhCNqOSspQg=;
	h=To:Subject:From:Message-Id:Date; b=UTEKVZtSZ74xTaKPSfXEthpy6m2xj9SY2d7zUVeMbIirmUj6Sea0f2RaKdfKxfdSY33oFAvrFtmLsreHqWudxzq7WKL43ocDuhJWUORFyHnvHD4dgB9J9/TzaB7yLv84zC14ICBIYpJPUsn+Qc2HjyBznlKa8FCcuu9FuSPrSfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/+uAoSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/+uAoSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF23C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771887293;
	bh=6RQZ54JTiebUOSDKUfaDuKxkR4L5zUGtZhCNqOSspQg=;
	h=To:Subject:From:Date:From;
	b=A/+uAoSzJqBypr4eIfT0xnj34MT9T32fSZbFkdKU6uCOFixVc+ZqEWLycEZqZfASa
	 38wMCQZscGu+tGyFhJZqC464LM4BYWN70G6QNaRaGBZSihW6TRfpyi7UdAds6YMTWY
	 U3TtNOuSmpJzhm0R9/QshniveTTtfVNhOiuE6PUi7OINR5RsjqQS7xF/5d3k0ZYT2z
	 E3R/sINld48chUXHN21jeRrkbfPRwTbcZxf+rWqoI4kxxS126DFFF9zs36QAovGvMd
	 PcjmZN1z1ljZG5d5GK33FBBOw2NpAaZKFkPetcefG2gxqnCaiOsAkB8tOtVwqFZ8Yv
	 B0gkqNh0UJk1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9CFEEC2A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188729363.662.3762782136562567702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff1595e829a8489b1cf0f1da5d6767c9a30ad6a2fecc645d0c519815d74e7ce
Date: Mon, 23 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771887293
