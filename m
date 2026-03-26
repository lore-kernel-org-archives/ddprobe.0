Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94543BAD9B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774515894; cv=none; b=Y9JZ/+7Ssl8zVe88BEiPA7/wa+rf4BCKn7zwNMICch8u2TR2xS/p0lCb6jFWXnfpn++CoRgOMrlldGT5mpy2KivmtV4n89ZrM1qMdxhcMm4uH/6o9lVgY7psrLiNp5R/xx3jlDrWHcvMVrWkaEqSdzpDN2sbsewjGNivJWwwR44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774515894; c=relaxed/simple;
	bh=/uNwLGeiHpzhm3puVTvmaCW0H5uSJat1dim6/EZWAWA=;
	h=To:Subject:From:Message-Id:Date; b=bHhv61C7O71Fg1dnP1uZKPi7XzUIRL6tp8SENbvxgLwy+wBend6I4RTJDhTubuYs/ECVC+2rSEFnEK75ydIFl65AX8AcxvS9rDdMIvOHy+kEv7SMuxumjUWNoepngTbglzh1PTWjaDw8/iRZTjkUmhvg8iD4zGMr6FhlLiR9xUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7D0nNEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7D0nNEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F1EC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774515893;
	bh=/uNwLGeiHpzhm3puVTvmaCW0H5uSJat1dim6/EZWAWA=;
	h=To:Subject:From:Date:From;
	b=J7D0nNEw8ha17qJk3u0Q/HcmziL+NTp1PnSfwsYCraQ+cITAeWq1ufQiTSnNm+r0Q
	 u22NKQyXpEQd6QBA6IxhfzYQTyrrRVE7OV1BtHgZ4zYWsCz/tE7sZXlHY9dotnNjCJ
	 YvBN2srH34seCtVlJSShqmfS/q+M/EpxvYbVlklcu3JTG6FsKtbGl4HoIGB42Lm+JP
	 phjKLjhO5ptF7KM9XQrsGUZx6TIZVSxwS4aaUtSbopv6di40EkN5bEgWnFzsaIzePw
	 f5XVBP+2YPLnWfShOvtpJfmuSOeaQlJn33XHF1FcCPdD38Qvkau/dBulrdBecwtyLw
	 H2NxqCnMGXwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9C106F309
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451589359.7602.7728970467076225966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2dd84a06eb00b38921cfa6e03fc0533bc7d7856ee40928810786713ae01dc9
Date: Thu, 26 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774515893
