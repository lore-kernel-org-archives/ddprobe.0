Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436AE2F41
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747983594; cv=none; b=HJN6e7pzVDzz3WOdq5adz6iowX94cWlT8DT5+O84aK3oLb8JdvzgCyG87Qm4TY+o3pBckyxljHU7j4WMBFS2dO6XnnYEjxUUMZP07Y8I10K4vxBs0WQu4DCnCxYrHMcs5Iu4WR3MVuHKrDb+/Ot7zewV79twbuB84PjC8NLWeMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747983594; c=relaxed/simple;
	bh=klck85QcQRebxNYx+rUfW4ybCElSn+uuePSHQ54RHzQ=;
	h=To:Subject:From:Message-Id:Date; b=nXXknth21q4DmDRe+cbVUeh/K+lEvEiuuARg0W7/JFQ759WlaE0B4z4iNNyQX2UR7jscQOSrhq+TPwNkKY2F2kDV9teJ+u+Gumtd8HXxV+TmFFX95fRgZe36Rh54bEGILJA72nVu03uhAEAfb81AuRNNWftyvx4fMuRkaUvcLAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdFFX9aX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdFFX9aX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747983593;
	bh=klck85QcQRebxNYx+rUfW4ybCElSn+uuePSHQ54RHzQ=;
	h=To:Subject:From:Date:From;
	b=HdFFX9aXNFJSu66PcwDDpFA50rxc3vMjfUVyfo+R2qAZqRtQr3pLJ2cEa/YIxmEFM
	 IDd2akKH0D0XIPFjl39EPJ5bXcq4AMSZ7vhJl7axiNzA65dFGoe1YQenAqrbHWBiaj
	 5ZvVAdOCi+MlEKPrMavQgeyX21HNxoyXj0xOPGQZ/ddQ0uSTQ7YY91lC9yParonoFu
	 MfTVFfSjoz6/dITijjp3XAXFIehcgAjl0GnUMW1+Lhr5xhJybEhL+U+Ia4yYD7tH50
	 ZpJAq42JwinJAoCW8ZG9sz5xj1lEcDMtYY4sC7FwyyhHA/sgzuYNY2ks1Vind45XWm
	 HvJ9YXgdfnBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C43C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798359358.10109.16864325948823350789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eba213cb87efb8a2f07907442610e318247486a79305d35e065714d0cd3c5f4
Date: Fri, 23 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747983593
