Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2C6321F48
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770825894; cv=none; b=MPctC+K0t6u/+GZJFyaWnU+rWUoFlEyds7pScZXCCf/VQdWqTcSbHAEKXFlRa6ftXFrhDLEK6nIxXm3zTWTQ40CX+Oz7I4fwVm3ZJHGgm3wbQuRK9enmlVo4ymcW3dVeYQCo2TvN2bYGaCkVrnOd4t/IclN7e//psyxJ4dP8iwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770825894; c=relaxed/simple;
	bh=RgB1SDVLGjAZnafuoQClrOtQPrlM/XYZ+YCw23rEFeY=;
	h=To:Subject:From:Message-Id:Date; b=rio/S+ehOA5FUW6ySvV9x60MLmyZGiL5+4umYB78s4K4UGq0rfQ2VolBqQAyn7d7nZ8S7A+k+RMmslJI/oqyBlF2CyxKKL07D0ukE044zuqhxAkKLbokzX2Ts81dvKqrXLTUe46SEhjeO8KtC7nWUD2SAC2jOxgAEqMbVl9CdxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFbllt17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFbllt17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C249BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770825893;
	bh=RgB1SDVLGjAZnafuoQClrOtQPrlM/XYZ+YCw23rEFeY=;
	h=To:Subject:From:Date:From;
	b=IFbllt17i2WWNs6kQ4lPlv/JR2MNiDULNkQaaFMjuCviCMyxbVizL1N1PR/IMQKqg
	 i9BqzZeaTOA3g6ujtxy2W9iQbBtSxXAYLzbhT9bgOH/ROCJAS+UL5YM7JSJeK5ipTW
	 W66NXqjiFW4l+CBTX2pBvDK84EvB6oaNQFdDv9qlQ+t0dxSuC7idgqZO9ThEmFe/8D
	 GxcHb5fdNwb/sOBNxQNLNu8Wx2xwUut6/JHteS7Ig8qlTK+/TjR2My6b0xGGl8fmSo
	 cOwn3qgQ62qHf1jrvZL3+q8LSEuM2fe7NsxSFFFoRi45G6wTG5B25fmRM7ThawxBna
	 /x+vF31KBlXAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FDECD6C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082589368.10199.10275017703614178712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07556ae94baaecfeedc833956a2cac7fbd5f958877521668158dcc7783332d16
Date: Wed, 11 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770825893
