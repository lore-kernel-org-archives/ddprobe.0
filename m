Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087931E5B64
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760704794; cv=none; b=pz7Slw7pBiN0Ma0SY+Wh7GaasK15x1AMTEO6MS3ifAy9mf5zOPOUWoaifLOv3iqzBt0ZGdsIkdvncGOH50/+T/CG7L5HFPlJCxhpvY8dyxYO8WhL/ZqEHbfHrVULp44L2tuyfo+/tUaEzLobSbvxpVHCfHoqIB2cV/elLkOIkbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760704794; c=relaxed/simple;
	bh=zXdQSeeDFjYFrFnVlB18LNpoVuDzu5BP2a/5s1CfHNg=;
	h=To:Subject:From:Message-Id:Date; b=Cw0FHG+qRZmerkBhyqrzU2JSJTDLFIyE9DW2AQKaFkhbzsq27bXwzIJ3hO0kEZLBATvuh0lXSBz2gQVsGhm0eZi3RKCyiNG7Vez9U+0g2nJkgaXxGUHH3hWDR69ivWQzsWhW3LDtFW79OjzBx0FfOU1MFyIQi5K7+yyqNIdsirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U25Qa3Zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U25Qa3Zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760704793;
	bh=zXdQSeeDFjYFrFnVlB18LNpoVuDzu5BP2a/5s1CfHNg=;
	h=To:Subject:From:Date:From;
	b=U25Qa3ZrZHhzUpvF5IoDEZIMNVVLSA64sBZLz+xu94rWRaUcPGqsglJoPOwlE9RHo
	 BvjaieRu2eZv/A6BfHsetUebdQbwdn0XNmDb1xxUN5mG+tGfglgToWB2ouYg9SwlUd
	 Vs/O12dLZrCWk1C5Et3e9YetYIu3180u8KgQpIt3YYkNuLajWHc+WKpUkj1EhC4s+n
	 6T1RTi8eIN+pmBQbpGezEidpLa3df/ZoqGKHN4Qysepc0+Sd6p3DM1IIJ35PfropQo
	 X8IXAQR04w2Qp1pkxdHu1ve2VG0r9G7nHVb0FIpPC6DCYJsTH5F85L0JgLbv3JQO25
	 yk0OJL+kURXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC36CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070479358.5854.8841288450295606457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f29ef511de1b43a1340390469ba75e7afd364fefea3c8cecba0e2017990ad17
Date: Fri, 17 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760704793
