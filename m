Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B8B2D7DCD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758028194; cv=none; b=ka1JIfcoWbBsrjIzC+0CDu1nOfgWo56DSvRLdqi6uvt4WGIQpoUkuMqoSHOVrgYIQCU0tqv9gTtRacdOWu4rXSLrxctJLh2rpr6juAfxSmO3wAW9YXYW9Nnbs/wkAdpRLqq8zBW+TFzOvynOL5pweemlGHxGlDn2tTYgefrRspM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758028194; c=relaxed/simple;
	bh=lyu3tdTPIuh+9dTlC93dn+Fuvdvu/M6qjLavY4Nx3M8=;
	h=To:Subject:From:Message-Id:Date; b=gAlBunlW1JKXDE/HD8bcnkHbP3RAYerBd6DSS6PbZHoa/xGejqGUx5pM7ViijaSaHDVWEKMGK6BSpKvzAExCSVLBsSvIaxNPLr69zJysL5HIAkmytzRQi1/3dSoxLbaXvz6QF3InL2OXBICGSYJAaNlOIFMipZmd5i2RvThuf90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWwNasGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWwNasGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCDCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758028193;
	bh=lyu3tdTPIuh+9dTlC93dn+Fuvdvu/M6qjLavY4Nx3M8=;
	h=To:Subject:From:Date:From;
	b=kWwNasGd6EBTk4tXTiYT92VwCylZp1zgFaJVKEENPD5bsRv5DjZpkO01eeCpe2I1i
	 tcGM7GSauzLwgzletaInhOWpVqGAYFv6B2iFqC86MWBQNZyxG/ExnoTt+9y909gY1C
	 zNcRGdGJ+bpQiNoW7PDllo38S3bUE+qL1LIWvm7Xzw3sS6Xozdvh7m4oi+1yl1jo6g
	 aHtNk74AJYjyq+kOmQPGkLdaP6zdTk0xQVKSYvwj7pQnGKMrRUi1FWowM1oc/+REWq
	 oovdRTW9q3/AMzfWmHTHANkYAEZMkjgzGrowl4N2xWEy0lT93iaJ5xsDLXAtBdekJZ
	 mVgOxWPpoyYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAECCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802819357.28475.15628125365714395640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b93362a129afd9c0988e3ef11079a4ecad2ddc7b210b273064d659c7178321
Date: Tue, 16 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758028193
