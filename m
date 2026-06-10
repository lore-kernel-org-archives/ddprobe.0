Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0263B38B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781085934; cv=none; b=a/ige1A9xEbX1+JOAZImCwhJM30kUPcPBaI42CHUAJHeOHurXDZOfjUReZkdep2ynmdnynDV/O5k/ShFcbMrmTV9EQjPdMQlFW/danu7biX0zP/nhPIYw5lIw9w/XvLxB3A0oxgE0w9fYUH8RQh+Zfg5JBU62TAAaO8aUufBsgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781085934; c=relaxed/simple;
	bh=Qjrgf1wziQKfm55ZVTA+q7GDP6YVHSK7B2WzoJX2EOM=;
	h=To:Subject:From:Message-Id:Date; b=O+gOssKTVPxEFU6QyRP/SPBc8OeVJLUeJpFe43hNzOgDUPtGdEvn7QIf9LZ8s74C2TCiWMKrNDGKh5zW3+okmm1Uf8aMT1YPC9smSuXBKiLLFcIx5Zg9jIuNC6PWDP9M3dze0cZv4Ovyite9KGpDipvp0lhkZ+VLTMuYgTIfRBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDb3clov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDb3clov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF466C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781085933;
	bh=Qjrgf1wziQKfm55ZVTA+q7GDP6YVHSK7B2WzoJX2EOM=;
	h=To:Subject:From:Date:From;
	b=KDb3clovoZmu1swPFqcqKyKgGkNqoOSO8g4fGi4MElsxj3nfN0Zp2sd9kIS2EMj0X
	 vGmwYHoyVxV+M2R0ocqXRZOyCZTztuucfjYzKuTsVDHNWZCpjWoKDnWXrd97gqDXhZ
	 aVxtKdRvVJcX09Ib+Kt/5Ux8JcazDUgg8KWEWlI2sUvsZh1WEb+7t34yIt3e5115j0
	 cUuwGiOWIJNqGta+CINFhQolaXCUDNO/zE0qbuGsMkTij7PBzy1mAEw83G3ojM21Ku
	 pwKNHz8Ke0ULqHg2cTnXWc1Ak763qVtTvqZZlrW0PioSwbS6JLgFohEFGsjQEAZ2tX
	 8Ahv3IHYiq4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B04CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108593368.16444.16673295721528553927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69beb9262c93e1f861ce397dfb6dc2f5d75c0c778a1c2adc61d7993982d024d3
Date: Wed, 10 Jun 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781085933
