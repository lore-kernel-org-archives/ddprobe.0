Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24503358391
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778138254; cv=none; b=I2gfeAFY8DwmnyyR5ko72Obu2JM7Zaqk3vcMrh8Pmj/HuR/buA0d4+FciavtB2G7jE95qk6v/GiADeIXDeBlZcm9D/HN5mvEmwX1vgPThejgHpiFMrsaEb723Bz3cgGGch53eJQBlOCeXtGCyqyBo6CkNFAYr4Q5vnGQxFVCfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778138254; c=relaxed/simple;
	bh=496LRGI6QlbC2yg8kYXtE1HVeigQLr/5PNfnZHK59uM=;
	h=To:Subject:From:Message-Id:Date; b=DD+u937nqPfnBPsyWUdIo6Wl4KFTH5PZkDs5gCouuUC1dz7lvJb5s4bQ/ZGQEd0Zf1nM9AYPhKa7QBwF942o+R48eEm4BB+wnCsCD4O7Y5AiuBPjgws22bcy233/+Rseb8cCqZmSkQ5IAo1acdqu0u9m3osgEWXy/su4JDrYFt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxS35WUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxS35WUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E88C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778138253;
	bh=496LRGI6QlbC2yg8kYXtE1HVeigQLr/5PNfnZHK59uM=;
	h=To:Subject:From:Date:From;
	b=CxS35WUWpwetnwPLBki/Ra2cRKsEHLvoCRJSbuwQIbX19zC7VvsoRkm7/wJjEaGva
	 wMVLIDeXUugtgXpDO/AfM9P0On39cRRIPrQmNjzpnlWlOIkcISVYqskkm8Zk3bfncb
	 cCCh0sNJEr/GbquvKZaqUdO6ucSj8q96OhbICFkMe0UX8xu3ApWQU7WGac9MyMZL56
	 qBETs0sSawXxU0cYRl52JmWfS6BgJhtHEogrU87J3ov0oI1TxqKocx4b4hN6YhNhFx
	 xvkAYolgikxwPSAnIjMLWahkSWzD6NFHhGR9dIR7ZAj58+IuFWzrrUf/a/Rk77nBAt
	 f85ojT85Occtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B424ACD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813825371.30909.16737649197745420302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ddee7b26bd15575a46f10ff2421aa48d30f8c9d8a02d12d47d8c790dd4887f
Date: Thu, 07 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778138253
