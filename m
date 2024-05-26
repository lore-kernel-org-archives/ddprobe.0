Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E09B171C8
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716743063; cv=none; b=FEF2yV4S/UTZy87sn/DucoHEO+w+ZLVrfZHTpTW0pEMuJF8I8khswohKr3y947UG4cmIx5z4bP5bc1TNDsX2NmL8sK5xMGC4ZOpxt94DKg/Uxh1ijBQd6UX5DOnUoz/aodz4GTZT5xMqw4Up4MdGtH/NC0TwGWyEih6bhBbr/Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716743063; c=relaxed/simple;
	bh=Dh2iVK2IaY/n7xbBS3QwTflYDZwj8GcEE3B/4qWjHWY=;
	h=To:Subject:From:Message-Id:Date; b=dCEgc9z/atMthoT2AvJJtdrXtw9KZJVFzo/bQf1rXfwmWpKHPfpSnw4dPkxHpUejAeS708cgamcugDwnTb/7EsvU+lLG2lDAuKrpII/NnVTMWoeIXC1P2W9hTb1omILOxhGaaow4ujkY++baFndDIilIwMEXg5/ycvQDrArMuv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kr7XlAUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kr7XlAUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29F4C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716743062;
	bh=Dh2iVK2IaY/n7xbBS3QwTflYDZwj8GcEE3B/4qWjHWY=;
	h=To:Subject:From:Date:From;
	b=kr7XlAUEWbSVB1AJe77v7n8id8j+ynHG1wBw2i2jzPBZbobDs8TfXWxHCpBviR783
	 tZaF7ZIf6DVmSbeCmIyn1kDfi+ZbvBEUjeUT/MbgOf50YCg7BdkygPmlxYdWI7VVXB
	 3t+qpOd/eWaRHgcEtE0w+qO1g+j0nOkBI8/S5Ju18EH+bPBWTDebKnOpaQT92SAopi
	 FbZ/SYP3d7D6PQi1i6/g7hZWUZHxwUW7e7/3nPhzSyhT273UwvcZWjfCdTfoBptPWG
	 GBBA9d9r/B4lGU7fsJP0Fe/i7ex/bcCoBNWEzAGHNZ0XLJvIyUT18YHh+VBKeF5pEW
	 E5v1ozZ2039sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8C3C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674306280.27573.11690064022582586716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81460b611598e52776d204327854f4928e27c0d38effaf0e5adaf4073cb5f9a7
Date: Sun, 26 May 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716743062
